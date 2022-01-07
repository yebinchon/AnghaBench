; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5521.c_lp5521_firmware_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5521.c_lp5521_firmware_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { %struct.TYPE_2__*, %struct.firmware* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i64, i32 }

@LP5521_PROGRAM_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"firmware data size overflow: %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp55xx_chip*)* @lp5521_firmware_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp5521_firmware_loaded(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca %struct.lp55xx_chip*, align 8
  %3 = alloca %struct.firmware*, align 8
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %2, align 8
  %4 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %5 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %4, i32 0, i32 1
  %6 = load %struct.firmware*, %struct.firmware** %5, align 8
  store %struct.firmware* %6, %struct.firmware** %3, align 8
  %7 = load %struct.firmware*, %struct.firmware** %3, align 8
  %8 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LP5521_PROGRAM_LENGTH, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %14 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.firmware*, %struct.firmware** %3, align 8
  %18 = getelementptr inbounds %struct.firmware, %struct.firmware* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %23 = call i32 @lp5521_load_engine(%struct.lp55xx_chip* %22)
  %24 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %2, align 8
  %25 = load %struct.firmware*, %struct.firmware** %3, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.firmware*, %struct.firmware** %3, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @lp5521_update_program_memory(%struct.lp55xx_chip* %24, i32 %27, i64 %30)
  br label %32

32:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @lp5521_load_engine(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp5521_update_program_memory(%struct.lp55xx_chip*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
