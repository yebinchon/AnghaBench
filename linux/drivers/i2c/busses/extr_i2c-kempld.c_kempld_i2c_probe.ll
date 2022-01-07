; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.kempld_device_data = type { i32 }
%struct.kempld_i2c_data = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.kempld_device_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kempld_i2c_adapter = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@KEMPLD_I2C_CTRL = common dso_local global i32 0, align 4
@I2C_CTRL_EN = common dso_local global i32 0, align 4
@i2c_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"I2C bus initialized at %dkHz\0A\00", align 1
@bus_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kempld_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kempld_device_data*, align 8
  %5 = alloca %struct.kempld_i2c_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.kempld_device_data* @dev_get_drvdata(i32 %11)
  store %struct.kempld_device_data* %12, %struct.kempld_device_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.kempld_i2c_data* @devm_kzalloc(%struct.TYPE_9__* %14, i32 40, i32 %15)
  store %struct.kempld_i2c_data* %16, %struct.kempld_i2c_data** %5, align 8
  %17 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %18 = icmp ne %struct.kempld_i2c_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %85

22:                                               ; preds = %1
  %23 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %24 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %25 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %24, i32 0, i32 3
  store %struct.kempld_device_data* %23, %struct.kempld_device_data** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %29 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %28, i32 0, i32 1
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %31 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %30, i32 0, i32 2
  %32 = bitcast %struct.TYPE_8__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_8__* @kempld_i2c_adapter to i8*), i64 16, i1 false)
  %33 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %34 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %37 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %39, align 8
  %40 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %41 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %40, i32 0, i32 2
  %42 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %43 = call i32 @i2c_set_adapdata(%struct.TYPE_8__* %41, %struct.kempld_i2c_data* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.kempld_i2c_data* %45)
  %47 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %48 = call i32 @kempld_get_mutex(%struct.kempld_device_data* %47)
  %49 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %50 = load i32, i32* @KEMPLD_I2C_CTRL, align 4
  %51 = call i32 @kempld_read8(%struct.kempld_device_data* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @I2C_CTRL_EN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %22
  %57 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %58 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %22
  %60 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %61 = call i32 @kempld_i2c_device_init(%struct.kempld_i2c_data* %60)
  %62 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %63 = call i32 @kempld_release_mutex(%struct.kempld_device_data* %62)
  %64 = load i32, i32* @i2c_bus, align 4
  %65 = icmp sge i32 %64, -1
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* @i2c_bus, align 4
  %68 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %69 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %73 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %72, i32 0, i32 2
  %74 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_8__* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %85

79:                                               ; preds = %71
  %80 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %5, align 8
  %81 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* @bus_frequency, align 4
  %84 = call i32 @dev_info(%struct.TYPE_9__* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %77, %19
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.kempld_device_data* @dev_get_drvdata(i32) #1

declare dso_local %struct.kempld_i2c_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_8__*, %struct.kempld_i2c_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.kempld_i2c_data*) #1

declare dso_local i32 @kempld_get_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @kempld_i2c_device_init(%struct.kempld_i2c_data*) #1

declare dso_local i32 @kempld_release_mutex(%struct.kempld_device_data*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
