; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_set_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_set_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca6507_chip = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tca6507_chip*, i32, i32)* @set_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_select(%struct.tca6507_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tca6507_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tca6507_chip* %0, %struct.tca6507_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %60, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %63

15:                                               ; preds = %12
  %16 = load %struct.tca6507_chip*, %struct.tca6507_chip** %4, align 8
  %17 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %15
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %15
  %36 = load %struct.tca6507_chip*, %struct.tca6507_chip** %4, align 8
  %37 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.tca6507_chip*, %struct.tca6507_chip** %4, align 8
  %48 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.tca6507_chip*, %struct.tca6507_chip** %4, align 8
  %56 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %45, %35
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %12

63:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
