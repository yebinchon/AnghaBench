; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8974 = type { i64, i32 }

@AK8974_CTRL2 = common dso_local global i32 0, align 4
@AK8974_CTRL2_DRDY_EN = common dso_local global i32 0, align 4
@AK8974_CTRL2_INT_EN = common dso_local global i32 0, align 4
@AK8974_CTRL3 = common dso_local global i32 0, align 4
@AK8974_WHOAMI_VALUE_AMI306 = common dso_local global i64 0, align 8
@AMI306_CTRL4 = common dso_local global i32 0, align 4
@AK8974_INT_CTRL = common dso_local global i32 0, align 4
@AK8974_INT_CTRL_POL = common dso_local global i32 0, align 4
@AK8974_PRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8974*)* @ak8974_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8974_configure(%struct.ak8974* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ak8974*, align 8
  %4 = alloca i32, align 4
  store %struct.ak8974* %0, %struct.ak8974** %3, align 8
  %5 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %6 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @AK8974_CTRL2, align 4
  %9 = load i32, i32* @AK8974_CTRL2_DRDY_EN, align 4
  %10 = load i32, i32* @AK8974_CTRL2_INT_EN, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @regmap_write(i32 %7, i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %59

17:                                               ; preds = %1
  %18 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %19 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AK8974_CTRL3, align 4
  %22 = call i32 @regmap_write(i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %59

27:                                               ; preds = %17
  %28 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %29 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AK8974_WHOAMI_VALUE_AMI306, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %35 = load i32, i32* @AMI306_CTRL4, align 4
  %36 = call i32 @ak8974_set_u16_val(%struct.ak8974* %34, i32 %35, i32 41086)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %59

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %44 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AK8974_INT_CTRL, align 4
  %47 = load i32, i32* @AK8974_INT_CTRL_POL, align 4
  %48 = call i32 @regmap_write(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %59

53:                                               ; preds = %42
  %54 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %55 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AK8974_PRESET, align 4
  %58 = call i32 @regmap_write(i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %51, %39, %25, %15
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ak8974_set_u16_val(%struct.ak8974*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
