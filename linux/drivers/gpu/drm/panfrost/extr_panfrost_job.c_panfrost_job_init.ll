; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_job.c_panfrost_job_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32, %struct.panfrost_job_slot* }
%struct.panfrost_job_slot = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"job\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@panfrost_job_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request job irq\00", align 1
@NUM_JOB_SLOTS = common dso_local global i32 0, align 4
@panfrost_sched_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"pan_js\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to create scheduler: %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_job_init(%struct.panfrost_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca %struct.panfrost_job_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  %8 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %9 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.panfrost_job_slot* @devm_kzalloc(i32 %10, i32 16, i32 %11)
  store %struct.panfrost_job_slot* %12, %struct.panfrost_job_slot** %4, align 8
  %13 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %14 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %13, i32 0, i32 1
  store %struct.panfrost_job_slot* %12, %struct.panfrost_job_slot** %14, align 8
  %15 = load %struct.panfrost_job_slot*, %struct.panfrost_job_slot** %4, align 8
  %16 = icmp ne %struct.panfrost_job_slot* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %109

20:                                               ; preds = %1
  %21 = load %struct.panfrost_job_slot*, %struct.panfrost_job_slot** %4, align 8
  %22 = getelementptr inbounds %struct.panfrost_job_slot, %struct.panfrost_job_slot* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %25 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @to_platform_device(i32 %26)
  %28 = call i32 @platform_get_irq_byname(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %109

34:                                               ; preds = %20
  %35 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %36 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @panfrost_job_irq_handler, align 4
  %40 = load i32, i32* @IRQF_SHARED, align 4
  %41 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %42 = call i32 @devm_request_irq(i32 %37, i32 %38, i32 %39, i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.panfrost_device* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %47 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %109

51:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @NUM_JOB_SLOTS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %52
  %57 = call i32 @dma_fence_context_alloc(i32 1)
  %58 = load %struct.panfrost_job_slot*, %struct.panfrost_job_slot** %4, align 8
  %59 = getelementptr inbounds %struct.panfrost_job_slot, %struct.panfrost_job_slot* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %57, i32* %64, align 4
  %65 = load %struct.panfrost_job_slot*, %struct.panfrost_job_slot** %4, align 8
  %66 = getelementptr inbounds %struct.panfrost_job_slot, %struct.panfrost_job_slot* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @msecs_to_jiffies(i32 500)
  %73 = call i32 @drm_sched_init(i32* %71, i32* @panfrost_sched_ops, i32 1, i32 0, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %56
  %77 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %78 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %89

82:                                               ; preds = %56
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %52

86:                                               ; preds = %52
  %87 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %88 = call i32 @panfrost_job_enable_interrupts(%struct.panfrost_device* %87)
  store i32 0, i32* %2, align 4
  br label %109

89:                                               ; preds = %76
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %104, %89
  %93 = load i32, i32* %6, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.panfrost_job_slot*, %struct.panfrost_job_slot** %4, align 8
  %97 = getelementptr inbounds %struct.panfrost_job_slot, %struct.panfrost_job_slot* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @drm_sched_fini(i32* %102)
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %6, align 4
  br label %92

107:                                              ; preds = %92
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %86, %45, %31, %17
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.panfrost_job_slot* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_get_irq_byname(i32, i8*) #1

declare dso_local i32 @to_platform_device(i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.panfrost_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @drm_sched_init(i32*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @panfrost_job_enable_interrupts(%struct.panfrost_device*) #1

declare dso_local i32 @drm_sched_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
