; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gt_init_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_gt_init_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_wa_list*)* @gt_init_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gt_init_workarounds(%struct.drm_i915_private* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = call i64 @IS_GEN(%struct.drm_i915_private* %5, i32 12)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %11 = call i32 @tgl_gt_workarounds_init(%struct.drm_i915_private* %9, %struct.i915_wa_list* %10)
  br label %85

12:                                               ; preds = %2
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i64 @IS_GEN(%struct.drm_i915_private* %13, i32 11)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %19 = call i32 @icl_gt_workarounds_init(%struct.drm_i915_private* %17, %struct.i915_wa_list* %18)
  br label %84

20:                                               ; preds = %12
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %27 = call i32 @cnl_gt_workarounds_init(%struct.drm_i915_private* %25, %struct.i915_wa_list* %26)
  br label %83

28:                                               ; preds = %20
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %35 = call i32 @cfl_gt_workarounds_init(%struct.drm_i915_private* %33, %struct.i915_wa_list* %34)
  br label %82

36:                                               ; preds = %28
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %43 = call i32 @glk_gt_workarounds_init(%struct.drm_i915_private* %41, %struct.i915_wa_list* %42)
  br label %81

44:                                               ; preds = %36
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %46 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %51 = call i32 @kbl_gt_workarounds_init(%struct.drm_i915_private* %49, %struct.i915_wa_list* %50)
  br label %80

52:                                               ; preds = %44
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = call i64 @IS_BROXTON(%struct.drm_i915_private* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %59 = call i32 @bxt_gt_workarounds_init(%struct.drm_i915_private* %57, %struct.i915_wa_list* %58)
  br label %79

60:                                               ; preds = %52
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %62 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %66 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %67 = call i32 @skl_gt_workarounds_init(%struct.drm_i915_private* %65, %struct.i915_wa_list* %66)
  br label %78

68:                                               ; preds = %60
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %70 = call i32 @INTEL_GEN(%struct.drm_i915_private* %69)
  %71 = icmp sle i32 %70, 8
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %85

73:                                               ; preds = %68
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = call i32 @INTEL_GEN(%struct.drm_i915_private* %74)
  %76 = call i32 @MISSING_CASE(i32 %75)
  br label %77

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %80, %40
  br label %82

82:                                               ; preds = %81, %32
  br label %83

83:                                               ; preds = %82, %24
  br label %84

84:                                               ; preds = %83, %16
  br label %85

85:                                               ; preds = %72, %84, %8
  ret void
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @tgl_gt_workarounds_init(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i32 @icl_gt_workarounds_init(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_gt_workarounds_init(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cfl_gt_workarounds_init(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @glk_gt_workarounds_init(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @kbl_gt_workarounds_init(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_gt_workarounds_init(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_gt_workarounds_init(%struct.drm_i915_private*, %struct.i915_wa_list*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
