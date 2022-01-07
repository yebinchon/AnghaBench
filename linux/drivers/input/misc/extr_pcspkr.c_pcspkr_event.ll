; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcspkr.c_pcspkr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pcspkr.c_pcspkr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@EV_SND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIT_TICK_RATE = common dso_local global i32 0, align 4
@i8253_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @pcspkr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcspkr_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @EV_SND, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %63

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %26 [
    i32 129, label %20
    i32 128, label %25
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1000, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %18, %24
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %63

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 20
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 32767
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @PIT_TICK_RATE, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %32, %29
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @raw_spin_lock_irqsave(i32* @i8253_lock, i64 %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = call i32 @outb_p(i32 182, i32 67)
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 255
  %48 = call i32 @outb_p(i32 %47, i32 66)
  %49 = load i32, i32* %10, align 4
  %50 = lshr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = call i32 @outb(i32 %51, i32 66)
  %53 = call i32 @inb_p(i32 97)
  %54 = or i32 %53, 3
  %55 = call i32 @outb_p(i32 %54, i32 97)
  br label %60

56:                                               ; preds = %39
  %57 = call i32 @inb_p(i32 97)
  %58 = and i32 %57, 252
  %59 = call i32 @outb(i32 %58, i32 97)
  br label %60

60:                                               ; preds = %56, %44
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @raw_spin_unlock_irqrestore(i32* @i8253_lock, i64 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %26, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
