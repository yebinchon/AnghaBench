; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elo.c_elo_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elo.c_elo_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.elo = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @elo_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elo_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.elo*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.elo* @serio_get_drvdata(%struct.serio* %8)
  store %struct.elo* %9, %struct.elo** %7, align 8
  %10 = load %struct.elo*, %struct.elo** %7, align 8
  %11 = getelementptr inbounds %struct.elo, %struct.elo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %25 [
    i32 0, label %13
    i32 1, label %17
    i32 2, label %17
    i32 3, label %21
  ]

13:                                               ; preds = %3
  %14 = load %struct.elo*, %struct.elo** %7, align 8
  %15 = load i8, i8* %5, align 1
  %16 = call i32 @elo_process_data_10(%struct.elo* %14, i8 zeroext %15)
  br label %25

17:                                               ; preds = %3, %3
  %18 = load %struct.elo*, %struct.elo** %7, align 8
  %19 = load i8, i8* %5, align 1
  %20 = call i32 @elo_process_data_6(%struct.elo* %18, i8 zeroext %19)
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.elo*, %struct.elo** %7, align 8
  %23 = load i8, i8* %5, align 1
  %24 = call i32 @elo_process_data_3(%struct.elo* %22, i8 zeroext %23)
  br label %25

25:                                               ; preds = %3, %21, %17, %13
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local %struct.elo* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @elo_process_data_10(%struct.elo*, i8 zeroext) #1

declare dso_local i32 @elo_process_data_6(%struct.elo*, i8 zeroext) #1

declare dso_local i32 @elo_process_data_3(%struct.elo*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
