; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-ecc.c_atmel_ecc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-ecc.c_atmel_ecc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.atmel_i2c_client_priv = type { i32 }

@driver_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@atmel_ecdh = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"atmel ecc algorithms registered in /proc/crypto\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @atmel_ecc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ecc_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
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
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = call %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.atmel_i2c_client_priv* %17, %struct.atmel_i2c_client_priv** %6, align 8
  %18 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 0))
  %19 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %20 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %19, i32 0, i32 0
  %21 = call i32 @list_add_tail(i32* %20, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 1))
  %22 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 0))
  %23 = call i32 @crypto_register_kpp(%struct.TYPE_7__* @atmel_ecdh)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %15
  %27 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 0))
  %28 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %29 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %28, i32 0, i32 0
  %30 = call i32 @list_del(i32* %29)
  %31 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @driver_data, i32 0, i32 0))
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @atmel_ecdh, i32 0, i32 0, i32 0), align 4
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %40

36:                                               ; preds = %15
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @atmel_i2c_probe(%struct.i2c_client*, %struct.i2c_device_id*) #1

declare dso_local %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @crypto_register_kpp(%struct.TYPE_7__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
