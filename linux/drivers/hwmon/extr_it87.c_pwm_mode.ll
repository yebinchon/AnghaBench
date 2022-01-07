; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_pwm_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_pwm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.it87_data = type { i64, i32, i32*, i64* }

@it8603 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.it87_data*, i32)* @pwm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_mode(%struct.it87_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.it87_data*, align 8
  %5 = alloca i32, align 4
  store %struct.it87_data* %0, %struct.it87_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.it87_data*, %struct.it87_data** %4, align 8
  %7 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @it8603, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.it87_data*, %struct.it87_data** %4, align 8
  %16 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %56

23:                                               ; preds = %14, %11, %2
  %24 = load %struct.it87_data*, %struct.it87_data** %4, align 8
  %25 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 2, i32* %3, align 4
  br label %56

34:                                               ; preds = %23
  %35 = load %struct.it87_data*, %struct.it87_data** %4, align 8
  %36 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @it8603, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = icmp sge i32 %41, 3
  br i1 %42, label %43, label %55

43:                                               ; preds = %40, %34
  %44 = load %struct.it87_data*, %struct.it87_data** %4, align 8
  %45 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.it87_data*, %struct.it87_data** %4, align 8
  %52 = call i64 @pwm_to_reg(%struct.it87_data* %51, i32 255)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %56

55:                                               ; preds = %43, %40
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %33, %22
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @pwm_to_reg(%struct.it87_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
