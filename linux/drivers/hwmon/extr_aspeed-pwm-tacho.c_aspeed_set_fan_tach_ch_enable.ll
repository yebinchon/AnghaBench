; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_set_fan_tach_ch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_set_fan_tach_ch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@ASPEED_PTCR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, i32, i32)* @aspeed_set_fan_tach_ch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_set_fan_tach_ch_enable(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.regmap*, %struct.regmap** %4, align 8
  %8 = load i32, i32* @ASPEED_PTCR_CTRL, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ASPEED_PTCR_CTRL_FAN_NUM_EN(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ASPEED_PTCR_CTRL_FAN_NUM_EN(i32 %14)
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ 0, %16 ]
  %19 = call i32 @regmap_update_bits(%struct.regmap* %7, i32 %8, i32 %10, i32 %18)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @ASPEED_PTCR_CTRL_FAN_NUM_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
