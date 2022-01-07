; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_sparcspkr_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sparcspkr.c_sparcspkr_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sparcspkr_state = type { i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_dev.0* }
%struct.input_dev = type opaque
%struct.input_dev.0 = type { i32 }

@EV_SND = common dso_local global i32 0, align 4
@SND_BELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @sparcspkr_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparcspkr_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sparcspkr_state*, align 8
  %4 = alloca %struct.input_dev.0*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sparcspkr_state* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sparcspkr_state* %6, %struct.sparcspkr_state** %3, align 8
  %7 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %3, align 8
  %8 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %7, i32 0, i32 1
  %9 = load %struct.input_dev.0*, %struct.input_dev.0** %8, align 8
  store %struct.input_dev.0* %9, %struct.input_dev.0** %4, align 8
  %10 = load %struct.sparcspkr_state*, %struct.sparcspkr_state** %3, align 8
  %11 = getelementptr inbounds %struct.sparcspkr_state, %struct.sparcspkr_state* %10, i32 0, i32 0
  %12 = load i32 (%struct.input_dev*, i32, i32, i32)*, i32 (%struct.input_dev*, i32, i32, i32)** %11, align 8
  %13 = load %struct.input_dev.0*, %struct.input_dev.0** %4, align 8
  %14 = bitcast %struct.input_dev.0* %13 to %struct.input_dev*
  %15 = load i32, i32* @EV_SND, align 4
  %16 = load i32, i32* @SND_BELL, align 4
  %17 = call i32 %12(%struct.input_dev* %14, i32 %15, i32 %16, i32 0)
  ret void
}

declare dso_local %struct.sparcspkr_state* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
