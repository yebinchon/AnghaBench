; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @lm90_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_read16(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @lm90_read_reg(%struct.i2c_client* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @lm90_read_reg(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %52

26:                                               ; preds = %18
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @lm90_read_reg(%struct.i2c_client* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @lm90_read_reg(%struct.i2c_client* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %44, %32, %24, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @lm90_read_reg(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
