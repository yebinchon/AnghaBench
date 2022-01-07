; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_sqe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_sqe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i32, %struct.siw_cq* }
%struct.siw_cq = type { i64, i64, i32, %struct.TYPE_2__, i64, %struct.siw_cqe* }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }
%struct.siw_cqe = type { i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.siw_sqe = type { i64, i32, i32 }

@SIW_WQE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Call completion handler\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IB_EVENT_CQ_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_sqe_complete(%struct.siw_qp* %0, %struct.siw_sqe* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.siw_qp*, align 8
  %6 = alloca %struct.siw_sqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.siw_cq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.siw_cqe*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %5, align 8
  store %struct.siw_sqe* %1, %struct.siw_sqe** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %17 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %16, i32 0, i32 1
  %18 = load %struct.siw_cq*, %struct.siw_cq** %17, align 8
  store %struct.siw_cq* %18, %struct.siw_cq** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %20 = icmp ne %struct.siw_cq* %19, null
  br i1 %20, label %21, label %129

21:                                               ; preds = %4
  %22 = load %struct.siw_sqe*, %struct.siw_sqe** %6, align 8
  %23 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %26 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %25, i32 0, i32 2
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %30 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %33 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = urem i64 %31, %34
  store i64 %35, i64* %13, align 8
  %36 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %37 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %36, i32 0, i32 5
  %38 = load %struct.siw_cqe*, %struct.siw_cqe** %37, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %38, i64 %39
  store %struct.siw_cqe* %40, %struct.siw_cqe** %12, align 8
  %41 = load %struct.siw_cqe*, %struct.siw_cqe** %12, align 8
  %42 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @READ_ONCE(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %118, label %46

46:                                               ; preds = %21
  %47 = load %struct.siw_sqe*, %struct.siw_sqe** %6, align 8
  %48 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.siw_cqe*, %struct.siw_cqe** %12, align 8
  %51 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.siw_sqe*, %struct.siw_sqe** %6, align 8
  %53 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.siw_cqe*, %struct.siw_cqe** %12, align 8
  %56 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.siw_cqe*, %struct.siw_cqe** %12, align 8
  %59 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.siw_cqe*, %struct.siw_cqe** %12, align 8
  %61 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.siw_cqe*, %struct.siw_cqe** %12, align 8
  %64 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %66 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %46
  %70 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %71 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.siw_cqe*, %struct.siw_cqe** %12, align 8
  %74 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  br label %80

75:                                               ; preds = %46
  %76 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %77 = call i32 @qp_id(%struct.siw_qp* %76)
  %78 = load %struct.siw_cqe*, %struct.siw_cqe** %12, align 8
  %79 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %69
  %81 = load %struct.siw_cqe*, %struct.siw_cqe** %12, align 8
  %82 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SIW_WQE_VALID, align 4
  %85 = call i32 @WRITE_ONCE(i32 %83, i32 %84)
  %86 = load %struct.siw_sqe*, %struct.siw_sqe** %6, align 8
  %87 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @smp_store_mb(i64 %88, i32 0)
  %90 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %91 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @siw_cq_notify_now(%struct.siw_cq* %94, i64 %95)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %98 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %97, i32 0, i32 2
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %80
  %104 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %105 = call i32 @siw_dbg_cq(%struct.siw_cq* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %107 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %108, align 8
  %110 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %111 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %110, i32 0, i32 3
  %112 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %113 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %109(%struct.TYPE_2__* %111, i32 %115)
  br label %117

117:                                              ; preds = %103, %80
  br label %128

118:                                              ; preds = %21
  %119 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %120 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %119, i32 0, i32 2
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %10, align 4
  %125 = load %struct.siw_cq*, %struct.siw_cq** %9, align 8
  %126 = load i32, i32* @IB_EVENT_CQ_ERR, align 4
  %127 = call i32 @siw_cq_event(%struct.siw_cq* %125, i32 %126)
  br label %128

128:                                              ; preds = %118, %117
  br label %134

129:                                              ; preds = %4
  %130 = load %struct.siw_sqe*, %struct.siw_sqe** %6, align 8
  %131 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @smp_store_mb(i64 %132, i32 0)
  br label %134

134:                                              ; preds = %129, %128
  %135 = load i32, i32* %10, align 4
  ret i32 %135
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @qp_id(%struct.siw_qp*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @smp_store_mb(i64, i32) #1

declare dso_local i32 @siw_cq_notify_now(%struct.siw_cq*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @siw_dbg_cq(%struct.siw_cq*, i8*) #1

declare dso_local i32 @siw_cq_event(%struct.siw_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
