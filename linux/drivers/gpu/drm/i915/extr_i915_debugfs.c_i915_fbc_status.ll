; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_fbc_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_fbc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32, %struct.intel_fbc }
%struct.intel_fbc = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"FBC enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"FBC disabled: %s\0A\00", align 1
@IVB_FBC_STATUS2 = common dso_local global i32 0, align 4
@BDW_FBC_COMP_SEG_MASK = common dso_local global i32 0, align 4
@IVB_FBC_COMP_SEG_MASK = common dso_local global i32 0, align 4
@ILK_DPFC_STATUS = common dso_local global i32 0, align 4
@ILK_DPFC_COMP_SEG_MASK = common dso_local global i32 0, align 4
@DPFC_STATUS = common dso_local global i32 0, align 4
@DPFC_COMP_SEG_MASK = common dso_local global i32 0, align 4
@FBC_STATUS = common dso_local global i32 0, align 4
@FBC_STAT_COMPRESSING = common dso_local global i32 0, align 4
@FBC_STAT_COMPRESSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Compressing: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_fbc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_fbc_status(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_fbc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @node_to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  store %struct.intel_fbc* %15, %struct.intel_fbc** %7, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %17 = call i32 @HAS_FBC(%struct.drm_i915_private* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = call i32 @intel_runtime_pm_get(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %27 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %30 = call i64 @intel_fbc_is_active(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = call i32 @seq_puts(%struct.seq_file* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %41

35:                                               ; preds = %22
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %38 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %43 = call i64 @intel_fbc_is_active(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %41
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = call i32 @INTEL_GEN(%struct.drm_i915_private* %46)
  %48 = icmp sge i32 %47, 8
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @IVB_FBC_STATUS2, align 4
  %51 = call i32 @I915_READ(i32 %50)
  %52 = load i32, i32* @BDW_FBC_COMP_SEG_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %9, align 4
  br label %91

54:                                               ; preds = %45
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %56 = call i32 @INTEL_GEN(%struct.drm_i915_private* %55)
  %57 = icmp sge i32 %56, 7
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @IVB_FBC_STATUS2, align 4
  %60 = call i32 @I915_READ(i32 %59)
  %61 = load i32, i32* @IVB_FBC_COMP_SEG_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %9, align 4
  br label %90

63:                                               ; preds = %54
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %65 = call i32 @INTEL_GEN(%struct.drm_i915_private* %64)
  %66 = icmp sge i32 %65, 5
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @ILK_DPFC_STATUS, align 4
  %69 = call i32 @I915_READ(i32 %68)
  %70 = load i32, i32* @ILK_DPFC_COMP_SEG_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %9, align 4
  br label %89

72:                                               ; preds = %63
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %74 = call i64 @IS_G4X(%struct.drm_i915_private* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* @DPFC_STATUS, align 4
  %78 = call i32 @I915_READ(i32 %77)
  %79 = load i32, i32* @DPFC_COMP_SEG_MASK, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %9, align 4
  br label %88

81:                                               ; preds = %72
  %82 = load i32, i32* @FBC_STATUS, align 4
  %83 = call i32 @I915_READ(i32 %82)
  %84 = load i32, i32* @FBC_STAT_COMPRESSING, align 4
  %85 = load i32, i32* @FBC_STAT_COMPRESSED, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %81, %76
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %58
  br label %91

91:                                               ; preds = %90, %49
  %92 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @yesno(i32 %93)
  %95 = call i32 @seq_printf(%struct.seq_file* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %41
  %97 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %98 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %101 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %100, i32 0, i32 0
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @intel_runtime_pm_put(i32* %101, i32 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %96, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @HAS_FBC(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @intel_fbc_is_active(%struct.drm_i915_private*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
