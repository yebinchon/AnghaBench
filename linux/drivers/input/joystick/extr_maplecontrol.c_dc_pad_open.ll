; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_maplecontrol.c_dc_pad_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_maplecontrol.c_dc_pad_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.dc_pad = type { i32 }

@dc_pad_callback = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MAPLE_FUNC_CONTROLLER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @dc_pad_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_pad_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.dc_pad*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 0
  %6 = call %struct.dc_pad* @dev_get_platdata(i32* %5)
  store %struct.dc_pad* %6, %struct.dc_pad** %3, align 8
  %7 = load %struct.dc_pad*, %struct.dc_pad** %3, align 8
  %8 = getelementptr inbounds %struct.dc_pad, %struct.dc_pad* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @dc_pad_callback, align 4
  %11 = load i32, i32* @HZ, align 4
  %12 = sdiv i32 %11, 20
  %13 = load i32, i32* @MAPLE_FUNC_CONTROLLER, align 4
  %14 = call i32 @maple_getcond_callback(i32 %9, i32 %10, i32 %12, i32 %13)
  ret i32 0
}

declare dso_local %struct.dc_pad* @dev_get_platdata(i32*) #1

declare dso_local i32 @maple_getcond_callback(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
