; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha204a.c_atmel_sha204a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha204a.c_atmel_sha204a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.atmel_i2c_client_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@atmel_sha204a_rng_read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to register RNG (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @atmel_sha204a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha204a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.atmel_i2c_client_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %10 = call i32 @atmel_i2c_probe(%struct.i2c_client* %8, %struct.i2c_device_id* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = call %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.atmel_i2c_client_priv* %17, %struct.atmel_i2c_client_priv** %6, align 8
  %18 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %19 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %18, i32 0, i32 0
  %20 = call i32 @memset(%struct.TYPE_3__* %19, i32 0, i32 12)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 @dev_name(i32* %22)
  %24 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %25 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @atmel_sha204a_rng_read, align 4
  %28 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %29 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %32 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 1024, i32* %33, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %37 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %36, i32 0, i32 0
  %38 = call i32 @devm_hwrng_register(i32* %35, %struct.TYPE_3__* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %15
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %15
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @atmel_i2c_probe(%struct.i2c_client*, %struct.i2c_device_id*) #1

declare dso_local %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @devm_hwrng_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
