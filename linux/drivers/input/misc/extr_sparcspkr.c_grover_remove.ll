; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_grover_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_grover_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32* }
%struct.sparcspkr_state = type { i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_dev.0*, %struct.TYPE_2__ }
%struct.input_dev = type opaque
%struct.input_dev.0 = type { i32 }
%struct.TYPE_2__ = type { %struct.grover_beep_info }
%struct.grover_beep_info = type { i32, i32 }

@EV_SND = common dso_local global i32 0, align 4
@SND_BELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @grover_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grover_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sparcspkr_state*, align 8
  %4 = alloca %struct.grover_beep_info*, align 8
  %5 = alloca %struct.input_dev.0*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.sparcspkr_state* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.sparcspkr_state* %7, %struct.sparcspkr_state** %3, align 8
  %8 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %3, align 8
  %9 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.grover_beep_info* %10, %struct.grover_beep_info** %4, align 8
  %11 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %3, align 8
  %12 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %11, i32 0, i32 1
  %13 = load %struct.input_dev.0*, %struct.input_dev.0** %12, align 8
  store %struct.input_dev.0* %13, %struct.input_dev.0** %5, align 8
  %14 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %3, align 8
  %15 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %14, i32 0, i32 0
  %16 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %15, align 8
  %17 = load %struct.input_dev.0*, %struct.input_dev.0** %5, align 8
  %18 = bitcast %struct.input_dev.0* %17 to %struct.input_dev*
  %19 = load i32, i32* @EV_SND, align 4
  %20 = load i32, i32* @SND_BELL, align 4
  %21 = call i32 %16(%struct.input_dev* %18, i32 %19, i32 %20, i32 0)
  %22 = load %struct.input_dev.0*, %struct.input_dev.0** %5, align 8
  %23 = call i32 @input_unregister_device(%struct.input_dev.0* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load %struct.grover_beep_info*, %struct.grover_beep_info** %4, align 8
  %29 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @of_iounmap(i32* %27, i32 %30, i32 1)
  %32 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load %struct.grover_beep_info*, %struct.grover_beep_info** %4, align 8
  %37 = getelementptr inbounds %struct.grover_beep_info, %struct.grover_beep_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @of_iounmap(i32* %35, i32 %38, i32 2)
  %40 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %3, align 8
  %41 = call i32 @kfree(%struct.sparcspkr_state* %40)
  ret i32 0
}

declare dso_local %struct.sparcspkr_state* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev.0*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.sparcspkr_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
