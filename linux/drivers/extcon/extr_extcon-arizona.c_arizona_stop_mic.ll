; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_stop_mic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_stop_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { i32, i32, i64, %struct.arizona* }
%struct.arizona = type { i32, i32, %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { i32 }
%struct.snd_soc_component = type { i32 }

@ARIZONA_MIC_DETECT_1 = common dso_local global i32 0, align 4
@ARIZONA_MICD_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to disable micd: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to disable %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to bypass MICVDD: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona_extcon_info*)* @arizona_stop_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_stop_mic(%struct.arizona_extcon_info* %0) #0 {
  %2 = alloca %struct.arizona_extcon_info*, align 8
  %3 = alloca %struct.arizona*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.arizona_extcon_info* %0, %struct.arizona_extcon_info** %2, align 8
  %9 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %10 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %9, i32 0, i32 3
  %11 = load %struct.arizona*, %struct.arizona** %10, align 8
  store %struct.arizona* %11, %struct.arizona** %3, align 8
  %12 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %13 = call i8* @arizona_extcon_get_micbias(%struct.arizona_extcon_info* %12)
  store i8* %13, i8** %4, align 8
  %14 = load %struct.arizona*, %struct.arizona** %3, align 8
  %15 = getelementptr inbounds %struct.arizona, %struct.arizona* %14, i32 0, i32 2
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %15, align 8
  store %struct.snd_soc_dapm_context* %16, %struct.snd_soc_dapm_context** %5, align 8
  %17 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %18 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context* %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.arizona*, %struct.arizona** %3, align 8
  %20 = getelementptr inbounds %struct.arizona, %struct.arizona* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ARIZONA_MIC_DETECT_1, align 4
  %23 = load i32, i32* @ARIZONA_MICD_ENA, align 4
  %24 = call i32 @regmap_update_bits_check(i32 %21, i32 %22, i32 %23, i32 0, i32* %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.arizona*, %struct.arizona** %3, align 8
  %29 = getelementptr inbounds %struct.arizona, %struct.arizona* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @snd_soc_component_disable_pin(%struct.snd_soc_component* %34, i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.arizona*, %struct.arizona** %3, align 8
  %41 = getelementptr inbounds %struct.arizona, %struct.arizona* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %48 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %47)
  %49 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %50 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.arizona*, %struct.arizona** %3, align 8
  %55 = getelementptr inbounds %struct.arizona, %struct.arizona* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regmap_write(i32 %56, i32 128, i32 3)
  %58 = load %struct.arizona*, %struct.arizona** %3, align 8
  %59 = getelementptr inbounds %struct.arizona, %struct.arizona* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regmap_write(i32 %60, i32 660, i32 2)
  %62 = load %struct.arizona*, %struct.arizona** %3, align 8
  %63 = getelementptr inbounds %struct.arizona, %struct.arizona* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @regmap_write(i32 %64, i32 128, i32 0)
  br label %66

66:                                               ; preds = %53, %46
  %67 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %68 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @regulator_allow_bypass(i32 %69, i32 1)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.arizona*, %struct.arizona** %3, align 8
  %75 = getelementptr inbounds %struct.arizona, %struct.arizona* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %66
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %84 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @regulator_disable(i32 %85)
  %87 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %88 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @pm_runtime_mark_last_busy(i32 %89)
  %91 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %92 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @pm_runtime_put_autosuspend(i32 %93)
  br label %95

95:                                               ; preds = %82, %79
  ret void
}

declare dso_local i8* @arizona_extcon_get_micbias(%struct.arizona_extcon_info*) #1

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regmap_update_bits_check(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_disable_pin(%struct.snd_soc_component*, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regulator_allow_bypass(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
