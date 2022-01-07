; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_ppgtt_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_ppgtt_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32, i32 }
%struct.i915_ppgtt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*)* @gen8_ppgtt_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_ppgtt_cleanup(%struct.i915_address_space* %0) #0 {
  %2 = alloca %struct.i915_address_space*, align 8
  %3 = alloca %struct.i915_ppgtt*, align 8
  store %struct.i915_address_space* %0, %struct.i915_address_space** %2, align 8
  %4 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %5 = call %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space* %4)
  store %struct.i915_ppgtt* %5, %struct.i915_ppgtt** %3, align 8
  %6 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %7 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @intel_vgpu_active(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %13 = call i32 @gen8_ppgtt_notify_vgt(%struct.i915_ppgtt* %12, i32 0)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %16 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %17 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %20 = call i32 @gen8_pd_top_count(%struct.i915_address_space* %19)
  %21 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %22 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__gen8_ppgtt_cleanup(%struct.i915_address_space* %15, i32 %18, i32 %20, i32 %23)
  %25 = load %struct.i915_address_space*, %struct.i915_address_space** %2, align 8
  %26 = call i32 @free_scratch(%struct.i915_address_space* %25)
  ret void
}

declare dso_local %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space*) #1

declare dso_local i64 @intel_vgpu_active(i32) #1

declare dso_local i32 @gen8_ppgtt_notify_vgt(%struct.i915_ppgtt*, i32) #1

declare dso_local i32 @__gen8_ppgtt_cleanup(%struct.i915_address_space*, i32, i32, i32) #1

declare dso_local i32 @gen8_pd_top_count(%struct.i915_address_space*) #1

declare dso_local i32 @free_scratch(%struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
