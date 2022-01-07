; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_fan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_fan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm7xx_pwm_fan_data = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@NPCM7XX_FAN_MAX_MODULE = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TCKC_CLKX_NONE = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TICLR_CLEAR_ALL = common dso_local global i32 0, align 4
@NPCM7XX_FAN_CLK_PRESCALE = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TMCTRL_MODE_5 = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TMCTRL_TBEN = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TMCTRL_TAEN = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TCNT = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TCPCFG_EQAEN = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TCPCFG_EQBEN = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TCPA = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TCPB = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TINASEL_FANIN_DEFAULT = common dso_local global i32 0, align 4
@NPCM7XX_FAN_MAX_CHN_NUM_IN_A_MODULE = common dso_local global i32 0, align 4
@FAN_DISABLE = common dso_local global i32 0, align 4
@NPCM7XX_FAN_DEFAULT_PULSE_PER_REVOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npcm7xx_pwm_fan_data*)* @npcm7xx_fan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm7xx_fan_init(%struct.npcm7xx_pwm_fan_data* %0) #0 {
  %2 = alloca %struct.npcm7xx_pwm_fan_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.npcm7xx_pwm_fan_data* %0, %struct.npcm7xx_pwm_fan_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %138, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NPCM7XX_FAN_MAX_MODULE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %141

11:                                               ; preds = %7
  %12 = load i32, i32* @NPCM7XX_FAN_TCKC_CLKX_NONE, align 4
  %13 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %14 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @NPCM7XX_FAN_REG_TCKC(i32 %15, i32 %16)
  %18 = call i32 @iowrite8(i32 %12, i32 %17)
  %19 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %20 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @NPCM7XX_FAN_REG_TIEN(i32 %21, i32 %22)
  %24 = call i32 @iowrite8(i32 0, i32 %23)
  %25 = load i32, i32* @NPCM7XX_FAN_TICLR_CLEAR_ALL, align 4
  %26 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %27 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @NPCM7XX_FAN_REG_TICLR(i32 %28, i32 %29)
  %31 = call i32 @iowrite8(i32 %25, i32 %30)
  %32 = load i32, i32* @NPCM7XX_FAN_CLK_PRESCALE, align 4
  %33 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %34 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @NPCM7XX_FAN_REG_TPRSC(i32 %35, i32 %36)
  %38 = call i32 @iowrite8(i32 %32, i32 %37)
  %39 = load i32, i32* @NPCM7XX_FAN_TMCTRL_MODE_5, align 4
  %40 = load i32, i32* @NPCM7XX_FAN_TMCTRL_TBEN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NPCM7XX_FAN_TMCTRL_TAEN, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %45 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @NPCM7XX_FAN_REG_TMCTRL(i32 %46, i32 %47)
  %49 = call i32 @iowrite8(i32 %43, i32 %48)
  %50 = load i32, i32* @NPCM7XX_FAN_TCNT, align 4
  %51 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %52 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @NPCM7XX_FAN_REG_TCNT1(i32 %53, i32 %54)
  %56 = call i32 @iowrite16(i32 %50, i32 %55)
  %57 = load i32, i32* @NPCM7XX_FAN_TCNT, align 4
  %58 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %59 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @NPCM7XX_FAN_REG_TCNT2(i32 %60, i32 %61)
  %63 = call i32 @iowrite16(i32 %57, i32 %62)
  %64 = load i32, i32* @NPCM7XX_FAN_TCPCFG_EQAEN, align 4
  %65 = load i32, i32* @NPCM7XX_FAN_TCPCFG_EQBEN, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %68 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @NPCM7XX_FAN_REG_TCPCFG(i32 %69, i32 %70)
  %72 = call i32 @iowrite8(i32 %66, i32 %71)
  %73 = load i32, i32* @NPCM7XX_FAN_TCPA, align 4
  %74 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %75 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @NPCM7XX_FAN_REG_TCPA(i32 %76, i32 %77)
  %79 = call i32 @iowrite16(i32 %73, i32 %78)
  %80 = load i32, i32* @NPCM7XX_FAN_TCPB, align 4
  %81 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %82 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @NPCM7XX_FAN_REG_TCPB(i32 %83, i32 %84)
  %86 = call i32 @iowrite16(i32 %80, i32 %85)
  %87 = load i32, i32* @NPCM7XX_FAN_TINASEL_FANIN_DEFAULT, align 4
  %88 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %89 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @NPCM7XX_FAN_REG_TINASEL(i32 %90, i32 %91)
  %93 = call i32 @iowrite8(i32 %87, i32 %92)
  %94 = load i32, i32* @NPCM7XX_FAN_TINASEL_FANIN_DEFAULT, align 4
  %95 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %96 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @NPCM7XX_FAN_REG_TINBSEL(i32 %97, i32 %98)
  %100 = call i32 @iowrite8(i32 %94, i32 %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %134, %11
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @NPCM7XX_FAN_MAX_CHN_NUM_IN_A_MODULE, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %101
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @NPCM7XX_FAN_MAX_CHN_NUM_IN_A_MODULE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @FAN_DISABLE, align 4
  %112 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %113 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  store i32 %111, i32* %118, align 4
  %119 = load i32, i32* @NPCM7XX_FAN_DEFAULT_PULSE_PER_REVOLUTION, align 4
  %120 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %121 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i32 %119, i32* %126, align 8
  %127 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %128 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %105
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %101

137:                                              ; preds = %101
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %3, align 4
  br label %7

141:                                              ; preds = %7
  %142 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %143 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @clk_get_rate(i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @NPCM7XX_FAN_CLK_PRESCALE, align 4
  %148 = add nsw i32 %147, 1
  %149 = sdiv i32 %146, %148
  %150 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %2, align 8
  %151 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  ret void
}

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCKC(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TIEN(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TICLR(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TPRSC(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TMCTRL(i32, i32) #1

declare dso_local i32 @iowrite16(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCNT1(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCNT2(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCPCFG(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCPA(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCPB(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TINASEL(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TINBSEL(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
