; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_guc_enable_communication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_guc_enable_communication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { {}*, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }

@ENXIO = common dso_local global i32 0, align 4
@intel_guc_send_ct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"GuC communication enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc*)* @guc_enable_communication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guc_enable_communication(%struct.intel_guc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  %6 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %7 = call %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %4, align 8
  %10 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %11 = call i32 @guc_communication_enabled(%struct.intel_guc* %10)
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @i915_inject_load_error(%struct.drm_i915_private* %13, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %23 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %22, i32 0, i32 2
  %24 = call i32 @intel_guc_ct_enable(i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %21
  %30 = load i32, i32* @intel_guc_send_ct, align 4
  %31 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %32 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %34 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.intel_guc*)**
  store i32 (%struct.intel_guc*)* @intel_guc_to_host_event_handler_ct, i32 (%struct.intel_guc*)** %35, align 8
  %36 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %37 = call i32 @guc_get_mmio_msg(%struct.intel_guc* %36)
  %38 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %39 = call i32 @guc_handle_mmio_msg(%struct.intel_guc* %38)
  %40 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %41 = call i32 @guc_enable_interrupts(%struct.intel_guc* %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %46 = call i32 @intel_guc_to_host_event_handler_ct(%struct.intel_guc* %45)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %29, %27, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @guc_communication_enabled(%struct.intel_guc*) #1

declare dso_local i32 @i915_inject_load_error(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_guc_ct_enable(i32*) #1

declare dso_local i32 @intel_guc_to_host_event_handler_ct(%struct.intel_guc*) #1

declare dso_local i32 @guc_get_mmio_msg(%struct.intel_guc*) #1

declare dso_local i32 @guc_handle_mmio_msg(%struct.intel_guc*) #1

declare dso_local i32 @guc_enable_interrupts(%struct.intel_guc*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
