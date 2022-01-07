; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { %struct.TYPE_6__*, i32, %struct.panfrost_job** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.panfrost_job = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@JOB_INT_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"jobslot irq status=%x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@JOB_INT_CLEAR = common dso_local global i32 0, align 4
@JS_COMMAND_NOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"js fault, js=%d, status=%s, head=0x%x, tail=0x%x\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @panfrost_job_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_job_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.panfrost_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.panfrost_job*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.panfrost_device*
  store %struct.panfrost_device* %12, %struct.panfrost_device** %6, align 8
  %13 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %14 = load i32, i32* @JOB_INT_STAT, align 4
  %15 = call i32 @job_read(%struct.panfrost_device* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %17 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %147

25:                                               ; preds = %2
  %26 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %27 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pm_runtime_mark_last_busy(i32 %28)
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %142, %25
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %145

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @MK_JS_MASK(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %142

41:                                               ; preds = %33
  %42 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %43 = load i32, i32* @JOB_INT_CLEAR, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @job_write(%struct.panfrost_device* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @JOB_INT_MASK_ERR(i32 %47)
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %41
  %52 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @JS_COMMAND_NEXT(i32 %53)
  %55 = load i32, i32* @JS_COMMAND_NOP, align 4
  %56 = call i32 @job_write(%struct.panfrost_device* %52, i32 %54, i32 %55)
  %57 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %58 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %62 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @JS_STATUS(i32 %63)
  %65 = call i32 @job_read(%struct.panfrost_device* %62, i32 %64)
  %66 = call i32 @panfrost_exception_name(%struct.panfrost_device* %61, i32 %65)
  %67 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @JS_HEAD_LO(i32 %68)
  %70 = call i32 @job_read(%struct.panfrost_device* %67, i32 %69)
  %71 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @JS_TAIL_LO(i32 %72)
  %74 = call i32 @job_read(%struct.panfrost_device* %71, i32 %73)
  %75 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %66, i32 %70, i32 %74)
  %76 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %77 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @drm_sched_fault(i32* %84)
  br label %86

86:                                               ; preds = %51, %41
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @JOB_INT_MASK_DONE(i32 %88)
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %137

92:                                               ; preds = %86
  %93 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %94 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %99 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %98, i32 0, i32 2
  %100 = load %struct.panfrost_job**, %struct.panfrost_job*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.panfrost_job*, %struct.panfrost_job** %100, i64 %102
  %104 = load %struct.panfrost_job*, %struct.panfrost_job** %103, align 8
  store %struct.panfrost_job* %104, %struct.panfrost_job** %10, align 8
  %105 = load %struct.panfrost_job*, %struct.panfrost_job** %10, align 8
  %106 = icmp ne %struct.panfrost_job* %105, null
  br i1 %106, label %107, label %131

107:                                              ; preds = %92
  %108 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %109 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %108, i32 0, i32 2
  %110 = load %struct.panfrost_job**, %struct.panfrost_job*** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.panfrost_job*, %struct.panfrost_job** %110, i64 %112
  store %struct.panfrost_job* null, %struct.panfrost_job** %113, align 8
  %114 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %115 = load %struct.panfrost_job*, %struct.panfrost_job** %10, align 8
  %116 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i32 @panfrost_mmu_as_put(%struct.panfrost_device* %114, i32* %118)
  %120 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @panfrost_devfreq_record_transition(%struct.panfrost_device* %120, i32 %121)
  %123 = load %struct.panfrost_job*, %struct.panfrost_job** %10, align 8
  %124 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dma_fence_signal_locked(i32 %125)
  %127 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %128 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @pm_runtime_put_autosuspend(i32 %129)
  br label %131

131:                                              ; preds = %107, %92
  %132 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %133 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock(i32* %135)
  br label %137

137:                                              ; preds = %131, %86
  %138 = load i32, i32* %9, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %7, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %137, %40
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %30

145:                                              ; preds = %30
  %146 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %23
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @job_read(%struct.panfrost_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @MK_JS_MASK(i32) #1

declare dso_local i32 @job_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @JOB_INT_MASK_ERR(i32) #1

declare dso_local i32 @JS_COMMAND_NEXT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @panfrost_exception_name(%struct.panfrost_device*, i32) #1

declare dso_local i32 @JS_STATUS(i32) #1

declare dso_local i32 @JS_HEAD_LO(i32) #1

declare dso_local i32 @JS_TAIL_LO(i32) #1

declare dso_local i32 @drm_sched_fault(i32*) #1

declare dso_local i32 @JOB_INT_MASK_DONE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @panfrost_mmu_as_put(%struct.panfrost_device*, i32*) #1

declare dso_local i32 @panfrost_devfreq_record_transition(%struct.panfrost_device*, i32) #1

declare dso_local i32 @dma_fence_signal_locked(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
