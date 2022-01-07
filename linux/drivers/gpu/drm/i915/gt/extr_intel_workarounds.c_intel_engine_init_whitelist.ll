; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_intel_engine_init_whitelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_intel_engine_init_whitelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.i915_wa_list, %struct.drm_i915_private* }
%struct.i915_wa_list = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"whitelist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_init_whitelist(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 2
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 1
  store %struct.i915_wa_list* %9, %struct.i915_wa_list** %4, align 8
  %10 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @wa_init_start(%struct.i915_wa_list* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = call i64 @IS_GEN(%struct.drm_i915_private* %15, i32 12)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %20 = call i32 @tgl_whitelist_build(%struct.intel_engine_cs* %19)
  br label %87

21:                                               ; preds = %1
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = call i64 @IS_GEN(%struct.drm_i915_private* %22, i32 11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %27 = call i32 @icl_whitelist_build(%struct.intel_engine_cs* %26)
  br label %86

28:                                               ; preds = %21
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %34 = call i32 @cnl_whitelist_build(%struct.intel_engine_cs* %33)
  br label %85

35:                                               ; preds = %28
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %41 = call i32 @cfl_whitelist_build(%struct.intel_engine_cs* %40)
  br label %84

42:                                               ; preds = %35
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %48 = call i32 @glk_whitelist_build(%struct.intel_engine_cs* %47)
  br label %83

49:                                               ; preds = %42
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %55 = call i32 @kbl_whitelist_build(%struct.intel_engine_cs* %54)
  br label %82

56:                                               ; preds = %49
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = call i64 @IS_BROXTON(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %62 = call i32 @bxt_whitelist_build(%struct.intel_engine_cs* %61)
  br label %81

63:                                               ; preds = %56
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %69 = call i32 @skl_whitelist_build(%struct.intel_engine_cs* %68)
  br label %80

70:                                               ; preds = %63
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %72 = call i32 @INTEL_GEN(%struct.drm_i915_private* %71)
  %73 = icmp sle i32 %72, 8
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %90

75:                                               ; preds = %70
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %77 = call i32 @INTEL_GEN(%struct.drm_i915_private* %76)
  %78 = call i32 @MISSING_CASE(i32 %77)
  br label %79

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %67
  br label %81

81:                                               ; preds = %80, %60
  br label %82

82:                                               ; preds = %81, %53
  br label %83

83:                                               ; preds = %82, %46
  br label %84

84:                                               ; preds = %83, %39
  br label %85

85:                                               ; preds = %84, %32
  br label %86

86:                                               ; preds = %85, %25
  br label %87

87:                                               ; preds = %86, %18
  %88 = load %struct.i915_wa_list*, %struct.i915_wa_list** %4, align 8
  %89 = call i32 @wa_init_finish(%struct.i915_wa_list* %88)
  br label %90

90:                                               ; preds = %87, %74
  ret void
}

declare dso_local i32 @wa_init_start(%struct.i915_wa_list*, i8*, i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @tgl_whitelist_build(%struct.intel_engine_cs*) #1

declare dso_local i32 @icl_whitelist_build(%struct.intel_engine_cs*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_whitelist_build(%struct.intel_engine_cs*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cfl_whitelist_build(%struct.intel_engine_cs*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @glk_whitelist_build(%struct.intel_engine_cs*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @kbl_whitelist_build(%struct.intel_engine_cs*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_whitelist_build(%struct.intel_engine_cs*) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @skl_whitelist_build(%struct.intel_engine_cs*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @wa_init_finish(%struct.i915_wa_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
