; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina2xx.c_ina2xx_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina2xx.c_ina2xx_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ina2xx_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ina2xx_data*, i32, i32)* @ina2xx_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina2xx_get_value(%struct.ina2xx_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ina2xx_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ina2xx_data* %0, %struct.ina2xx_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %49 [
    i32 128, label %9
    i32 132, label %17
    i32 129, label %33
    i32 130, label %39
    i32 131, label %47
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %12 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DIV_ROUND_CLOSEST(i32 %10, i32 %15)
  store i32 %16, i32* %7, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %20 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = lshr i32 %18, %23
  %25 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %26 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = mul i32 %24, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @DIV_ROUND_CLOSEST(i32 %31, i32 1000)
  store i32 %32, i32* %7, align 4
  br label %51

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %36 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul i32 %34, %37
  store i32 %38, i32* %7, align 4
  br label %51

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ina2xx_data*, %struct.ina2xx_data** %4, align 8
  %42 = getelementptr inbounds %struct.ina2xx_data, %struct.ina2xx_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @DIV_ROUND_CLOSEST(i32 %45, i32 1000)
  store i32 %46, i32* %7, align 4
  br label %51

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %7, align 4
  br label %51

49:                                               ; preds = %3
  %50 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %47, %39, %33, %17, %9
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
