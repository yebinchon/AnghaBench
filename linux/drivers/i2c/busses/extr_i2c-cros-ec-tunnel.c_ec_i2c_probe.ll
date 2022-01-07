; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cros_ec_device = type { i32 }
%struct.ec_i2c_device = type { %struct.TYPE_4__, %struct.device*, %struct.cros_ec_device*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.ec_i2c_device*, i32*, i32, i32 }
%struct.TYPE_3__ = type { %struct.device_node*, %struct.device* }

@.str = private unnamed_addr constant [18 x i8] c"Missing sendrecv\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"google,remote-bus\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't read remote-bus property\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"cros-ec-i2c-tunnel\00", align 1
@ec_i2c_algorithm = common dso_local global i32 0, align 4
@I2C_MAX_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ec_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.cros_ec_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ec_i2c_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.cros_ec_device* @dev_get_drvdata(i32 %17)
  store %struct.cros_ec_device* %18, %struct.cros_ec_device** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %6, align 8
  store %struct.ec_i2c_device* null, %struct.ec_i2c_device** %7, align 8
  %21 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %22 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %101

30:                                               ; preds = %1
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.ec_i2c_device* @devm_kzalloc(%struct.device* %31, i32 72, i32 %32)
  store %struct.ec_i2c_device* %33, %struct.ec_i2c_device** %7, align 8
  %34 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %35 = icmp eq %struct.ec_i2c_device* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %101

39:                                               ; preds = %30
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = call i32 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %101

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %51 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %53 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %54 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %53, i32 0, i32 2
  store %struct.cros_ec_device* %52, %struct.cros_ec_device** %54, align 8
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %57 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %56, i32 0, i32 1
  store %struct.device* %55, %struct.device** %57, align 8
  %58 = load i32, i32* @THIS_MODULE, align 4
  %59 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %60 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %63 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strlcpy(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %67 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %68 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32* @ec_i2c_algorithm, i32** %69, align 8
  %70 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %71 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %72 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store %struct.ec_i2c_device* %70, %struct.ec_i2c_device** %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %77 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store %struct.device* %75, %struct.device** %79, align 8
  %80 = load %struct.device_node*, %struct.device_node** %4, align 8
  %81 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %82 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store %struct.device_node* %80, %struct.device_node** %84, align 8
  %85 = load i32, i32* @I2C_MAX_RETRIES, align 4
  %86 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %87 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %90 = getelementptr inbounds %struct.ec_i2c_device, %struct.ec_i2c_device* %89, i32 0, i32 0
  %91 = call i32 @i2c_add_adapter(%struct.TYPE_4__* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %48
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %2, align 4
  br label %101

96:                                               ; preds = %48
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load %struct.ec_i2c_device*, %struct.ec_i2c_device** %7, align 8
  %99 = call i32 @platform_set_drvdata(%struct.platform_device* %97, %struct.ec_i2c_device* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %94, %44, %36, %25
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.cros_ec_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.ec_i2c_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ec_i2c_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
