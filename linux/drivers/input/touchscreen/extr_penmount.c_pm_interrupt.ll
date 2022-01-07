; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_penmount.c_pm_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_penmount.c_pm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.pm = type { i8*, i64, i32 (%struct.pm*)* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @pm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.pm* @serio_get_drvdata(%struct.serio* %8)
  store %struct.pm* %9, %struct.pm** %7, align 8
  %10 = load i8, i8* %5, align 1
  %11 = load %struct.pm*, %struct.pm** %7, align 8
  %12 = getelementptr inbounds %struct.pm, %struct.pm* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.pm*, %struct.pm** %7, align 8
  %15 = getelementptr inbounds %struct.pm, %struct.pm* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8 %10, i8* %17, align 1
  %18 = load %struct.pm*, %struct.pm** %7, align 8
  %19 = getelementptr inbounds %struct.pm, %struct.pm* %18, i32 0, i32 2
  %20 = load i32 (%struct.pm*)*, i32 (%struct.pm*)** %19, align 8
  %21 = load %struct.pm*, %struct.pm** %7, align 8
  %22 = call i32 %20(%struct.pm* %21)
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %23
}

declare dso_local %struct.pm* @serio_get_drvdata(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
