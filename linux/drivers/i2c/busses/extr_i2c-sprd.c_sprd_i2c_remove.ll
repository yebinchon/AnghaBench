; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sprd_i2c = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sprd_i2c*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.sprd_i2c* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.sprd_i2c* %7, %struct.sprd_i2c** %4, align 8
  %8 = load %struct.sprd_i2c*, %struct.sprd_i2c** %4, align 8
  %9 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pm_runtime_get_sync(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.sprd_i2c*, %struct.sprd_i2c** %4, align 8
  %18 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %17, i32 0, i32 2
  %19 = call i32 @i2c_del_adapter(i32* %18)
  %20 = load %struct.sprd_i2c*, %struct.sprd_i2c** %4, align 8
  %21 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  %24 = load %struct.sprd_i2c*, %struct.sprd_i2c** %4, align 8
  %25 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_runtime_put_noidle(i32 %26)
  %28 = load %struct.sprd_i2c*, %struct.sprd_i2c** %4, align 8
  %29 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pm_runtime_disable(i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.sprd_i2c* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
