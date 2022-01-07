; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_swizzle_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_swizzle_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32, i32, %struct.TYPE_2__, %struct.intel_uncore }
%struct.TYPE_2__ = type { i32, i32 }
%struct.intel_uncore = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"bit6 swizzle for X-tiling = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"bit6 swizzle for Y-tiling = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"DDC = 0x%08x\0A\00", align 1
@DCC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"DDC2 = 0x%08x\0A\00", align 1
@DCC2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"C0DRB3 = 0x%04x\0A\00", align 1
@C0DRB3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"C1DRB3 = 0x%04x\0A\00", align 1
@C1DRB3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"MAD_DIMM_C0 = 0x%08x\0A\00", align 1
@MAD_DIMM_C0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"MAD_DIMM_C1 = 0x%08x\0A\00", align 1
@MAD_DIMM_C1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"MAD_DIMM_C2 = 0x%08x\0A\00", align 1
@MAD_DIMM_C2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"TILECTL = 0x%08x\0A\00", align 1
@TILECTL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"GAMTARBMODE = 0x%08x\0A\00", align 1
@GAMTARBMODE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"ARB_MODE = 0x%08x\0A\00", align 1
@ARB_MODE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"DISP_ARB_CTL = 0x%08x\0A\00", align 1
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@QUIRK_PIN_SWIZZLED_PAGES = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"L-shaped memory detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_swizzle_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_swizzle_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_uncore*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @node_to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 3
  store %struct.intel_uncore* %13, %struct.intel_uncore** %6, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  %16 = call i32 @intel_runtime_pm_get(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @swizzle_string(i32 %21)
  %23 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @swizzle_string(i32 %28)
  %30 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %31, i32 3, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %2
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %37 = load i32, i32* @DCC, align 4
  %38 = call i32 @intel_uncore_read(%struct.intel_uncore* %36, i32 %37)
  %39 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %42 = load i32, i32* @DCC2, align 4
  %43 = call i32 @intel_uncore_read(%struct.intel_uncore* %41, i32 %42)
  %44 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %47 = load i32, i32* @C0DRB3, align 4
  %48 = call i32 @intel_uncore_read16(%struct.intel_uncore* %46, i32 %47)
  %49 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %52 = load i32, i32* @C1DRB3, align 4
  %53 = call i32 @intel_uncore_read16(%struct.intel_uncore* %51, i32 %52)
  %54 = call i32 @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  br label %102

55:                                               ; preds = %2
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %57 = call i32 @INTEL_GEN(%struct.drm_i915_private* %56)
  %58 = icmp sge i32 %57, 6
  br i1 %58, label %59, label %101

59:                                               ; preds = %55
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %62 = load i32, i32* @MAD_DIMM_C0, align 4
  %63 = call i32 @intel_uncore_read(%struct.intel_uncore* %61, i32 %62)
  %64 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %67 = load i32, i32* @MAD_DIMM_C1, align 4
  %68 = call i32 @intel_uncore_read(%struct.intel_uncore* %66, i32 %67)
  %69 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %72 = load i32, i32* @MAD_DIMM_C2, align 4
  %73 = call i32 @intel_uncore_read(%struct.intel_uncore* %71, i32 %72)
  %74 = call i32 @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %77 = load i32, i32* @TILECTL, align 4
  %78 = call i32 @intel_uncore_read(%struct.intel_uncore* %76, i32 %77)
  %79 = call i32 @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %81 = call i32 @INTEL_GEN(%struct.drm_i915_private* %80)
  %82 = icmp sge i32 %81, 8
  br i1 %82, label %83, label %89

83:                                               ; preds = %59
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %86 = load i32, i32* @GAMTARBMODE, align 4
  %87 = call i32 @intel_uncore_read(%struct.intel_uncore* %85, i32 %86)
  %88 = call i32 @seq_printf(%struct.seq_file* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %87)
  br label %95

89:                                               ; preds = %59
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %92 = load i32, i32* @ARB_MODE, align 4
  %93 = call i32 @intel_uncore_read(%struct.intel_uncore* %91, i32 %92)
  %94 = call i32 @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = load %struct.intel_uncore*, %struct.intel_uncore** %6, align 8
  %98 = load i32, i32* @DISP_ARB_CTL, align 4
  %99 = call i32 @intel_uncore_read(%struct.intel_uncore* %97, i32 %98)
  %100 = call i32 @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %55
  br label %102

102:                                              ; preds = %101, %34
  %103 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %104 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @QUIRK_PIN_SWIZZLED_PAGES, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = call i32 @seq_puts(%struct.seq_file* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %114 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %113, i32 0, i32 1
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @intel_runtime_pm_put(i32* %114, i32 %115)
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @swizzle_string(i32) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_read16(%struct.intel_uncore*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
