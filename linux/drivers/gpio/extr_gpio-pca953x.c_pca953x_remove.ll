; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pca953x_platform_data = type { i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 }
%struct.i2c_client.0 = type opaque
%struct.pca953x_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"teardown failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @pca953x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca953x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.pca953x_platform_data*, align 8
  %4 = alloca %struct.pca953x_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call %struct.pca953x_platform_data* @dev_get_platdata(i32* %7)
  store %struct.pca953x_platform_data* %8, %struct.pca953x_platform_data** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = call %struct.pca953x_chip* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.pca953x_chip* %10, %struct.pca953x_chip** %4, align 8
  %11 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %3, align 8
  %12 = icmp ne %struct.pca953x_platform_data* %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %3, align 8
  %15 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %14, i32 0, i32 0
  %16 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.i2c_client.0*, i32, i32, i32)* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %3, align 8
  %20 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %19, i32 0, i32 0
  %21 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %20, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = bitcast %struct.i2c_client* %22 to %struct.i2c_client.0*
  %24 = load %struct.pca953x_chip*, %struct.pca953x_chip** %4, align 8
  %25 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pca953x_chip*, %struct.pca953x_chip** %4, align 8
  %29 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %3, align 8
  %33 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %21(%struct.i2c_client.0* %23, i32 %27, i32 %31, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %18
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %18
  br label %45

44:                                               ; preds = %13, %1
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load %struct.pca953x_chip*, %struct.pca953x_chip** %4, align 8
  %47 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regulator_disable(i32 %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.pca953x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.pca953x_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
