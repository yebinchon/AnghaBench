; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_setup_mchbar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_intel_setup_mchbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32 }

@MCHBAR_I965 = common dso_local global i32 0, align 4
@MCHBAR_I915 = common dso_local global i32 0, align 4
@DEVEN = common dso_local global i32 0, align 4
@DEVEN_MCHBAR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_setup_mchbar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_setup_mchbar(%struct.drm_i915_private* %0) #0 {
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
  %16 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %13
  br label %95

23:                                               ; preds = %18
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i64 @IS_I915G(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = call i64 @IS_I915GM(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29, %23
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DEVEN, align 4
  %38 = call i32 @pci_read_config_dword(i32 %36, i32 %37, i32* %4)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @DEVEN_MCHBAR_EN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @pci_read_config_dword(i32 %49, i32 %50, i32* %4)
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %33
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %95

58:                                               ; preds = %54
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %60 = call i64 @intel_alloc_mchbar_resource(%struct.drm_i915_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %95

63:                                               ; preds = %58
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %67 = call i64 @IS_I915G(%struct.drm_i915_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %71 = call i64 @IS_I915GM(%struct.drm_i915_private* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69, %63
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DEVEN, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @DEVEN_MCHBAR_EN, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @pci_write_config_dword(i32 %76, i32 %77, i32 %80)
  br label %95

82:                                               ; preds = %69
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %84 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @pci_read_config_dword(i32 %85, i32 %86, i32* %4)
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %89 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, 1
  %94 = call i32 @pci_write_config_dword(i32 %90, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %22, %57, %62, %82, %73
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I915G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I915GM(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i64 @intel_alloc_mchbar_resource(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
