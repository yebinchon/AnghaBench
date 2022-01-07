; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-creg-snps.c_creg_gpio_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-creg-snps.c_creg_gpio_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.creg_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64*, i64* }

@MAX_GPIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ngpios must be in [1:%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.creg_gpio*, i32)* @creg_gpio_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creg_gpio_validate(%struct.device* %0, %struct.creg_gpio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.creg_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.creg_gpio* %1, %struct.creg_gpio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %11 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %18 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MAX_GPIO, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %100

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %33 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %31, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30, %27
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %41 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %100

48:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %90, %48
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %52 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %49
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @creg_gpio_validate_pg(%struct.device* %58, %struct.creg_gpio* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %100

66:                                               ; preds = %57
  %67 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %68 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %77 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %75, %84
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %66
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %49

93:                                               ; preds = %49
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 32
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %100

99:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %96, %63, %38, %24
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @creg_gpio_validate_pg(%struct.device*, %struct.creg_gpio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
