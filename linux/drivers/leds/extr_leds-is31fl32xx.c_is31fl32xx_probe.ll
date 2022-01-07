; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.is31fl32xx_chipdef = type { i32 }
%struct.of_device_id = type { %struct.is31fl32xx_chipdef* }
%struct.is31fl32xx_priv = type { %struct.is31fl32xx_chipdef*, %struct.i2c_client* }

@of_is31fl32xx_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@leds = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @is31fl32xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl32xx_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.is31fl32xx_chipdef*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.is31fl32xx_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @of_is31fl32xx_match, align 4
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.device* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %7, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %24, align 8
  store %struct.is31fl32xx_chipdef* %25, %struct.is31fl32xx_chipdef** %6, align 8
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @of_get_child_count(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %73

35:                                               ; preds = %22
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %9, align 8
  %38 = load i32, i32* @leds, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @struct_size(%struct.is31fl32xx_priv* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.is31fl32xx_priv* @devm_kzalloc(%struct.device* %36, i32 %40, i32 %41)
  store %struct.is31fl32xx_priv* %42, %struct.is31fl32xx_priv** %9, align 8
  %43 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %9, align 8
  %44 = icmp ne %struct.is31fl32xx_priv* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %73

48:                                               ; preds = %35
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %9, align 8
  %51 = getelementptr inbounds %struct.is31fl32xx_priv, %struct.is31fl32xx_priv* %50, i32 0, i32 1
  store %struct.i2c_client* %49, %struct.i2c_client** %51, align 8
  %52 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %6, align 8
  %53 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %9, align 8
  %54 = getelementptr inbounds %struct.is31fl32xx_priv, %struct.is31fl32xx_priv* %53, i32 0, i32 0
  store %struct.is31fl32xx_chipdef* %52, %struct.is31fl32xx_chipdef** %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %9, align 8
  %57 = call i32 @i2c_set_clientdata(%struct.i2c_client* %55, %struct.is31fl32xx_priv* %56)
  %58 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %9, align 8
  %59 = call i32 @is31fl32xx_init_regs(%struct.is31fl32xx_priv* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %3, align 4
  br label %73

64:                                               ; preds = %48
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %9, align 8
  %67 = call i32 @is31fl32xx_parse_dt(%struct.device* %65, %struct.is31fl32xx_priv* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %70, %62, %45, %32, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_get_child_count(i32) #1

declare dso_local %struct.is31fl32xx_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.is31fl32xx_priv*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.is31fl32xx_priv*) #1

declare dso_local i32 @is31fl32xx_init_regs(%struct.is31fl32xx_priv*) #1

declare dso_local i32 @is31fl32xx_parse_dt(%struct.device*, %struct.is31fl32xx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
