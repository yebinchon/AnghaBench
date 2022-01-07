; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_sq_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_sq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i64, i64, %struct.TYPE_2__, %struct.siw_sqe*, %struct.siw_sqe* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.siw_sqe = type { i32 }
%struct.siw_wqe = type { i64, i32, %struct.siw_sqe }

@SIW_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@SIW_WR_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"flush current SQE, type %d, status %d\0A\00", align 1
@SIW_OP_READ_RESPONSE = common dso_local global i64 0, align 8
@SIW_OP_READ = common dso_local global i64 0, align 8
@SIW_OP_READ_LOCAL_INV = common dso_local global i64 0, align 8
@SIW_WR_QUEUED = common dso_local global i64 0, align 8
@IB_EVENT_SQ_DRAINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_sq_flush(%struct.siw_qp* %0) #0 {
  %2 = alloca %struct.siw_qp*, align 8
  %3 = alloca %struct.siw_sqe*, align 8
  %4 = alloca %struct.siw_wqe*, align 8
  %5 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %2, align 8
  %6 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %7 = call %struct.siw_wqe* @tx_wqe(%struct.siw_qp* %6)
  store %struct.siw_wqe* %7, %struct.siw_wqe** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %10 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %8
  %15 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %16 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %15, i32 0, i32 4
  %17 = load %struct.siw_sqe*, %struct.siw_sqe** %16, align 8
  %18 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %19 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %22 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = urem i64 %20, %25
  %27 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %17, i64 %26
  store %struct.siw_sqe* %27, %struct.siw_sqe** %3, align 8
  %28 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %29 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @READ_ONCE(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %14
  br label %50

34:                                               ; preds = %14
  %35 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %36 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %37 = load i32, i32* @SIW_WC_WR_FLUSH_ERR, align 4
  %38 = call i64 @siw_sqe_complete(%struct.siw_qp* %35, %struct.siw_sqe* %36, i32 0, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %50

41:                                               ; preds = %34
  %42 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %43 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @WRITE_ONCE(i32 %44, i32 0)
  %46 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %47 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %8

50:                                               ; preds = %40, %33, %8
  %51 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %52 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SIW_WR_IDLE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %50
  %57 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %58 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %59 = call i64 @tx_type(%struct.siw_wqe* %58)
  %60 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %61 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @siw_dbg_qp(%struct.siw_qp* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %62)
  %64 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %65 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %66 = call i64 @tx_type(%struct.siw_wqe* %65)
  %67 = call i32 @siw_wqe_put_mem(%struct.siw_wqe* %64, i64 %66)
  %68 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %69 = call i64 @tx_type(%struct.siw_wqe* %68)
  %70 = load i64, i64* @SIW_OP_READ_RESPONSE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %56
  %73 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %74 = call i64 @tx_type(%struct.siw_wqe* %73)
  %75 = load i64, i64* @SIW_OP_READ, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %79 = call i64 @tx_type(%struct.siw_wqe* %78)
  %80 = load i64, i64* @SIW_OP_READ_LOCAL_INV, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %84 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SIW_WR_QUEUED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %82, %77
  %89 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %90 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %91 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %90, i32 0, i32 2
  %92 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %93 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SIW_WC_WR_FLUSH_ERR, align 4
  %96 = call i64 @siw_sqe_complete(%struct.siw_qp* %89, %struct.siw_sqe* %91, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %88, %82, %56
  %98 = load i64, i64* @SIW_WR_IDLE, align 8
  %99 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %100 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %50
  br label %102

102:                                              ; preds = %135, %101
  %103 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %104 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %102
  %109 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %110 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %109, i32 0, i32 3
  %111 = load %struct.siw_sqe*, %struct.siw_sqe** %110, align 8
  %112 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %113 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %116 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = urem i64 %114, %119
  %121 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %111, i64 %120
  store %struct.siw_sqe* %121, %struct.siw_sqe** %3, align 8
  %122 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %123 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @READ_ONCE(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %108
  br label %144

128:                                              ; preds = %108
  store i32 1, i32* %5, align 4
  %129 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %130 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %131 = load i32, i32* @SIW_WC_WR_FLUSH_ERR, align 4
  %132 = call i64 @siw_sqe_complete(%struct.siw_qp* %129, %struct.siw_sqe* %130, i32 0, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %144

135:                                              ; preds = %128
  %136 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %137 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @WRITE_ONCE(i32 %138, i32 0)
  %140 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %141 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %141, align 8
  br label %102

144:                                              ; preds = %134, %127, %102
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %149 = load i32, i32* @IB_EVENT_SQ_DRAINED, align 4
  %150 = call i32 @siw_qp_event(%struct.siw_qp* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %144
  ret void
}

declare dso_local %struct.siw_wqe* @tx_wqe(%struct.siw_qp*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @siw_sqe_complete(%struct.siw_qp*, %struct.siw_sqe*, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i64, i64) #1

declare dso_local i64 @tx_type(%struct.siw_wqe*) #1

declare dso_local i32 @siw_wqe_put_mem(%struct.siw_wqe*, i64) #1

declare dso_local i32 @siw_qp_event(%struct.siw_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
