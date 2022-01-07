; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_teardown_mchbar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_teardown_mchbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@MCHBAR_I965 = common dso_local global i32 0, align 4
@MCHBAR_I915 = common dso_local global i32 0, align 4
@DEVEN = common dso_local global i32 0, align 4
@DEVEN_MCHBAR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_teardown_mchbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_teardown_mchbar(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = call i32 @INTEL_GEN(%struct.drm_i915_private* %6)
  %8 = icmp sge i32 %7, 4
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @MCHBAR_I965, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @MCHBAR_I915, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %3, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %13
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i64 @IS_I915G(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = call i64 @IS_I915GM(%struct.drm_i915_private* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23, %19
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DEVEN, align 4
  %32 = call i32 @pci_read_config_dword(i32 %30, i32 %31, i32* %4)
  %33 = load i32, i32* @DEVEN_MCHBAR_EN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DEVEN, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @pci_write_config_dword(i32 %39, i32 %40, i32 %41)
  br label %57

43:                                               ; preds = %23
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @pci_read_config_dword(i32 %46, i32 %47, i32* %5)
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, -2
  store i32 %50, i32* %5, align 4
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @pci_write_config_dword(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %43, %27
  br label %58

58:                                               ; preds = %57, %13
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %60 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = call i32 @release_resource(%struct.TYPE_2__* %66)
  br label %68

68:                                               ; preds = %64, %58
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I915G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I915GM(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @release_resource(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
