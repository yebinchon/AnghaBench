; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-gw-pld.c_gw_pld_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-gw-pld.c_gw_pld_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.gw_pld = type { i32, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device_node*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@gw_pld_input8 = common dso_local global i32 0, align 4
@gw_pld_get8 = common dso_local global i32 0, align 4
@gw_pld_output8 = common dso_local global i32 0, align 4
@gw_pld_set8 = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"registered Gateworks PLD GPIO device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @gw_pld_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gw_pld_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.gw_pld*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.gw_pld* @devm_kzalloc(%struct.device* %15, i32 72, i32 %16)
  store %struct.gw_pld* %17, %struct.gw_pld** %8, align 8
  %18 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %19 = icmp ne %struct.gw_pld* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %91

23:                                               ; preds = %2
  %24 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %25 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %28 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %32 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 10
  store %struct.device* %30, %struct.device** %33, align 8
  %34 = load %struct.device_node*, %struct.device_node** %7, align 8
  %35 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %36 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 9
  store %struct.device_node* %34, %struct.device_node** %37, align 8
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %40 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 8
  store i32 %38, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @dev_name(%struct.device* %42)
  %44 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %45 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  store i32 %43, i32* %46, align 4
  %47 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %48 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 8, i32* %49, align 8
  %50 = load i32, i32* @gw_pld_input8, align 4
  %51 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %52 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @gw_pld_get8, align 4
  %55 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %56 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @gw_pld_output8, align 4
  %59 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %60 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @gw_pld_set8, align 4
  %63 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %64 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %68 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %67, i32 0, i32 2
  store %struct.i2c_client* %66, %struct.i2c_client** %68, align 8
  %69 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %75 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %74, i32 0, i32 0
  store i32 255, i32* %75, align 8
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %78 = call i32 @i2c_set_clientdata(%struct.i2c_client* %76, %struct.gw_pld* %77)
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %81 = getelementptr inbounds %struct.gw_pld, %struct.gw_pld* %80, i32 0, i32 1
  %82 = load %struct.gw_pld*, %struct.gw_pld** %8, align 8
  %83 = call i32 @devm_gpiochip_add_data(%struct.device* %79, %struct.TYPE_2__* %81, %struct.gw_pld* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %23
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %23
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = call i32 @dev_info(%struct.device* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %86, %20
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.gw_pld* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.gw_pld*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_2__*, %struct.gw_pld*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
