; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_firmware_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_firmware_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.lp55xx_chip = type { i32, %struct.firmware*, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%struct.lp55xx_chip*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"firmware request failed\0A\00", align 1
@LP55XX_ENGINE_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @lp55xx_firmware_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp55xx_firmware_loaded(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lp55xx_chip*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lp55xx_chip*
  store %struct.lp55xx_chip* %9, %struct.lp55xx_chip** %5, align 8
  %10 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %11 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %15 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.firmware*, %struct.firmware** %3, align 8
  %18 = icmp ne %struct.firmware* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %24 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* @LP55XX_ENGINE_LOAD, align 4
  %27 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %28 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %26, i32* %34, align 4
  %35 = load %struct.firmware*, %struct.firmware** %3, align 8
  %36 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %37 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %36, i32 0, i32 1
  store %struct.firmware* %35, %struct.firmware** %37, align 8
  %38 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %39 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32 (%struct.lp55xx_chip*)*, i32 (%struct.lp55xx_chip*)** %41, align 8
  %43 = icmp ne i32 (%struct.lp55xx_chip*)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %22
  %45 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %46 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (%struct.lp55xx_chip*)*, i32 (%struct.lp55xx_chip*)** %48, align 8
  %50 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %51 = call i32 %49(%struct.lp55xx_chip* %50)
  br label %52

52:                                               ; preds = %44, %22
  %53 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %54 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %57 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %56, i32 0, i32 1
  %58 = load %struct.firmware*, %struct.firmware** %57, align 8
  %59 = call i32 @release_firmware(%struct.firmware* %58)
  %60 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %61 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %60, i32 0, i32 1
  store %struct.firmware* null, %struct.firmware** %61, align 8
  br label %62

62:                                               ; preds = %52, %19
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
