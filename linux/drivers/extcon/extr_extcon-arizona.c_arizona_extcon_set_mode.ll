; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { i32, i32, %struct.TYPE_2__*, i32, %struct.arizona* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.arizona = type { i32, i32 }

@ARIZONA_MIC_DETECT_1 = common dso_local global i32 0, align 4
@ARIZONA_MICD_BIAS_SRC_MASK = common dso_local global i32 0, align 4
@ARIZONA_MICD_BIAS_SRC_SHIFT = common dso_local global i32 0, align 4
@ARIZONA_ACCESSORY_DETECT_MODE_1 = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Set jack polarity to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona_extcon_info*, i32)* @arizona_extcon_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_extcon_set_mode(%struct.arizona_extcon_info* %0, i32 %1) #0 {
  %3 = alloca %struct.arizona_extcon_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arizona*, align 8
  store %struct.arizona_extcon_info* %0, %struct.arizona_extcon_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %7 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %6, i32 0, i32 4
  %8 = load %struct.arizona*, %struct.arizona** %7, align 8
  store %struct.arizona* %8, %struct.arizona** %5, align 8
  %9 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %10 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = srem i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %15 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %18 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpiod_set_value_cansleep(i32 %16, i32 %24)
  %26 = load %struct.arizona*, %struct.arizona** %5, align 8
  %27 = getelementptr inbounds %struct.arizona, %struct.arizona* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ARIZONA_MIC_DETECT_1, align 4
  %30 = load i32, i32* @ARIZONA_MICD_BIAS_SRC_MASK, align 4
  %31 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %32 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ARIZONA_MICD_BIAS_SRC_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %40)
  %42 = load %struct.arizona*, %struct.arizona** %5, align 8
  %43 = getelementptr inbounds %struct.arizona, %struct.arizona* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ARIZONA_ACCESSORY_DETECT_MODE_1, align 4
  %46 = load i32, i32* @ARIZONA_ACCDET_SRC, align 4
  %47 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %48 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %58 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.arizona*, %struct.arizona** %5, align 8
  %60 = getelementptr inbounds %struct.arizona, %struct.arizona* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %62)
  ret void
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
