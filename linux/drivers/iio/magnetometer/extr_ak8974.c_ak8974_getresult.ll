; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_getresult.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_getresult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8974 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AK8974_INT_SRC = common dso_local global i32 0, align 4
@AK8974_INT_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"range overflow in sensor\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@AK8974_DATA_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8974*, i32*)* @ak8974_getresult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8974_getresult(%struct.ak8974* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ak8974*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ak8974* %0, %struct.ak8974** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ak8974*, %struct.ak8974** %4, align 8
  %9 = call i32 @ak8974_await_drdy(%struct.ak8974* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.ak8974*, %struct.ak8974** %4, align 8
  %16 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AK8974_INT_SRC, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AK8974_INT_RANGE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.ak8974*, %struct.ak8974** %4, align 8
  %31 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ERANGE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %24
  %38 = load %struct.ak8974*, %struct.ak8974** %4, align 8
  %39 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AK8974_DATA_X, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @regmap_bulk_read(i32 %40, i32 %41, i32* %42, i32 6)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %46, %29, %22, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ak8974_await_drdy(%struct.ak8974*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
