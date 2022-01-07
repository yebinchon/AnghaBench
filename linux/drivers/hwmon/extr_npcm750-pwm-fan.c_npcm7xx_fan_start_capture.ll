; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_fan_start_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_fan_start_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm7xx_pwm_fan_data = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FAN_DISABLE = common dso_local global i64 0, align 8
@FAN_INIT = common dso_local global i64 0, align 8
@NPCM7XX_FAN_CMPA = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TIEN_TAIEN = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TIEN_TEIEN = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TCKC_CLK1_APB = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TIEN_TBIEN = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TIEN_TFIEN = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TCKC_CLK2_APB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npcm7xx_pwm_fan_data*, i64, i64)* @npcm7xx_fan_start_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm7xx_fan_start_capture(%struct.npcm7xx_pwm_fan_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.npcm7xx_pwm_fan_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.npcm7xx_pwm_fan_data* %0, %struct.npcm7xx_pwm_fan_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @NPCM7XX_FAN_INPUT(i64 %11, i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %15 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FAN_DISABLE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %109

23:                                               ; preds = %3
  %24 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %25 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i64, i64* @FAN_INIT, align 8
  %32 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %33 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %31, i64* %37, align 8
  %38 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %39 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @NPCM7XX_FAN_REG_TIEN(i32 %40, i64 %41)
  %43 = call i64 @ioread8(i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @NPCM7XX_FAN_CMPA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %23
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @NPCM7XX_FAN_TIEN_TAIEN, align 8
  %50 = load i64, i64* @NPCM7XX_FAN_TIEN_TEIEN, align 8
  %51 = or i64 %49, %50
  %52 = or i64 %48, %51
  %53 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %54 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @NPCM7XX_FAN_REG_TIEN(i32 %55, i64 %56)
  %58 = call i32 @iowrite8(i64 %52, i32 %57)
  %59 = load i64, i64* @NPCM7XX_FAN_TCKC_CLK1_APB, align 8
  %60 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %61 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @NPCM7XX_FAN_REG_TCKC(i32 %62, i64 %63)
  %65 = call i64 @ioread8(i32 %64)
  %66 = or i64 %59, %65
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %69 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @NPCM7XX_FAN_REG_TCKC(i32 %70, i64 %71)
  %73 = call i32 @iowrite8(i64 %67, i32 %72)
  br label %101

74:                                               ; preds = %23
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @NPCM7XX_FAN_TIEN_TBIEN, align 8
  %77 = load i64, i64* @NPCM7XX_FAN_TIEN_TFIEN, align 8
  %78 = or i64 %76, %77
  %79 = or i64 %75, %78
  %80 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %81 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @NPCM7XX_FAN_REG_TIEN(i32 %82, i64 %83)
  %85 = call i32 @iowrite8(i64 %79, i32 %84)
  %86 = load i64, i64* @NPCM7XX_FAN_TCKC_CLK2_APB, align 8
  %87 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %88 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @NPCM7XX_FAN_REG_TCKC(i32 %89, i64 %90)
  %92 = call i64 @ioread8(i32 %91)
  %93 = or i64 %86, %92
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %96 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @NPCM7XX_FAN_REG_TCKC(i32 %97, i64 %98)
  %100 = call i32 @iowrite8(i64 %94, i32 %99)
  br label %101

101:                                              ; preds = %74, %47
  %102 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %4, align 8
  %103 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  br label %109

109:                                              ; preds = %101, %3
  ret void
}

declare dso_local i64 @NPCM7XX_FAN_INPUT(i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ioread8(i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TIEN(i32, i64) #1

declare dso_local i32 @iowrite8(i64, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCKC(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
