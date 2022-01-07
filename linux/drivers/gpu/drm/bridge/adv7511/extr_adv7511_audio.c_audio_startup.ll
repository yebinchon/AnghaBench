; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_audio.c_audio_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_audio.c_audio_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adv7511 = type { i32 }

@ADV7511_REG_AUDIO_CONFIG = common dso_local global i32 0, align 4
@ADV7511_REG_INFOFRAME_UPDATE = common dso_local global i32 0, align 4
@ADV7511_REG_PACKET_ENABLE1 = common dso_local global i32 0, align 4
@ADV7511_REG_AUDIO_CFG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @audio_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_startup(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.adv7511*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.adv7511* @dev_get_drvdata(%struct.device* %6)
  store %struct.adv7511* %7, %struct.adv7511** %5, align 8
  %8 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %9 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ADV7511_REG_AUDIO_CONFIG, align 4
  %12 = call i32 @BIT(i32 7)
  %13 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %15 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ADV7511_REG_INFOFRAME_UPDATE, align 4
  %18 = call i32 @BIT(i32 5)
  %19 = call i32 @BIT(i32 5)
  %20 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %22 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ADV7511_REG_PACKET_ENABLE1, align 4
  %25 = call i32 @BIT(i32 5)
  %26 = call i32 @BIT(i32 5)
  %27 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %29 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ADV7511_REG_PACKET_ENABLE1, align 4
  %32 = call i32 @BIT(i32 6)
  %33 = call i32 @BIT(i32 6)
  %34 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %36 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ADV7511_REG_AUDIO_CFG1, align 4
  %39 = call i32 @BIT(i32 5)
  %40 = call i32 @BIT(i32 5)
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %43 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ADV7511_REG_PACKET_ENABLE1, align 4
  %46 = call i32 @BIT(i32 3)
  %47 = call i32 @BIT(i32 3)
  %48 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %50 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ADV7511_REG_GC(i32 0)
  %53 = call i32 @BIT(i32 7)
  %54 = call i32 @BIT(i32 6)
  %55 = or i32 %53, %54
  %56 = call i32 @BIT(i32 7)
  %57 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %55, i32 %56)
  %58 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %59 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ADV7511_REG_GC(i32 1)
  %62 = call i32 @BIT(i32 5)
  %63 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 0)
  ret i32 0
}

declare dso_local %struct.adv7511* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ADV7511_REG_GC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
