; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_trigger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_core.c_fxas21002c_trigger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxas21002c_data = type { i32, %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.iio_dev = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"INT1\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"using interrupt line INT1\0A\00", align 1
@F_INT_CFG_DRDY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"using interrupt line INT2\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"drive-open-drain\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@F_IPOL = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@fxas21002c_data_rdy_handler = common dso_local global i32 0, align 4
@fxas21002c_data_rdy_thread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"fxas21002c_data_ready\00", align 1
@fxas21002c_trigger_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fxas21002c_data*)* @fxas21002c_trigger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_trigger_probe(%struct.fxas21002c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fxas21002c_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fxas21002c_data* %0, %struct.fxas21002c_data** %3, align 8
  %11 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %12 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.device* @regmap_get_device(i32 %13)
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %5, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %6, align 8
  %21 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %22 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %135

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i32 @of_irq_get_byname(%struct.device_node* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %31 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_info(%struct.device* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %38 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @F_INT_CFG_DRDY, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regmap_field_write(i32 %42, i32 1)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %2, align 4
  br label %135

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_info(%struct.device* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.device_node*, %struct.device_node** %6, align 8
  %53 = call i32 @of_property_read_bool(%struct.device_node* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %53, i32* %8, align 4
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_8__* @devm_iio_trigger_alloc(%struct.device* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %63 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %62, i32 0, i32 1
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %63, align 8
  %64 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %65 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %49
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %135

71:                                               ; preds = %49
  %72 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %73 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @irq_get_irq_data(i32 %74)
  %76 = call i64 @irqd_get_trigger_type(i32 %75)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %71
  %81 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %82 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @F_IPOL, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @regmap_field_write(i32 %86, i32 1)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %2, align 4
  br label %135

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %71
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i64, i64* @IRQF_SHARED, align 8
  %98 = load i64, i64* %7, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %96, %93
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %103 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @fxas21002c_data_rdy_handler, align 4
  %106 = load i32, i32* @fxas21002c_data_rdy_thread, align 4
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %109 = call i32 @devm_request_threaded_irq(%struct.device* %101, i32 %104, i32 %105, i32 %106, i64 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct.iio_dev* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %2, align 4
  br label %135

114:                                              ; preds = %100
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %117 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store %struct.device* %115, %struct.device** %120, align 8
  %121 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %122 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32* @fxas21002c_trigger_ops, i32** %124, align 8
  %125 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %126 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %129 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_8__* %127, %struct.iio_dev* %128)
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load %struct.fxas21002c_data*, %struct.fxas21002c_data** %3, align 8
  %132 = getelementptr inbounds %struct.fxas21002c_data, %struct.fxas21002c_data* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = call i32 @devm_iio_trigger_register(%struct.device* %130, %struct.TYPE_8__* %133)
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %114, %112, %90, %68, %46, %25
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_irq_get_byname(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.TYPE_8__* @devm_iio_trigger_alloc(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i64, i8*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_8__*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_trigger_register(%struct.device*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
