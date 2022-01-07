; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_powermate.c_powermate_input_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_powermate.c_powermate_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.powermate_device = type { i32 }

@EV_MSC = common dso_local global i32 0, align 4
@MSC_PULSELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @powermate_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powermate_input_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.powermate_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %18 = call %struct.powermate_device* @input_get_drvdata(%struct.input_dev* %17)
  store %struct.powermate_device* %18, %struct.powermate_device** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EV_MSC, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MSC_PULSELED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = lshr i32 %29, 8
  %31 = and i32 %30, 511
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = lshr i32 %32, 17
  %34 = and i32 %33, 3
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = lshr i32 %35, 19
  %37 = and i32 %36, 1
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %9, align 4
  %39 = lshr i32 %38, 20
  %40 = and i32 %39, 1
  store i32 %40, i32* %15, align 4
  %41 = load %struct.powermate_device*, %struct.powermate_device** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @powermate_pulse_led(%struct.powermate_device* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %26, %22, %4
  ret i32 0
}

declare dso_local %struct.powermate_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @powermate_pulse_led(%struct.powermate_device*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
