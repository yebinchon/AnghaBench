; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.arizona_extcon_info = type { i32, i64, i32, i32, i32, %struct.arizona* }
%struct.arizona = type { i32 }

@ARIZONA_MIC_DETECT_1 = common dso_local global i32 0, align 4
@ARIZONA_MICD_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to disable micd on remove: %d\0A\00", align 1
@ARIZONA_MICD_CLAMP_CONTROL = common dso_local global i32 0, align 4
@ARIZONA_MICD_CLAMP_MODE_MASK = common dso_local global i32 0, align 4
@ARIZONA_IRQ_MICD_CLAMP_RISE = common dso_local global i32 0, align 4
@ARIZONA_IRQ_MICD_CLAMP_FALL = common dso_local global i32 0, align 4
@ARIZONA_IRQ_JD_RISE = common dso_local global i32 0, align 4
@ARIZONA_IRQ_JD_FALL = common dso_local global i32 0, align 4
@ARIZONA_IRQ_HPDET = common dso_local global i32 0, align 4
@ARIZONA_IRQ_MICDET = common dso_local global i32 0, align 4
@ARIZONA_JACK_DETECT_ANALOGUE = common dso_local global i32 0, align 4
@ARIZONA_JD1_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arizona_extcon_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_extcon_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.arizona_extcon_info*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.arizona_extcon_info* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.arizona_extcon_info* %10, %struct.arizona_extcon_info** %3, align 8
  %11 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %12 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %11, i32 0, i32 5
  %13 = load %struct.arizona*, %struct.arizona** %12, align 8
  store %struct.arizona* %13, %struct.arizona** %4, align 8
  %14 = load %struct.arizona*, %struct.arizona** %4, align 8
  %15 = getelementptr inbounds %struct.arizona, %struct.arizona* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ARIZONA_MIC_DETECT_1, align 4
  %18 = load i32, i32* @ARIZONA_MICD_ENA, align 4
  %19 = call i32 @regmap_update_bits_check(i32 %16, i32 %17, i32 %18, i32 0, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %40

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %32 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @regulator_disable(i32 %33)
  %35 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %36 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_put(i32 %37)
  br label %39

39:                                               ; preds = %30, %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %42 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @gpiod_put(i32 %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @pm_runtime_disable(i32* %46)
  %48 = load %struct.arizona*, %struct.arizona** %4, align 8
  %49 = getelementptr inbounds %struct.arizona, %struct.arizona* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ARIZONA_MICD_CLAMP_CONTROL, align 4
  %52 = load i32, i32* @ARIZONA_MICD_CLAMP_MODE_MASK, align 4
  %53 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 0)
  %54 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %55 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %40
  %59 = load i32, i32* @ARIZONA_IRQ_MICD_CLAMP_RISE, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @ARIZONA_IRQ_MICD_CLAMP_FALL, align 4
  store i32 %60, i32* %6, align 4
  br label %64

61:                                               ; preds = %40
  %62 = load i32, i32* @ARIZONA_IRQ_JD_RISE, align 4
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @ARIZONA_IRQ_JD_FALL, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.arizona*, %struct.arizona** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @arizona_set_irq_wake(%struct.arizona* %65, i32 %66, i32 0)
  %68 = load %struct.arizona*, %struct.arizona** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @arizona_set_irq_wake(%struct.arizona* %68, i32 %69, i32 0)
  %71 = load %struct.arizona*, %struct.arizona** %4, align 8
  %72 = load i32, i32* @ARIZONA_IRQ_HPDET, align 4
  %73 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %74 = call i32 @arizona_free_irq(%struct.arizona* %71, i32 %72, %struct.arizona_extcon_info* %73)
  %75 = load %struct.arizona*, %struct.arizona** %4, align 8
  %76 = load i32, i32* @ARIZONA_IRQ_MICDET, align 4
  %77 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %78 = call i32 @arizona_free_irq(%struct.arizona* %75, i32 %76, %struct.arizona_extcon_info* %77)
  %79 = load %struct.arizona*, %struct.arizona** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %82 = call i32 @arizona_free_irq(%struct.arizona* %79, i32 %80, %struct.arizona_extcon_info* %81)
  %83 = load %struct.arizona*, %struct.arizona** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %86 = call i32 @arizona_free_irq(%struct.arizona* %83, i32 %84, %struct.arizona_extcon_info* %85)
  %87 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %3, align 8
  %88 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %87, i32 0, i32 0
  %89 = call i32 @cancel_delayed_work_sync(i32* %88)
  %90 = load %struct.arizona*, %struct.arizona** %4, align 8
  %91 = getelementptr inbounds %struct.arizona, %struct.arizona* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ARIZONA_JACK_DETECT_ANALOGUE, align 4
  %94 = load i32, i32* @ARIZONA_JD1_ENA, align 4
  %95 = call i32 @regmap_update_bits(i32 %92, i32 %93, i32 %94, i32 0)
  %96 = load %struct.arizona*, %struct.arizona** %4, align 8
  %97 = call i32 @arizona_clk32k_disable(%struct.arizona* %96)
  ret i32 0
}

declare dso_local %struct.arizona_extcon_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regmap_update_bits_check(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @gpiod_put(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @arizona_set_irq_wake(%struct.arizona*, i32, i32) #1

declare dso_local i32 @arizona_free_irq(%struct.arizona*, i32, %struct.arizona_extcon_info*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @arizona_clk32k_disable(%struct.arizona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
