; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_trigmeas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_trigmeas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8974 = type { i32, i32, i32, i64 }

@AK8974_INT_CLEAR = common dso_local global i32 0, align 4
@AK8974_CTRL2_INT_EN = common dso_local global i32 0, align 4
@AK8974_CTRL2_DRDY_EN = common dso_local global i32 0, align 4
@AK8974_CTRL2_DRDY_POL = common dso_local global i32 0, align 4
@AK8974_CTRL2 = common dso_local global i32 0, align 4
@AK8974_CTRL3 = common dso_local global i32 0, align 4
@AK8974_CTRL3_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8974*)* @ak8974_trigmeas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8974_trigmeas(%struct.ak8974* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ak8974*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ak8974* %0, %struct.ak8974** %3, align 8
  %8 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %9 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @AK8974_INT_CLEAR, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %4)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %61

17:                                               ; preds = %1
  %18 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %19 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load i32, i32* @AK8974_CTRL2_INT_EN, align 4
  %24 = load i32, i32* @AK8974_CTRL2_DRDY_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AK8974_CTRL2_DRDY_POL, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @AK8974_CTRL2_DRDY_EN, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %30 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @AK8974_CTRL2_DRDY_POL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %22
  %38 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %39 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %38, i32 0, i32 1
  %40 = call i32 @init_completion(i32* %39)
  %41 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %42 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AK8974_CTRL2, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %17
  %54 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %55 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AK8974_CTRL3, align 4
  %58 = load i32, i32* @AK8974_CTRL3_FORCE, align 4
  %59 = load i32, i32* @AK8974_CTRL3_FORCE, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %50, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
