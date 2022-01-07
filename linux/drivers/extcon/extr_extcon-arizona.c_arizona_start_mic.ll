; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_start_mic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_start_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { i32, i32, i64, i64, %struct.arizona* }
%struct.arizona = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to regulate MICVDD: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to enable MICVDD: %d\0A\00", align 1
@ARIZONA_ACCDET_MODE_ADC = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_MODE_MIC = common dso_local global i32 0, align 4
@ARIZONA_ACCESSORY_DETECT_MODE_1 = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_MODE_MASK = common dso_local global i32 0, align 4
@ARIZONA_MIC_DETECT_1 = common dso_local global i32 0, align 4
@ARIZONA_MICD_ENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to enable micd: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona_extcon_info*)* @arizona_start_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_start_mic(%struct.arizona_extcon_info* %0) #0 {
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
  %10 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %11 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pm_runtime_get(i32 %12)
  %14 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %15 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %20 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regulator_allow_bypass(i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.arizona*, %struct.arizona** %3, align 8
  %27 = getelementptr inbounds %struct.arizona, %struct.arizona* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %34 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_enable(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.arizona*, %struct.arizona** %3, align 8
  %41 = getelementptr inbounds %struct.arizona, %struct.arizona* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %47 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.arizona*, %struct.arizona** %3, align 8
  %52 = getelementptr inbounds %struct.arizona, %struct.arizona* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @regmap_write(i32 %53, i32 128, i32 3)
  %55 = load %struct.arizona*, %struct.arizona** %3, align 8
  %56 = getelementptr inbounds %struct.arizona, %struct.arizona* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @regmap_write(i32 %57, i32 660, i32 0)
  %59 = load %struct.arizona*, %struct.arizona** %3, align 8
  %60 = getelementptr inbounds %struct.arizona, %struct.arizona* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regmap_write(i32 %61, i32 128, i32 0)
  br label %63

63:                                               ; preds = %50, %45
  %64 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %65 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.arizona*, %struct.arizona** %3, align 8
  %70 = getelementptr inbounds %struct.arizona, %struct.arizona* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @ARIZONA_ACCDET_MODE_ADC, align 4
  store i32 %75, i32* %6, align 4
  br label %78

76:                                               ; preds = %68, %63
  %77 = load i32, i32* @ARIZONA_ACCDET_MODE_MIC, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = load %struct.arizona*, %struct.arizona** %3, align 8
  %80 = getelementptr inbounds %struct.arizona, %struct.arizona* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ARIZONA_ACCESSORY_DETECT_MODE_1, align 4
  %83 = load i32, i32* @ARIZONA_ACCDET_MODE_MASK, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %87 = call i32 @arizona_extcon_pulse_micbias(%struct.arizona_extcon_info* %86)
  %88 = load %struct.arizona*, %struct.arizona** %3, align 8
  %89 = getelementptr inbounds %struct.arizona, %struct.arizona* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ARIZONA_MIC_DETECT_1, align 4
  %92 = load i32, i32* @ARIZONA_MICD_ENA, align 4
  %93 = load i32, i32* @ARIZONA_MICD_ENA, align 4
  %94 = call i32 @regmap_update_bits_check(i32 %90, i32 %91, i32 %92, i32 %93, i32* %4)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %78
  %98 = load %struct.arizona*, %struct.arizona** %3, align 8
  %99 = getelementptr inbounds %struct.arizona, %struct.arizona* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %116

103:                                              ; preds = %78
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %108 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @regulator_disable(i32 %109)
  %111 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %2, align 8
  %112 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @pm_runtime_put_autosuspend(i32 %113)
  br label %115

115:                                              ; preds = %106, %103
  br label %116

116:                                              ; preds = %115, %97
  ret void
}

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @regulator_allow_bypass(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @arizona_extcon_pulse_micbias(%struct.arizona_extcon_info*) #1

declare dso_local i32 @regmap_update_bits_check(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
