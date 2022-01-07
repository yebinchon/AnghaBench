; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_rqe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_rqe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i32, %struct.siw_cq* }
%struct.siw_cq = type { i64, i64, i32, %struct.TYPE_2__, i64, %struct.siw_cqe* }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }
%struct.siw_cqe = type { i32, i64, i64, i32, i32, i32, i64, i32, i32 }
%struct.siw_rqe = type { i32, i32 }

@SIW_WQE_VALID = common dso_local global i32 0, align 4
@SIW_OP_RECEIVE = common dso_local global i32 0, align 4
@SIW_WQE_REM_INVAL = common dso_local global i32 0, align 4
@SIW_WQE_SIGNALLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Call completion handler\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IB_EVENT_CQ_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_rqe_complete(%struct.siw_qp* %0, %struct.siw_rqe* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.siw_qp*, align 8
  %7 = alloca %struct.siw_rqe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.siw_cq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.siw_cqe*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %6, align 8
  store %struct.siw_rqe* %1, %struct.siw_rqe** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %19 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %18, i32 0, i32 1
  %20 = load %struct.siw_cq*, %struct.siw_cq** %19, align 8
  store %struct.siw_cq* %20, %struct.siw_cq** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %22 = icmp ne %struct.siw_cq* %21, null
  br i1 %22, label %23, label %137

23:                                               ; preds = %5
  %24 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %25 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %24, i32 0, i32 2
  %26 = load i64, i64* %15, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %29 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %32 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = urem i64 %30, %33
  store i64 %34, i64* %14, align 8
  %35 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %36 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %35, i32 0, i32 5
  %37 = load %struct.siw_cqe*, %struct.siw_cqe** %36, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %37, i64 %38
  store %struct.siw_cqe* %39, %struct.siw_cqe** %13, align 8
  %40 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %41 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @READ_ONCE(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %126, label %45

45:                                               ; preds = %23
  %46 = load i32, i32* @SIW_WQE_VALID, align 4
  store i32 %46, i32* %17, align 4
  %47 = load %struct.siw_rqe*, %struct.siw_rqe** %7, align 8
  %48 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %51 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @SIW_OP_RECEIVE, align 4
  %53 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %54 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %57 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %59 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %62 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %64 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %45
  %68 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %69 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %72 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load i32, i32* @SIW_WQE_REM_INVAL, align 4
  %77 = load i32, i32* %17, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %17, align 4
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %81 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %75, %67
  br label %88

83:                                               ; preds = %45
  %84 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %85 = call i32 @qp_id(%struct.siw_qp* %84)
  %86 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %87 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %82
  %89 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %90 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @WRITE_ONCE(i32 %91, i32 %92)
  %94 = load %struct.siw_rqe*, %struct.siw_rqe** %7, align 8
  %95 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @smp_store_mb(i32 %96, i32 0)
  %98 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %99 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %103 = load i32, i32* @SIW_WQE_SIGNALLED, align 4
  %104 = call i32 @siw_cq_notify_now(%struct.siw_cq* %102, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %106 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %105, i32 0, i32 2
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %88
  %112 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %113 = call i32 @siw_dbg_cq(%struct.siw_cq* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %114 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %115 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %116, align 8
  %118 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %119 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %118, i32 0, i32 3
  %120 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %121 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %117(%struct.TYPE_2__* %119, i32 %123)
  br label %125

125:                                              ; preds = %111, %88
  br label %136

126:                                              ; preds = %23
  %127 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %128 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %127, i32 0, i32 2
  %129 = load i64, i64* %15, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %12, align 4
  %133 = load %struct.siw_cq*, %struct.siw_cq** %11, align 8
  %134 = load i32, i32* @IB_EVENT_CQ_ERR, align 4
  %135 = call i32 @siw_cq_event(%struct.siw_cq* %133, i32 %134)
  br label %136

136:                                              ; preds = %126, %125
  br label %142

137:                                              ; preds = %5
  %138 = load %struct.siw_rqe*, %struct.siw_rqe** %7, align 8
  %139 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @smp_store_mb(i32 %140, i32 0)
  br label %142

142:                                              ; preds = %137, %136
  %143 = load i32, i32* %12, align 4
  ret i32 %143
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @qp_id(%struct.siw_qp*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

declare dso_local i32 @siw_cq_notify_now(%struct.siw_cq*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @siw_dbg_cq(%struct.siw_cq*, i8*) #1

declare dso_local i32 @siw_cq_event(%struct.siw_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
