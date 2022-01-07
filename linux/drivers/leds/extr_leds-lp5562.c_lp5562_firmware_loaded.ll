; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_firmware_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_firmware_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { %struct.TYPE_2__*, %struct.firmware* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32 }

@LP5562_PROGRAM_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"firmware data size overflow: %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp55xx_chip*)* @lp5562_firmware_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp5562_firmware_loaded(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca %struct.lp55xx_chip*, align 8
  %3 = alloca %struct.firmware*, align 8
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %2, align 8
  %4 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %5 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %4, i32 0, i32 1
  %6 = load %struct.firmware*, %struct.firmware** %5, align 8
  store %struct.firmware* %6, %struct.firmware** %3, align 8
  %7 = load %struct.firmware*, %struct.firmware** %3, align 8
  %8 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LP5562_PROGRAM_LENGTH, align 4
  %11 = mul nsw i32 %10, 2
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %15 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.firmware*, %struct.firmware** %3, align 8
  %19 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %24 = call i32 @lp5562_load_engine(%struct.lp55xx_chip* %23)
  %25 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %26 = load %struct.firmware*, %struct.firmware** %3, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.firmware*, %struct.firmware** %3, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @lp5562_update_firmware(%struct.lp55xx_chip* %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @lp5562_load_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp5562_update_firmware(%struct.lp55xx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
