; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_erase_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_erase_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pidff_device* }
%struct.pidff_device = type { i32*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"starting to erase %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32)* @pidff_erase_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_erase_effect(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pidff_device*, align 8
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pidff_device*, %struct.pidff_device** %10, align 8
  store %struct.pidff_device* %11, %struct.pidff_device** %5, align 8
  %12 = load %struct.pidff_device*, %struct.pidff_device** %5, align 8
  %13 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.pidff_device*, %struct.pidff_device** %5, align 8
  %20 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.pidff_device*, %struct.pidff_device** %5, align 8
  %24 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @hid_dbg(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %29)
  %31 = load %struct.pidff_device*, %struct.pidff_device** %5, align 8
  %32 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hid_hw_wait(i32 %33)
  %35 = load %struct.pidff_device*, %struct.pidff_device** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @pidff_playback_pid(%struct.pidff_device* %35, i32 %36, i32 0)
  %38 = load %struct.pidff_device*, %struct.pidff_device** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @pidff_erase_pid(%struct.pidff_device* %38, i32 %39)
  ret i32 0
}

declare dso_local i32 @hid_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @hid_hw_wait(i32) #1

declare dso_local i32 @pidff_playback_pid(%struct.pidff_device*, i32, i32) #1

declare dso_local i32 @pidff_erase_pid(%struct.pidff_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
