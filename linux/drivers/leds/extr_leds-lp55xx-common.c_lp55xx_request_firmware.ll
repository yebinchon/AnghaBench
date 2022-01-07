; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, %struct.device }
%struct.device = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@lp55xx_firmware_loaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp55xx_chip*)* @lp55xx_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp55xx_request_firmware(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca %struct.lp55xx_chip*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %2, align 8
  %5 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %6 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %11 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i32, i32* @THIS_MODULE, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %19 = load i32, i32* @lp55xx_firmware_loaded, align 4
  %20 = call i32 @request_firmware_nowait(i32 %14, i32 0, i8* %15, %struct.device* %16, i32 %17, %struct.lp55xx_chip* %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, %struct.device*, i32, %struct.lp55xx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
