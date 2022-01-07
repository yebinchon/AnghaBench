; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_ironlake_drpc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_ironlake_drpc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@MEMMODECTL = common dso_local global i32 0, align 4
@RSTDBYCTL = common dso_local global i32 0, align 4
@CRSTANDVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"HD boost: %s\0A\00", align 1
@MEMMODE_BOOST_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Boost freq: %d\0A\00", align 1
@MEMMODE_BOOST_FREQ_MASK = common dso_local global i32 0, align 4
@MEMMODE_BOOST_FREQ_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"HW control enabled: %s\0A\00", align 1
@MEMMODE_HWIDLE_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"SW control enabled: %s\0A\00", align 1
@MEMMODE_SWMODE_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Gated voltage change: %s\0A\00", align 1
@MEMMODE_RCLK_GATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Starting frequency: P%d\0A\00", align 1
@MEMMODE_FSTART_MASK = common dso_local global i32 0, align 4
@MEMMODE_FSTART_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Max P-state: P%d\0A\00", align 1
@MEMMODE_FMAX_MASK = common dso_local global i32 0, align 4
@MEMMODE_FMAX_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Min P-state: P%d\0A\00", align 1
@MEMMODE_FMIN_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"RS1 VID: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"RS2 VID: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Render standby enabled: %s\0A\00", align 1
@RCX_SW_EXIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"Current RS state: \00", align 1
@RSX_STATUS_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"on\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"RC1\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"RC1E\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"RS1\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"RS2 (RC6)\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"RC3 (RC6+)\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @ironlake_drpc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_drpc_info(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @node_to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  store %struct.intel_uncore* %13, %struct.intel_uncore** %4, align 8
  %14 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %15 = load i32, i32* @MEMMODECTL, align 4
  %16 = call i32 @intel_uncore_read(%struct.intel_uncore* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %18 = load i32, i32* @RSTDBYCTL, align 4
  %19 = call i32 @intel_uncore_read(%struct.intel_uncore* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %21 = load i32, i32* @CRSTANDVID, align 4
  %22 = call i32 @intel_uncore_read16(%struct.intel_uncore* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MEMMODE_BOOST_EN, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @yesno(i32 %26)
  %28 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MEMMODE_BOOST_FREQ_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @MEMMODE_BOOST_FREQ_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MEMMODE_HWIDLE_EN, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @yesno(i32 %39)
  %41 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MEMMODE_SWMODE_EN, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @yesno(i32 %45)
  %47 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MEMMODE_RCLK_GATE, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @yesno(i32 %51)
  %53 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MEMMODE_FSTART_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @MEMMODE_FSTART_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = call i32 @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @MEMMODE_FMAX_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @MEMMODE_FMAX_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = call i32 @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MEMMODE_FMIN_MASK, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 63
  %76 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %75)
  %77 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 63
  %81 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %80)
  %82 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @RCX_SW_EXIT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @yesno(i32 %88)
  %90 = call i32 @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %89)
  %91 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %92 = call i32 @seq_puts(%struct.seq_file* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @RSX_STATUS_MASK, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %114 [
    i32 133, label %96
    i32 132, label %99
    i32 131, label %102
    i32 130, label %105
    i32 129, label %108
    i32 128, label %111
  ]

96:                                               ; preds = %1
  %97 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %98 = call i32 @seq_puts(%struct.seq_file* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  br label %117

99:                                               ; preds = %1
  %100 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %101 = call i32 @seq_puts(%struct.seq_file* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %117

102:                                              ; preds = %1
  %103 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %104 = call i32 @seq_puts(%struct.seq_file* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %117

105:                                              ; preds = %1
  %106 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %107 = call i32 @seq_puts(%struct.seq_file* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %117

108:                                              ; preds = %1
  %109 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %110 = call i32 @seq_puts(%struct.seq_file* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %117

111:                                              ; preds = %1
  %112 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %113 = call i32 @seq_puts(%struct.seq_file* %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %117

114:                                              ; preds = %1
  %115 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %116 = call i32 @seq_puts(%struct.seq_file* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %111, %108, %105, %102, %99, %96
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_read16(%struct.intel_uncore*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
