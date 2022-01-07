; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serio_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @IRQ_NONE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.serio*, %struct.serio** %4, align 8
  %11 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.serio*, %struct.serio** %4, align 8
  %15 = getelementptr inbounds %struct.serio, %struct.serio* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i64 @likely(%struct.TYPE_2__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.serio*, %struct.serio** %4, align 8
  %21 = getelementptr inbounds %struct.serio, %struct.serio* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.serio*, i8, i32)**
  %25 = load i32 (%struct.serio*, i8, i32)*, i32 (%struct.serio*, i8, i32)** %24, align 8
  %26 = load %struct.serio*, %struct.serio** %4, align 8
  %27 = load i8, i8* %5, align 1
  %28 = load i32, i32* %6, align 4
  %29 = call i32 %25(%struct.serio* %26, i8 zeroext %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %43

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load %struct.serio*, %struct.serio** %4, align 8
  %35 = getelementptr inbounds %struct.serio, %struct.serio* %34, i32 0, i32 1
  %36 = call i64 @device_is_registered(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.serio*, %struct.serio** %4, align 8
  %40 = call i32 @serio_rescan(%struct.serio* %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %33, %30
  br label %43

43:                                               ; preds = %42, %19
  %44 = load %struct.serio*, %struct.serio** %4, align 8
  %45 = getelementptr inbounds %struct.serio, %struct.serio* %44, i32 0, i32 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(%struct.TYPE_2__*) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @serio_rescan(%struct.serio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
