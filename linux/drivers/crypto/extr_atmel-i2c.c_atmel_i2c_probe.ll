; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_atmel_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_atmel_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__*, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.atmel_i2c_client_priv = type { i32, i32, i32, i32, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"I2C_FUNC_I2C not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to read clock-frequency property\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"%d exceeds maximum supported clock frequency (1MHz)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmel_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.atmel_i2c_client_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @I2C_FUNC_I2C, align 4
  %16 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %90

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i64 @i2c_acpi_find_bus_speed(i32* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %23
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @device_property_read_u32(i32* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %9)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %90

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i64, i64* %9, align 8
  %46 = icmp sgt i64 %45, 1000000
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %90

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.atmel_i2c_client_priv* @devm_kmalloc(%struct.device* %54, i32 24, i32 %55)
  store %struct.atmel_i2c_client_priv* %56, %struct.atmel_i2c_client_priv** %6, align 8
  %57 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %58 = icmp ne %struct.atmel_i2c_client_priv* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %90

62:                                               ; preds = %53
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %65 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %64, i32 0, i32 4
  store %struct.i2c_client* %63, %struct.i2c_client** %65, align 8
  %66 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %67 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %66, i32 0, i32 3
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @atmel_i2c_wake_token_sz(i64 %69)
  %71 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %72 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %74 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memset(i32 %75, i32 0, i32 4)
  %77 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %78 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %77, i32 0, i32 0
  %79 = call i32 @atomic_set(i32* %78, i32 0)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %82 = call i32 @i2c_set_clientdata(%struct.i2c_client* %80, %struct.atmel_i2c_client_priv* %81)
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = call i32 @device_sanity_check(%struct.i2c_client* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %62
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %90

89:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %87, %59, %47, %39, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @i2c_acpi_find_bus_speed(i32*) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i64*) #1

declare dso_local %struct.atmel_i2c_client_priv* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atmel_i2c_wake_token_sz(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.atmel_i2c_client_priv*) #1

declare dso_local i32 @device_sanity_check(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
