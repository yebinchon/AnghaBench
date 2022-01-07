; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_atbm8830.c_set_agc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_atbm8830.c_set_agc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atbm_state = type { i32 }

@REG_AGC_MIN = common dso_local global i32 0, align 4
@REG_AGC_MAX = common dso_local global i32 0, align 4
@REG_AGC_HOLD_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atbm_state*, i32, i32, i32)* @set_agc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_agc_config(%struct.atbm_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atbm_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atbm_state* %0, %struct.atbm_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %29

16:                                               ; preds = %12, %4
  %17 = load %struct.atbm_state*, %struct.atbm_state** %6, align 8
  %18 = load i32, i32* @REG_AGC_MIN, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @atbm8830_write_reg(%struct.atbm_state* %17, i32 %18, i32 %19)
  %21 = load %struct.atbm_state*, %struct.atbm_state** %6, align 8
  %22 = load i32, i32* @REG_AGC_MAX, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @atbm8830_write_reg(%struct.atbm_state* %21, i32 %22, i32 %23)
  %25 = load %struct.atbm_state*, %struct.atbm_state** %6, align 8
  %26 = load i32, i32* @REG_AGC_HOLD_LOOP, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @atbm8830_write_reg(%struct.atbm_state* %25, i32 %26, i32 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %16, %15
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @atbm8830_write_reg(%struct.atbm_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
