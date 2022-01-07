; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c___max7301_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c___max7301_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max7301 = type { i32, i32 (i32, i32, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max7301*, i32, i32)* @__max7301_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__max7301_set(%struct.max7301* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max7301*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max7301* %0, %struct.max7301** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 1, %11
  %13 = load %struct.max7301*, %struct.max7301** %5, align 8
  %14 = getelementptr inbounds %struct.max7301, %struct.max7301* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.max7301*, %struct.max7301** %5, align 8
  %18 = getelementptr inbounds %struct.max7301, %struct.max7301* %17, i32 0, i32 1
  %19 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %18, align 8
  %20 = load %struct.max7301*, %struct.max7301** %5, align 8
  %21 = getelementptr inbounds %struct.max7301, %struct.max7301* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add i32 32, %23
  %25 = call i32 %19(i32 %22, i32 %24, i32 1)
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.max7301*, %struct.max7301** %5, align 8
  %31 = getelementptr inbounds %struct.max7301, %struct.max7301* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.max7301*, %struct.max7301** %5, align 8
  %35 = getelementptr inbounds %struct.max7301, %struct.max7301* %34, i32 0, i32 1
  %36 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %35, align 8
  %37 = load %struct.max7301*, %struct.max7301** %5, align 8
  %38 = getelementptr inbounds %struct.max7301, %struct.max7301* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add i32 32, %40
  %42 = call i32 %36(i32 %39, i32 %41, i32 0)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %26, %10
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
