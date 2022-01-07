; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nomadik-ske-keypad.c_ske_keypad_set_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_nomadik-ske-keypad.c_ske_keypad_set_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ske_keypad = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ske_keypad*, i64, i32, i32)* @ske_keypad_set_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ske_keypad_set_bits(%struct.ske_keypad* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ske_keypad*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ske_keypad* %0, %struct.ske_keypad** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ske_keypad*, %struct.ske_keypad** %5, align 8
  %11 = getelementptr inbounds %struct.ske_keypad, %struct.ske_keypad* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ske_keypad*, %struct.ske_keypad** %5, align 8
  %14 = getelementptr inbounds %struct.ske_keypad, %struct.ske_keypad* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.ske_keypad*, %struct.ske_keypad** %5, align 8
  %28 = getelementptr inbounds %struct.ske_keypad, %struct.ske_keypad* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.ske_keypad*, %struct.ske_keypad** %5, align 8
  %34 = getelementptr inbounds %struct.ske_keypad, %struct.ske_keypad* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
