; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_hilkbd.c_hil_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_hilkbd.c_hil_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8, i32 }

@hil_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hil_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hil_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = call zeroext i8 (...) @hil_status()
  store i8 %7, i8* %5, align 1
  %8 = call zeroext i8 (...) @hil_read_data()
  store i8 %8, i8* %6, align 1
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = ashr i32 %10, 4
  switch i32 %11, label %24 [
    i32 5, label %12
    i32 6, label %16
    i32 4, label %20
  ]

12:                                               ; preds = %2
  %13 = load i8, i8* %5, align 1
  %14 = load i8, i8* %6, align 1
  %15 = call i32 @handle_status(i8 zeroext %13, i8 zeroext %14)
  br label %24

16:                                               ; preds = %2
  %17 = load i8, i8* %5, align 1
  %18 = load i8, i8* %6, align 1
  %19 = call i32 @handle_data(i8 zeroext %17, i8 zeroext %18)
  br label %24

20:                                               ; preds = %2
  %21 = load i8, i8* %5, align 1
  store i8 %21, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hil_dev, i32 0, i32 0), align 4
  %22 = load i8, i8* %6, align 1
  store i8 %22, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hil_dev, i32 0, i32 1), align 1
  %23 = call i32 (...) @mb()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hil_dev, i32 0, i32 2), align 4
  br label %24

24:                                               ; preds = %2, %20, %16, %12
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %25
}

declare dso_local zeroext i8 @hil_status(...) #1

declare dso_local zeroext i8 @hil_read_data(...) #1

declare dso_local i32 @handle_status(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @handle_data(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
