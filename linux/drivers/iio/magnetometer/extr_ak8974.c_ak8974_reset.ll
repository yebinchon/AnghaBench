; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8974 = type { i32 }

@AK8974_PWR_ON = common dso_local global i32 0, align 4
@AK8974_CTRL2 = common dso_local global i32 0, align 4
@AK8974_CTRL2_RESDEF = common dso_local global i32 0, align 4
@AK8974_CTRL3 = common dso_local global i32 0, align 4
@AK8974_CTRL3_RESDEF = common dso_local global i32 0, align 4
@AK8974_INT_CTRL = common dso_local global i32 0, align 4
@AK8974_INT_CTRL_RESDEF = common dso_local global i32 0, align 4
@AK8974_PWR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8974*)* @ak8974_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8974_reset(%struct.ak8974* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ak8974*, align 8
  %4 = alloca i32, align 4
  store %struct.ak8974* %0, %struct.ak8974** %3, align 8
  %5 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %6 = load i32, i32* @AK8974_PWR_ON, align 4
  %7 = call i32 @ak8974_set_power(%struct.ak8974* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %14 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AK8974_CTRL2, align 4
  %17 = load i32, i32* @AK8974_CTRL2_RESDEF, align 4
  %18 = call i32 @regmap_write(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %12
  %24 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %25 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AK8974_CTRL3, align 4
  %28 = load i32, i32* @AK8974_CTRL3_RESDEF, align 4
  %29 = call i32 @regmap_write(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %49

34:                                               ; preds = %23
  %35 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %36 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AK8974_INT_CTRL, align 4
  %39 = load i32, i32* @AK8974_INT_CTRL_RESDEF, align 4
  %40 = call i32 @regmap_write(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %34
  %46 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %47 = load i32, i32* @AK8974_PWR_OFF, align 4
  %48 = call i32 @ak8974_set_power(%struct.ak8974* %46, i32 %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %43, %32, %21, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @ak8974_set_power(%struct.ak8974*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
