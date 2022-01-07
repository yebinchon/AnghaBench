; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3952.c_lp3952_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp3952.c_lp3952_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp3952_led_array = type { i32 }

@LP3952_REG_LED_CTRL = common dso_local global i32 0, align 4
@LP3952_REG_PAT_GEN_CTRL = common dso_local global i32 0, align 4
@LP3952_PATRN_LOOP = common dso_local global i32 0, align 4
@LP3952_PATRN_GEN_EN = common dso_local global i32 0, align 4
@LP3952_REG_ENABLES = common dso_local global i32 0, align 4
@LP3952_ACTIVE_MODE = common dso_local global i32 0, align 4
@LP3952_INT_B00ST_LDR = common dso_local global i32 0, align 4
@I46 = common dso_local global i32 0, align 4
@I71 = common dso_local global i32 0, align 4
@I100 = common dso_local global i32 0, align 4
@TT0 = common dso_local global i32 0, align 4
@CET197 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp3952_led_array*)* @lp3952_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3952_configure(%struct.lp3952_led_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp3952_led_array*, align 8
  %4 = alloca i32, align 4
  store %struct.lp3952_led_array* %0, %struct.lp3952_led_array** %3, align 8
  %5 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %3, align 8
  %6 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @LP3952_REG_LED_CTRL, align 4
  %9 = call i32 @lp3952_register_write(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %3, align 8
  %16 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LP3952_REG_PAT_GEN_CTRL, align 4
  %19 = load i32, i32* @LP3952_PATRN_LOOP, align 4
  %20 = load i32, i32* @LP3952_PATRN_GEN_EN, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @lp3952_register_write(i32 %17, i32 %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %48

27:                                               ; preds = %14
  %28 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %3, align 8
  %29 = getelementptr inbounds %struct.lp3952_led_array, %struct.lp3952_led_array* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LP3952_REG_ENABLES, align 4
  %32 = load i32, i32* @LP3952_ACTIVE_MODE, align 4
  %33 = load i32, i32* @LP3952_INT_B00ST_LDR, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @lp3952_register_write(i32 %30, i32 %31, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %48

40:                                               ; preds = %27
  %41 = load %struct.lp3952_led_array*, %struct.lp3952_led_array** %3, align 8
  %42 = load i32, i32* @I46, align 4
  %43 = load i32, i32* @I71, align 4
  %44 = load i32, i32* @I100, align 4
  %45 = load i32, i32* @TT0, align 4
  %46 = load i32, i32* @CET197, align 4
  %47 = call i32 @lp3952_set_pattern_gen_cmd(%struct.lp3952_led_array* %41, i32 0, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %40, %38, %25, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @lp3952_register_write(i32, i32, i32) #1

declare dso_local i32 @lp3952_set_pattern_gen_cmd(%struct.lp3952_led_array*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
