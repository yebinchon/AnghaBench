; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_init_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_init_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }

@intel_guc_send_nop = common dso_local global i32 0, align 4
@intel_guc_to_host_event_handler_nop = common dso_local global i32 0, align 4
@gen11_guc_raise_irq = common dso_local global i32 0, align 4
@gen11_reset_guc_interrupts = common dso_local global i32 0, align 4
@gen11_enable_guc_interrupts = common dso_local global i32 0, align 4
@gen11_disable_guc_interrupts = common dso_local global i32 0, align 4
@gen8_guc_raise_irq = common dso_local global i32 0, align 4
@gen9_reset_guc_interrupts = common dso_local global i32 0, align 4
@gen9_enable_guc_interrupts = common dso_local global i32 0, align 4
@gen9_disable_guc_interrupts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_guc_init_early(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %4 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %5 = call %struct.TYPE_4__* @guc_to_gt(%struct.intel_guc* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %9 = call i32 @intel_guc_fw_init_early(%struct.intel_guc* %8)
  %10 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %11 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %10, i32 0, i32 7
  %12 = call i32 @intel_guc_ct_init_early(i32* %11)
  %13 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %14 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %13, i32 0, i32 6
  %15 = call i32 @intel_guc_log_init_early(i32* %14)
  %16 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %17 = call i32 @intel_guc_submission_init_early(%struct.intel_guc* %16)
  %18 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %19 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %18, i32 0, i32 5
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %22 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load i32, i32* @intel_guc_send_nop, align 4
  %25 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %26 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @intel_guc_to_host_event_handler_nop, align 4
  %28 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %29 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = call i32 @INTEL_GEN(%struct.drm_i915_private* %30)
  %32 = icmp sge i32 %31, 11
  br i1 %32, label %33, label %49

33:                                               ; preds = %1
  %34 = load i32, i32* @gen11_guc_raise_irq, align 4
  %35 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %36 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @gen11_reset_guc_interrupts, align 4
  %38 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %39 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @gen11_enable_guc_interrupts, align 4
  %42 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %43 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @gen11_disable_guc_interrupts, align 4
  %46 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %47 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %65

49:                                               ; preds = %1
  %50 = load i32, i32* @gen8_guc_raise_irq, align 4
  %51 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %52 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @gen9_reset_guc_interrupts, align 4
  %54 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %55 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @gen9_enable_guc_interrupts, align 4
  %58 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %59 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @gen9_disable_guc_interrupts, align 4
  %62 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %63 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %49, %33
  ret void
}

declare dso_local %struct.TYPE_4__* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_fw_init_early(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_ct_init_early(i32*) #1

declare dso_local i32 @intel_guc_log_init_early(i32*) #1

declare dso_local i32 @intel_guc_submission_init_early(%struct.intel_guc*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
