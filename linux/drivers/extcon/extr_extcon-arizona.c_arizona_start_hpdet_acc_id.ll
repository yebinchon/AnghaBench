; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_start_hpdet_acc_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_start_hpdet_acc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { i32, i32, %struct.TYPE_3__*, i32, %struct.arizona* }
%struct.TYPE_3__ = type { i32 }
%struct.arizona = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Starting identification via HPDET\0A\00", align 1
@ARIZONA_ACCESSORY_DETECT_MODE_1 = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_SRC = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_MODE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set HPDET mode: %d\0A\00", align 1
@ARIZONA_HEADPHONE_DETECT_1 = common dso_local global i32 0, align 4
@ARIZONA_HP_POLL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't start HPDETL measurement: %d\0A\00", align 1
@ARIZONA_ACCDET_MODE_MIC = common dso_local global i32 0, align 4
@EXTCON_JACK_HEADPHONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to report headphone: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona_extcon_info*)* @arizona_start_hpdet_acc_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_start_hpdet_acc_id(%struct.arizona_extcon_info* %0) #0 {
  %2 = alloca %struct.arizona_extcon_info*, align 8
  %3 = alloca %struct.arizona*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.arizona_extcon_info* %0, %struct.arizona_extcon_info** %2, align 8
  %7 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %8 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %7, i32 0, i32 4
  %9 = load %struct.arizona*, %struct.arizona** %8, align 8
  store %struct.arizona* %9, %struct.arizona** %3, align 8
  store i32 32, i32* %4, align 4
  %10 = load %struct.arizona*, %struct.arizona** %3, align 8
  %11 = getelementptr inbounds %struct.arizona, %struct.arizona* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %15 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  %18 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %19 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %21 = call i32 @arizona_extcon_hp_clamp(%struct.arizona_extcon_info* %20, i32 1)
  %22 = load %struct.arizona*, %struct.arizona** %3, align 8
  %23 = getelementptr inbounds %struct.arizona, %struct.arizona* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ARIZONA_ACCESSORY_DETECT_MODE_1, align 4
  %26 = load i32, i32* @ARIZONA_ACCDET_SRC, align 4
  %27 = load i32, i32* @ARIZONA_ACCDET_MODE_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %30 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.arizona*, %struct.arizona** %3, align 8
  %36 = getelementptr inbounds %struct.arizona, %struct.arizona* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %34, %38
  %40 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %28, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load %struct.arizona*, %struct.arizona** %3, align 8
  %45 = getelementptr inbounds %struct.arizona, %struct.arizona* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %76

49:                                               ; preds = %1
  %50 = load %struct.arizona*, %struct.arizona** %3, align 8
  %51 = getelementptr inbounds %struct.arizona, %struct.arizona* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.arizona*, %struct.arizona** %3, align 8
  %57 = getelementptr inbounds %struct.arizona, %struct.arizona* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_1, align 4
  %60 = load i32, i32* @ARIZONA_HP_POLL, align 4
  %61 = load i32, i32* @ARIZONA_HP_POLL, align 4
  %62 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load %struct.arizona*, %struct.arizona** %3, align 8
  %67 = getelementptr inbounds %struct.arizona, %struct.arizona* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %76

71:                                               ; preds = %55
  br label %75

72:                                               ; preds = %49
  %73 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %74 = call i32 @arizona_hpdet_do_id(%struct.arizona_extcon_info* %73, i32* %4, i32* %5)
  br label %75

75:                                               ; preds = %72, %71
  br label %100

76:                                               ; preds = %65, %43
  %77 = load %struct.arizona*, %struct.arizona** %3, align 8
  %78 = getelementptr inbounds %struct.arizona, %struct.arizona* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ARIZONA_ACCESSORY_DETECT_MODE_1, align 4
  %81 = load i32, i32* @ARIZONA_ACCDET_MODE_MASK, align 4
  %82 = load i32, i32* @ARIZONA_ACCDET_MODE_MIC, align 4
  %83 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %85 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @EXTCON_JACK_HEADPHONE, align 4
  %88 = call i32 @extcon_set_state_sync(i32 %86, i32 %87, i32 1)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %76
  %92 = load %struct.arizona*, %struct.arizona** %3, align 8
  %93 = getelementptr inbounds %struct.arizona, %struct.arizona* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %76
  %98 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %99 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %75
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @arizona_extcon_hp_clamp(%struct.arizona_extcon_info*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @arizona_hpdet_do_id(%struct.arizona_extcon_info*, i32*, i32*) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
