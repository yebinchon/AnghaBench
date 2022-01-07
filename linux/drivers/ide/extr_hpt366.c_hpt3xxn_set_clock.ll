; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_hpt366.c_hpt3xxn_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_hpt366.c_hpt3xxn_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @hpt3xxn_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt3xxn_set_clock(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add i64 %10, 107
  %12 = call i32 @inb(i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 127
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %55

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 99
  %21 = call i32 @outb(i32 128, i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 103
  %24 = call i32 @outb(i32 128, i64 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 107
  %28 = call i32 @outb(i32 %25, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 105
  %31 = call i32 @outb(i32 192, i64 %30)
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 96
  %34 = call i32 @inb(i64 %33)
  %35 = or i32 %34, 50
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 96
  %38 = call i32 @outb(i32 %35, i64 %37)
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 100
  %41 = call i32 @inb(i64 %40)
  %42 = or i32 %41, 50
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 100
  %45 = call i32 @outb(i32 %42, i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 105
  %48 = call i32 @outb(i32 0, i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 99
  %51 = call i32 @outb(i32 0, i64 %50)
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 103
  %54 = call i32 @outb(i32 0, i64 %53)
  br label %55

55:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
