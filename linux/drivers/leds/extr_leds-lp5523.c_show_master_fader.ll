; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_show_master_fader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5523.c_show_master_fader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lp55xx_led = type { %struct.lp55xx_chip* }
%struct.lp55xx_chip = type { i32 }

@LP5523_REG_MASTER_FADER_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i32)* @show_master_fader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_master_fader(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lp55xx_led*, align 8
  %10 = alloca %struct.lp55xx_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @to_i2c_client(%struct.device* %13)
  %15 = call %struct.lp55xx_led* @i2c_get_clientdata(i32 %14)
  store %struct.lp55xx_led* %15, %struct.lp55xx_led** %9, align 8
  %16 = load %struct.lp55xx_led*, %struct.lp55xx_led** %9, align 8
  %17 = getelementptr inbounds %struct.lp55xx_led, %struct.lp55xx_led* %16, i32 0, i32 0
  %18 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %17, align 8
  store %struct.lp55xx_chip* %18, %struct.lp55xx_chip** %10, align 8
  %19 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %10, align 8
  %20 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %10, align 8
  %23 = load i64, i64* @LP5523_REG_MASTER_FADER_BASE, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @lp55xx_read(%struct.lp55xx_chip* %22, i64 %27, i32* %12)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %10, align 8
  %30 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %4
  %39 = load i32, i32* %11, align 4
  ret i32 %39
}

declare dso_local %struct.lp55xx_led* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lp55xx_read(%struct.lp55xx_chip*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
