; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cy8ctmg110_ts.c_cy8ctmg110_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cy8ctmg110_ts.c_cy8ctmg110_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cy8ctmg110 = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @cy8ctmg110_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy8ctmg110_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cy8ctmg110*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.cy8ctmg110* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.cy8ctmg110* %5, %struct.cy8ctmg110** %3, align 8
  %6 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %7 = call i32 @cy8ctmg110_set_sleepmode(%struct.cy8ctmg110* %6, i32 1)
  %8 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %9 = call i32 @cy8ctmg110_power(%struct.cy8ctmg110* %8, i32 0)
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.cy8ctmg110* %13)
  %15 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %16 = getelementptr inbounds %struct.cy8ctmg110, %struct.cy8ctmg110* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @input_unregister_device(i32 %17)
  %19 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %20 = getelementptr inbounds %struct.cy8ctmg110, %struct.cy8ctmg110* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @gpio_free(i64 %21)
  %23 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %24 = getelementptr inbounds %struct.cy8ctmg110, %struct.cy8ctmg110* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %29 = getelementptr inbounds %struct.cy8ctmg110, %struct.cy8ctmg110* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @gpio_free(i64 %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %34 = call i32 @kfree(%struct.cy8ctmg110* %33)
  ret i32 0
}

declare dso_local %struct.cy8ctmg110* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cy8ctmg110_set_sleepmode(%struct.cy8ctmg110*, i32) #1

declare dso_local i32 @cy8ctmg110_power(%struct.cy8ctmg110*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.cy8ctmg110*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @gpio_free(i64) #1

declare dso_local i32 @kfree(%struct.cy8ctmg110*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
