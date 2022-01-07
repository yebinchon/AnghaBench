; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_buffer.c_hts221_allocate_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_buffer.c_hts221_allocate_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hts221_hw = type { %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.iio_dev = type { i32, i32 }
%struct.st_sensors_platform_data = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"mode %lx unsupported, using IRQF_TRIGGER_RISING\0A\00", align 1
@HTS221_REG_DRDY_HL_ADDR = common dso_local global i32 0, align 4
@HTS221_REG_DRDY_HL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"drive-open-drain\00", align 1
@IRQF_SHARED = common dso_local global i64 0, align 8
@HTS221_REG_DRDY_PP_OD_ADDR = common dso_local global i32 0, align 4
@HTS221_REG_DRDY_PP_OD_MASK = common dso_local global i32 0, align 4
@hts221_trigger_handler_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to request trigger irq %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s-trigger\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hts221_trigger_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hts221_allocate_trigger(%struct.hts221_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hts221_hw*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.st_sensors_platform_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hts221_hw* %0, %struct.hts221_hw** %3, align 8
  %11 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %12 = call %struct.iio_dev* @iio_priv_to_dev(%struct.hts221_hw* %11)
  store %struct.iio_dev* %12, %struct.iio_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %14 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %7, align 8
  %18 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %19 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @irq_get_irq_data(i32 %20)
  %22 = call i64 @irqd_get_trigger_type(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  switch i64 %23, label %26 [
    i64 130, label %24
    i64 128, label %24
    i64 129, label %25
    i64 131, label %25
  ]

24:                                               ; preds = %1, %1
  br label %32

25:                                               ; preds = %1, %1
  store i32 1, i32* %5, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %28 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %27, i32 0, i32 1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @dev_info(%struct.TYPE_13__* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i64 128, i64* %9, align 8
  br label %32

32:                                               ; preds = %26, %25, %24
  %33 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %34 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HTS221_REG_DRDY_HL_ADDR, align 4
  %37 = load i32, i32* @HTS221_REG_DRDY_HL_MASK, align 4
  %38 = load i32, i32* @HTS221_REG_DRDY_HL_MASK, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @FIELD_PREP(i32 %38, i32 %39)
  %41 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %2, align 4
  br label %160

46:                                               ; preds = %32
  %47 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %48 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.st_sensors_platform_data*
  store %struct.st_sensors_platform_data* %52, %struct.st_sensors_platform_data** %8, align 8
  %53 = load %struct.device_node*, %struct.device_node** %7, align 8
  %54 = icmp ne %struct.device_node* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.device_node*, %struct.device_node** %7, align 8
  %57 = call i64 @of_property_read_bool(%struct.device_node* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55, %46
  %60 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %8, align 8
  %61 = icmp ne %struct.st_sensors_platform_data* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %8, align 8
  %64 = getelementptr inbounds %struct.st_sensors_platform_data, %struct.st_sensors_platform_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62, %55
  %68 = load i64, i64* @IRQF_SHARED, align 8
  %69 = load i64, i64* %9, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %9, align 8
  store i32 1, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %62, %59
  %72 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %73 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @HTS221_REG_DRDY_PP_OD_ADDR, align 4
  %76 = load i32, i32* @HTS221_REG_DRDY_PP_OD_MASK, align 4
  %77 = load i32, i32* @HTS221_REG_DRDY_PP_OD_MASK, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @FIELD_PREP(i32 %77, i32 %78)
  %80 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %76, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %160

85:                                               ; preds = %71
  %86 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %87 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %90 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @hts221_trigger_handler_thread, align 4
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @IRQF_ONESHOT, align 8
  %95 = or i64 %93, %94
  %96 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %97 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %100 = call i32 @devm_request_threaded_irq(%struct.TYPE_13__* %88, i32 %91, i32* null, i32 %92, i64 %95, i32 %98, %struct.hts221_hw* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %85
  %104 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %105 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %104, i32 0, i32 1
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %108 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_err(%struct.TYPE_13__* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %2, align 4
  br label %160

112:                                              ; preds = %85
  %113 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %114 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %113, i32 0, i32 1
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %117 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.TYPE_12__* @devm_iio_trigger_alloc(%struct.TYPE_13__* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %121 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %120, i32 0, i32 0
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %121, align 8
  %122 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %123 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %122, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = icmp ne %struct.TYPE_12__* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %112
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %160

129:                                              ; preds = %112
  %130 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %131 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %134 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_12__* %132, %struct.iio_dev* %133)
  %135 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %136 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i32* @hts221_trigger_ops, i32** %138, align 8
  %139 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %140 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %139, i32 0, i32 1
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %143 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %142, i32 0, i32 0
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store %struct.TYPE_13__* %141, %struct.TYPE_13__** %146, align 8
  %147 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %148 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %147, i32 0, i32 0
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = call i32 @iio_trigger_get(%struct.TYPE_12__* %149)
  %151 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %152 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %154 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %153, i32 0, i32 1
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load %struct.hts221_hw*, %struct.hts221_hw** %3, align 8
  %157 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %156, i32 0, i32 0
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = call i32 @devm_iio_trigger_register(%struct.TYPE_13__* %155, %struct.TYPE_12__* %158)
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %129, %126, %103, %83, %44
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.hts221_hw*) #1

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_13__*, i32, i32*, i32, i64, i32, %struct.hts221_hw*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local %struct.TYPE_12__* @devm_iio_trigger_alloc(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_12__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_get(%struct.TYPE_12__*) #1

declare dso_local i32 @devm_iio_trigger_register(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
