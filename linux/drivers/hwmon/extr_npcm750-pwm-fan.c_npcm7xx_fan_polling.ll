; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_fan_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_fan_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.npcm7xx_pwm_fan_data = type { i32, %struct.TYPE_2__, i32, i64* }
%struct.TYPE_2__ = type { i64 }

@fan_timer = common dso_local global i32 0, align 4
@NPCM7XX_FAN_MAX_MODULE = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TICLR_CLEAR_ALL = common dso_local global i32 0, align 4
@NPCM7XX_FAN_TCNT = common dso_local global i32 0, align 4
@NPCM7XX_FAN_CMPA = common dso_local global i32 0, align 4
@NPCM7XX_FAN_CMPB = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NPCM7XX_FAN_POLL_TIMER_200MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @npcm7xx_fan_polling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm7xx_fan_polling(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.npcm7xx_pwm_fan_data*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @fan_timer, align 4
  %8 = call %struct.npcm7xx_pwm_fan_data* @from_timer(%struct.npcm7xx_pwm_fan_data* %5, %struct.timer_list* %6, i32 %7)
  store %struct.npcm7xx_pwm_fan_data* %8, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %9 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %10 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %69, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NPCM7XX_FAN_MAX_MODULE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = load i32, i32* @NPCM7XX_FAN_TICLR_CLEAR_ALL, align 4
  %18 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %19 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @NPCM7XX_FAN_REG_TICLR(i32 %20, i32 %21)
  %23 = call i32 @iowrite8(i32 %17, i32 %22)
  %24 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %25 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %16
  %34 = load i32, i32* @NPCM7XX_FAN_TCNT, align 4
  %35 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %36 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @NPCM7XX_FAN_REG_TCNT1(i32 %37, i32 %38)
  %40 = call i32 @iowrite16(i32 %34, i32 %39)
  %41 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @NPCM7XX_FAN_CMPA, align 4
  %44 = call i32 @npcm7xx_fan_start_capture(%struct.npcm7xx_pwm_fan_data* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %16
  %46 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %47 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %46, i32 0, i32 3
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %45
  %57 = load i32, i32* @NPCM7XX_FAN_TCNT, align 4
  %58 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %59 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @NPCM7XX_FAN_REG_TCNT2(i32 %60, i32 %61)
  %63 = call i32 @iowrite16(i32 %57, i32 %62)
  %64 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @NPCM7XX_FAN_CMPB, align 4
  %67 = call i32 @npcm7xx_fan_start_capture(%struct.npcm7xx_pwm_fan_data* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %56, %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 4
  store i32 %71, i32* %4, align 4
  br label %12

72:                                               ; preds = %12
  %73 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %74 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %78 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 3
  store i32 %80, i32* %78, align 8
  %81 = load i64, i64* @jiffies, align 8
  %82 = load i32, i32* @NPCM7XX_FAN_POLL_TIMER_200MS, align 4
  %83 = call i64 @msecs_to_jiffies(i32 %82)
  %84 = add nsw i64 %81, %83
  %85 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %86 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %3, align 8
  %89 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %88, i32 0, i32 1
  %90 = call i32 @add_timer(%struct.TYPE_2__* %89)
  ret void
}

declare dso_local %struct.npcm7xx_pwm_fan_data* @from_timer(%struct.npcm7xx_pwm_fan_data*, %struct.timer_list*, i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TICLR(i32, i32) #1

declare dso_local i32 @iowrite16(i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCNT1(i32, i32) #1

declare dso_local i32 @npcm7xx_fan_start_capture(%struct.npcm7xx_pwm_fan_data*, i32, i32) #1

declare dso_local i32 @NPCM7XX_FAN_REG_TCNT2(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
