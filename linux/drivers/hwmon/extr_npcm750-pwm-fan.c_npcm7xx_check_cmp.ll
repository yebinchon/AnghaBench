; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_check_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_check_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm7xx_pwm_fan_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@NPCM7XX_FAN_CMPA = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TICTRL_TAPND = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TICTRL_TEPND = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TIEN_TAIEN = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TIEN_TEIEN = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TCKC_CLK1_APB = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TICLR_TACLR = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TICLR_TECLR = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TICTRL_TBPND = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TICTRL_TFPND = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TIEN_TBIEN = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TIEN_TFIEN = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TCKC_CLK2_APB = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TICLR_TBCLR = common dso_local global i64 0, align 8
@NPCM7XX_FAN_TICLR_TFCLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npcm7xx_pwm_fan_data*, i64, i64, i64)* @npcm7xx_check_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm7xx_check_cmp(%struct.npcm7xx_pwm_fan_data* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.npcm7xx_pwm_fan_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.npcm7xx_pwm_fan_data* %0, %struct.npcm7xx_pwm_fan_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @NPCM7XX_FAN_INPUT(i64 %17, i64 %18)
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @NPCM7XX_FAN_CMPA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load i64, i64* @NPCM7XX_FAN_TICTRL_TAPND, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* @NPCM7XX_FAN_TICTRL_TEPND, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* @NPCM7XX_FAN_TIEN_TAIEN, align 8
  %27 = load i64, i64* @NPCM7XX_FAN_TIEN_TEIEN, align 8
  %28 = or i64 %26, %27
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* @NPCM7XX_FAN_TCKC_CLK1_APB, align 8
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* @NPCM7XX_FAN_TICLR_TACLR, align 8
  %31 = load i64, i64* @NPCM7XX_FAN_TICLR_TECLR, align 8
  %32 = or i64 %30, %31
  store i64 %32, i64* %13, align 8
  br label %43

33:                                               ; preds = %4
  %34 = load i64, i64* @NPCM7XX_FAN_TICTRL_TBPND, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* @NPCM7XX_FAN_TICTRL_TFPND, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* @NPCM7XX_FAN_TIEN_TBIEN, align 8
  %37 = load i64, i64* @NPCM7XX_FAN_TIEN_TFIEN, align 8
  %38 = or i64 %36, %37
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* @NPCM7XX_FAN_TCKC_CLK2_APB, align 8
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* @NPCM7XX_FAN_TICLR_TBCLR, align 8
  %41 = load i64, i64* @NPCM7XX_FAN_TICLR_TFCLR, align 8
  %42 = or i64 %40, %41
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %33, %23
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %43
  %49 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %50 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @NPCM7XX_FAN_REG_TIEN(i32 %51, i64 %52)
  %54 = call i64 @ioread8(i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %14, align 8
  %57 = xor i64 %56, -1
  %58 = and i64 %55, %57
  %59 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %60 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @NPCM7XX_FAN_REG_TIEN(i32 %61, i64 %62)
  %64 = call i32 @iowrite8(i64 %58, i32 %63)
  %65 = load i64, i64* %13, align 8
  %66 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %67 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @NPCM7XX_FAN_REG_TICLR(i32 %68, i64 %69)
  %71 = call i32 @iowrite8(i64 %65, i32 %70)
  %72 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %73 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @NPCM7XX_FAN_REG_TCKC(i32 %74, i64 %75)
  %77 = call i64 @ioread8(i32 %76)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %15, align 8
  %80 = xor i64 %79, -1
  %81 = and i64 %78, %80
  %82 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %83 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @NPCM7XX_FAN_REG_TCKC(i32 %84, i64 %85)
  %87 = call i32 @iowrite8(i64 %81, i32 %86)
  %88 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %89 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i64, i64* %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %109

94:                                               ; preds = %43
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %12, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @npcm7xx_fan_compute(%struct.npcm7xx_pwm_fan_data* %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106)
  br label %108

108:                                              ; preds = %99, %94
  br label %109

109:                                              ; preds = %108, %48
  ret void
}

declare dso_local i64 @NPCM7XX_FAN_INPUT(i64, i64) #1

declare dso_local i64 @ioread8(i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TIEN(i32, i64) #1

declare dso_local i32 @iowrite8(i64, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TICLR(i32, i64) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCKC(i32, i64) #1

declare dso_local i32 @npcm7xx_fan_compute(%struct.npcm7xx_pwm_fan_data*, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
