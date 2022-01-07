; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_rq_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_rq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i64, %struct.TYPE_6__, %struct.siw_rqe*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.siw_rqe = type { i32 }
%struct.TYPE_5__ = type { %struct.siw_wqe }
%struct.siw_wqe = type { i64, i32, i32, %struct.siw_rqe }
%struct.TYPE_4__ = type { %struct.siw_wqe }

@SIW_WR_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"flush current rqe, type %d, status %d\0A\00", align 1
@SIW_OP_RECEIVE = common dso_local global i64 0, align 8
@SIW_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@SIW_OP_READ = common dso_local global i64 0, align 8
@SIW_OP_READ_RESPONSE = common dso_local global i64 0, align 8
@SIW_OP_WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_rq_flush(%struct.siw_qp* %0) #0 {
  %2 = alloca %struct.siw_qp*, align 8
  %3 = alloca %struct.siw_wqe*, align 8
  %4 = alloca %struct.siw_rqe*, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %2, align 8
  %5 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %6 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.siw_wqe* %7, %struct.siw_wqe** %3, align 8
  %8 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %9 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SIW_WR_IDLE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %1
  %14 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %15 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %16 = call i64 @rx_type(%struct.siw_wqe* %15)
  %17 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %18 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @siw_dbg_qp(%struct.siw_qp* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %19)
  %21 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %22 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %23 = call i64 @rx_type(%struct.siw_wqe* %22)
  %24 = call i32 @siw_wqe_put_mem(%struct.siw_wqe* %21, i64 %23)
  %25 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %26 = call i64 @rx_type(%struct.siw_wqe* %25)
  %27 = load i64, i64* @SIW_OP_RECEIVE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %13
  %30 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %31 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %32 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %31, i32 0, i32 3
  %33 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %34 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SIW_WC_WR_FLUSH_ERR, align 4
  %37 = call i64 @siw_rqe_complete(%struct.siw_qp* %30, %struct.siw_rqe* %32, i32 %35, i32 0, i32 %36)
  br label %60

38:                                               ; preds = %13
  %39 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %40 = call i64 @rx_type(%struct.siw_wqe* %39)
  %41 = load i64, i64* @SIW_OP_READ, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %45 = call i64 @rx_type(%struct.siw_wqe* %44)
  %46 = load i64, i64* @SIW_OP_READ_RESPONSE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %50 = call i64 @rx_type(%struct.siw_wqe* %49)
  %51 = load i64, i64* @SIW_OP_WRITE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %55 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %56 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %55, i32 0, i32 1
  %57 = load i32, i32* @SIW_WC_WR_FLUSH_ERR, align 4
  %58 = call i32 @siw_sqe_complete(%struct.siw_qp* %54, i32* %56, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %53, %48, %43, %38
  br label %60

60:                                               ; preds = %59, %29
  %61 = load i64, i64* @SIW_WR_IDLE, align 8
  %62 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %63 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %1
  %65 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %66 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store %struct.siw_wqe* %67, %struct.siw_wqe** %3, align 8
  %68 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %69 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SIW_WR_IDLE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %75 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %76 = call i64 @rx_type(%struct.siw_wqe* %75)
  %77 = call i32 @siw_wqe_put_mem(%struct.siw_wqe* %74, i64 %76)
  %78 = load i64, i64* @SIW_WR_IDLE, align 8
  %79 = load %struct.siw_wqe*, %struct.siw_wqe** %3, align 8
  %80 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %73, %64
  br label %82

82:                                               ; preds = %115, %81
  %83 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %84 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %82
  %89 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %90 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %89, i32 0, i32 2
  %91 = load %struct.siw_rqe*, %struct.siw_rqe** %90, align 8
  %92 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %93 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %96 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = urem i64 %94, %99
  %101 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %91, i64 %100
  store %struct.siw_rqe* %101, %struct.siw_rqe** %4, align 8
  %102 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %103 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @READ_ONCE(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %88
  br label %124

108:                                              ; preds = %88
  %109 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %110 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %111 = load i32, i32* @SIW_WC_WR_FLUSH_ERR, align 4
  %112 = call i64 @siw_rqe_complete(%struct.siw_qp* %109, %struct.siw_rqe* %110, i32 0, i32 0, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %124

115:                                              ; preds = %108
  %116 = load %struct.siw_rqe*, %struct.siw_rqe** %4, align 8
  %117 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @WRITE_ONCE(i32 %118, i32 0)
  %120 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %121 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %121, align 8
  br label %82

124:                                              ; preds = %114, %107, %82
  ret void
}

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i64, i64) #1

declare dso_local i64 @rx_type(%struct.siw_wqe*) #1

declare dso_local i32 @siw_wqe_put_mem(%struct.siw_wqe*, i64) #1

declare dso_local i64 @siw_rqe_complete(%struct.siw_qp*, %struct.siw_rqe*, i32, i32, i32) #1

declare dso_local i32 @siw_sqe_complete(%struct.siw_qp*, i32*, i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
