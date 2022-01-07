; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_timedout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_job = type { i32 }
%struct.panfrost_job = type { i32, %struct.panfrost_device* }
%struct.panfrost_device = type { i32, %struct.TYPE_4__*, i32**, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.drm_gpu_scheduler }
%struct.drm_gpu_scheduler = type { i32 }

@.str = private unnamed_addr constant [87 x i8] c"gpu sched timeout, js=%d, config=0x%x, status=0x%x, head=0x%x, tail=0x%x, sched_job=%p\00", align 1
@NUM_JOB_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_job*)* @panfrost_job_timedout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panfrost_job_timedout(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.drm_sched_job*, align 8
  %3 = alloca %struct.panfrost_job*, align 8
  %4 = alloca %struct.panfrost_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_gpu_scheduler*, align 8
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %2, align 8
  %9 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %10 = call %struct.panfrost_job* @to_panfrost_job(%struct.drm_sched_job* %9)
  store %struct.panfrost_job* %10, %struct.panfrost_job** %3, align 8
  %11 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %12 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %11, i32 0, i32 1
  %13 = load %struct.panfrost_device*, %struct.panfrost_device** %12, align 8
  store %struct.panfrost_device* %13, %struct.panfrost_device** %4, align 8
  %14 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %15 = call i32 @panfrost_job_get_slot(%struct.panfrost_job* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.panfrost_job*, %struct.panfrost_job** %3, align 8
  %17 = getelementptr inbounds %struct.panfrost_job, %struct.panfrost_job* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @dma_fence_is_signaled(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %169

22:                                               ; preds = %1
  %23 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %24 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @JS_CONFIG(i32 %28)
  %30 = call i32 @job_read(%struct.panfrost_device* %27, i32 %29)
  %31 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @JS_STATUS(i32 %32)
  %34 = call i32 @job_read(%struct.panfrost_device* %31, i32 %33)
  %35 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @JS_HEAD_LO(i32 %36)
  %38 = call i32 @job_read(%struct.panfrost_device* %35, i32 %37)
  %39 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @JS_TAIL_LO(i32 %40)
  %42 = call i32 @job_read(%struct.panfrost_device* %39, i32 %41)
  %43 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %44 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %34, i32 %38, i32 %42, %struct.drm_sched_job* %43)
  %45 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %46 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %45, i32 0, i32 0
  %47 = call i32 @mutex_trylock(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %22
  br label %169

50:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %57 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store %struct.drm_gpu_scheduler* %64, %struct.drm_gpu_scheduler** %8, align 8
  %65 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %66 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %67 = call i32 @drm_sched_stop(%struct.drm_gpu_scheduler* %65, %struct.drm_sched_job* %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %55
  %72 = load %struct.drm_gpu_scheduler*, %struct.drm_gpu_scheduler** %8, align 8
  %73 = getelementptr inbounds %struct.drm_gpu_scheduler, %struct.drm_gpu_scheduler* %72, i32 0, i32 0
  %74 = call i32 @cancel_delayed_work_sync(i32* %73)
  br label %75

75:                                               ; preds = %71, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %51

79:                                               ; preds = %51
  %80 = load %struct.drm_sched_job*, %struct.drm_sched_job** %2, align 8
  %81 = call i32 @drm_sched_increase_karma(%struct.drm_sched_job* %80)
  %82 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %83 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %113, %79
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %88
  %93 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %94 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %93, i32 0, i32 2
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %92
  %102 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %103 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @pm_runtime_put_noidle(i32 %104)
  %106 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %107 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %106, i32 0, i32 2
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %101, %92
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %88

116:                                              ; preds = %88
  %117 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %118 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @panfrost_devfreq_record_transition(%struct.panfrost_device* %123, i32 %124)
  %126 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %127 = call i32 @panfrost_device_reset(%struct.panfrost_device* %126)
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %143, %116
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %134 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = call i32 @drm_sched_resubmit_jobs(%struct.drm_gpu_scheduler* %141)
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %128

146:                                              ; preds = %128
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %162, %146
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %153 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = call i32 @drm_sched_start(%struct.drm_gpu_scheduler* %160, i32 1)
  br label %162

162:                                              ; preds = %151
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %147

165:                                              ; preds = %147
  %166 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %167 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %166, i32 0, i32 0
  %168 = call i32 @mutex_unlock(i32* %167)
  br label %169

169:                                              ; preds = %165, %49, %21
  ret void
}

declare dso_local %struct.panfrost_job* @to_panfrost_job(%struct.drm_sched_job*) #1

declare dso_local i32 @panfrost_job_get_slot(%struct.panfrost_job*) #1

declare dso_local i64 @dma_fence_is_signaled(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32, i32, %struct.drm_sched_job*) #1

declare dso_local i32 @job_read(%struct.panfrost_device*, i32) #1

declare dso_local i32 @JS_CONFIG(i32) #1

declare dso_local i32 @JS_STATUS(i32) #1

declare dso_local i32 @JS_HEAD_LO(i32) #1

declare dso_local i32 @JS_TAIL_LO(i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @drm_sched_stop(%struct.drm_gpu_scheduler*, %struct.drm_sched_job*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @drm_sched_increase_karma(%struct.drm_sched_job*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @panfrost_devfreq_record_transition(%struct.panfrost_device*, i32) #1

declare dso_local i32 @panfrost_device_reset(%struct.panfrost_device*) #1

declare dso_local i32 @drm_sched_resubmit_jobs(%struct.drm_gpu_scheduler*) #1

declare dso_local i32 @drm_sched_start(%struct.drm_gpu_scheduler*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
