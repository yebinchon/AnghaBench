; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_thc63lvd1024.c_thc63_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_thc63lvd1024.c_thc63_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thc63_dev = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"oe\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to get \22oe-gpios\22: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to get \22powerdown-gpios\22: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thc63_dev*)* @thc63_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thc63_gpio_init(%struct.thc63_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thc63_dev*, align 8
  store %struct.thc63_dev* %0, %struct.thc63_dev** %3, align 8
  %4 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %5 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %8 = call i8* @devm_gpiod_get_optional(i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %10 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %12 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %18 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %21 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @PTR_ERR(i8* %22)
  %24 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %26 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @PTR_ERR(i8* %27)
  store i32 %28, i32* %2, align 4
  br label %56

29:                                               ; preds = %1
  %30 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %31 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %34 = call i8* @devm_gpiod_get_optional(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %36 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %38 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %29
  %43 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %44 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %47 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  %50 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %52 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %42, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i8* @devm_gpiod_get_optional(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
