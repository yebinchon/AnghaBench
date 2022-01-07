; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_identify_headphone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_identify_headphone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { i32, i64, i32, i32, i64, %struct.arizona* }
%struct.arizona = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Starting HPDET\0A\00", align 1
@ARIZONA_ACCESSORY_DETECT_MODE_1 = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_MODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set HPDET mode: %d\0A\00", align 1
@ARIZONA_HEADPHONE_DETECT_1 = common dso_local global i32 0, align 4
@ARIZONA_HP_POLL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't start HPDETL measurement: %d\0A\00", align 1
@ARIZONA_ACCDET_MODE_MIC = common dso_local global i32 0, align 4
@EXTCON_JACK_HEADPHONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to report headphone: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona_extcon_info*)* @arizona_identify_headphone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_identify_headphone(%struct.arizona_extcon_info* %0) #0 {
  %2 = alloca %struct.arizona_extcon_info*, align 8
  %3 = alloca %struct.arizona*, align 8
  %4 = alloca i32, align 4
  store %struct.arizona_extcon_info* %0, %struct.arizona_extcon_info** %2, align 8
  %5 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %6 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %5, i32 0, i32 5
  %7 = load %struct.arizona*, %struct.arizona** %6, align 8
  store %struct.arizona* %7, %struct.arizona** %3, align 8
  %8 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %9 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %101

13:                                               ; preds = %1
  %14 = load %struct.arizona*, %struct.arizona** %3, align 8
  %15 = getelementptr inbounds %struct.arizona, %struct.arizona* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %19 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get(i32 %20)
  %22 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %23 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %25 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %30 = call i32 @arizona_stop_mic(%struct.arizona_extcon_info* %29)
  br label %31

31:                                               ; preds = %28, %13
  %32 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %33 = call i32 @arizona_extcon_hp_clamp(%struct.arizona_extcon_info* %32, i32 1)
  %34 = load %struct.arizona*, %struct.arizona** %3, align 8
  %35 = getelementptr inbounds %struct.arizona, %struct.arizona* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ARIZONA_ACCESSORY_DETECT_MODE_1, align 4
  %38 = load i32, i32* @ARIZONA_ACCDET_MODE_MASK, align 4
  %39 = load %struct.arizona*, %struct.arizona** %3, align 8
  %40 = getelementptr inbounds %struct.arizona, %struct.arizona* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = load %struct.arizona*, %struct.arizona** %3, align 8
  %48 = getelementptr inbounds %struct.arizona, %struct.arizona* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %69

52:                                               ; preds = %31
  %53 = load %struct.arizona*, %struct.arizona** %3, align 8
  %54 = getelementptr inbounds %struct.arizona, %struct.arizona* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_1, align 4
  %57 = load i32, i32* @ARIZONA_HP_POLL, align 4
  %58 = load i32, i32* @ARIZONA_HP_POLL, align 4
  %59 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load %struct.arizona*, %struct.arizona** %3, align 8
  %64 = getelementptr inbounds %struct.arizona, %struct.arizona* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %69

68:                                               ; preds = %52
  br label %101

69:                                               ; preds = %62, %46
  %70 = load %struct.arizona*, %struct.arizona** %3, align 8
  %71 = getelementptr inbounds %struct.arizona, %struct.arizona* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ARIZONA_ACCESSORY_DETECT_MODE_1, align 4
  %74 = load i32, i32* @ARIZONA_ACCDET_MODE_MASK, align 4
  %75 = load i32, i32* @ARIZONA_ACCDET_MODE_MIC, align 4
  %76 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %78 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EXTCON_JACK_HEADPHONE, align 4
  %81 = call i32 @extcon_set_state_sync(i32 %79, i32 %80, i32 1)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %69
  %85 = load %struct.arizona*, %struct.arizona** %3, align 8
  %86 = getelementptr inbounds %struct.arizona, %struct.arizona* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %69
  %91 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %92 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %97 = call i32 @arizona_start_mic(%struct.arizona_extcon_info* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %100 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %68, %12
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @arizona_stop_mic(%struct.arizona_extcon_info*) #1

declare dso_local i32 @arizona_extcon_hp_clamp(%struct.arizona_extcon_info*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @arizona_start_mic(%struct.arizona_extcon_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
