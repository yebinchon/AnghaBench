; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_sr_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_sr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32 }

@POWER_DOMAIN_INIT = common dso_local global i32 0, align 4
@WM1_LP_ILK = common dso_local global i32 0, align 4
@WM1_LP_SR_EN = common dso_local global i32 0, align 4
@FW_BLC_SELF = common dso_local global i32 0, align 4
@FW_BLC_SELF_EN = common dso_local global i32 0, align 4
@INSTPM = common dso_local global i32 0, align 4
@INSTPM_SELF_EN = common dso_local global i32 0, align 4
@DSPFW3 = common dso_local global i32 0, align 4
@PINEVIEW_SELF_REFRESH_EN = common dso_local global i32 0, align 4
@FW_BLC_SELF_VLV = common dso_local global i32 0, align 4
@FW_CSPWRDWNEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"self-refresh: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_sr_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_sr_status(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @node_to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = load i32, i32* @POWER_DOMAIN_INIT, align 4
  %14 = call i32 @intel_display_power_get(%struct.drm_i915_private* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = call i32 @INTEL_GEN(%struct.drm_i915_private* %15)
  %17 = icmp sge i32 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %21 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @WM1_LP_ILK, align 4
  %25 = call i32 @I915_READ(i32 %24)
  %26 = load i32, i32* @WM1_LP_SR_EN, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %7, align 4
  br label %84

28:                                               ; preds = %19
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = call i64 @IS_I965GM(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %34 = call i64 @IS_G4X(%struct.drm_i915_private* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %38 = call i64 @IS_I945G(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %42 = call i64 @IS_I945GM(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %36, %32, %28
  %45 = load i32, i32* @FW_BLC_SELF, align 4
  %46 = call i32 @I915_READ(i32 %45)
  %47 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %7, align 4
  br label %83

49:                                               ; preds = %40
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %51 = call i64 @IS_I915GM(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @INSTPM, align 4
  %55 = call i32 @I915_READ(i32 %54)
  %56 = load i32, i32* @INSTPM_SELF_EN, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %7, align 4
  br label %82

58:                                               ; preds = %49
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %60 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @DSPFW3, align 4
  %64 = call i32 @I915_READ(i32 %63)
  %65 = load i32, i32* @PINEVIEW_SELF_REFRESH_EN, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %7, align 4
  br label %81

67:                                               ; preds = %58
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %69 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %73 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @FW_BLC_SELF_VLV, align 4
  %77 = call i32 @I915_READ(i32 %76)
  %78 = load i32, i32* @FW_CSPWRDWNEN, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %71
  br label %81

81:                                               ; preds = %80, %62
  br label %82

82:                                               ; preds = %81, %53
  br label %83

83:                                               ; preds = %82, %44
  br label %84

84:                                               ; preds = %83, %23
  br label %85

85:                                               ; preds = %84, %18
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %87 = load i32, i32* @POWER_DOMAIN_INIT, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @intel_display_power_put(%struct.drm_i915_private* %86, i32 %87, i32 %88)
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @enableddisabled(i32 %91)
  %93 = call i32 @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %92)
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_I965GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I915GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @enableddisabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
