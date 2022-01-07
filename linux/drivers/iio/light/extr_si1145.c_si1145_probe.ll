; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i64, i32 }
%struct.si1145_data = type { i32, i32, %struct.TYPE_4__*, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@si1145_part_info = common dso_local global %struct.TYPE_4__* null, align 8
@SI1145_REG_PART_ID = common dso_local global i32 0, align 4
@SI1145_REG_REV_ID = common dso_local global i32 0, align 4
@SI1145_REG_SEQ_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"device ID part %#02hhx rev %#02hhx seq %#02hhx\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"part ID mismatch got %#02hhx, expected %#02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@si1145_trigger_handler = common dso_local global i32 0, align 4
@si1145_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no irq, using polling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si1145_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1145_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.si1145_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %13, i32 24)
  store %struct.iio_dev* %14, %struct.iio_dev** %7, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = icmp ne %struct.iio_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %170

20:                                               ; preds = %2
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call %struct.si1145_data* @iio_priv(%struct.iio_dev* %21)
  store %struct.si1145_data* %22, %struct.si1145_data** %6, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.i2c_client* %23, %struct.iio_dev* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %28 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %27, i32 0, i32 3
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @si1145_part_info, align 8
  %30 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %32
  %34 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %35 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %34, i32 0, i32 2
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %37 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %36, i32 0, i32 3
  %38 = load %struct.i2c_client*, %struct.i2c_client** %37, align 8
  %39 = load i32, i32* @SI1145_REG_PART_ID, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %20
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %170

45:                                               ; preds = %20
  %46 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %47 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %46, i32 0, i32 3
  %48 = load %struct.i2c_client*, %struct.i2c_client** %47, align 8
  %49 = load i32, i32* @SI1145_REG_REV_ID, align 4
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %3, align 4
  br label %170

55:                                               ; preds = %45
  %56 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %57 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %56, i32 0, i32 3
  %58 = load %struct.i2c_client*, %struct.i2c_client** %57, align 8
  %59 = load i32, i32* @SI1145_REG_SEQ_ID, align 4
  %60 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %170

65:                                               ; preds = %55
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_info(i32* %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %74 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %72, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %65
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %84 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %87)
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %170

91:                                               ; preds = %65
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %95 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32* %93, i32** %96, align 8
  %97 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %98 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %103 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %108 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %110 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %115 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %117 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %122 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %124 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %125 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %127 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %126, i32 0, i32 1
  %128 = call i32 @mutex_init(i32* %127)
  %129 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %130 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %129, i32 0, i32 0
  %131 = call i32 @mutex_init(i32* %130)
  %132 = load %struct.si1145_data*, %struct.si1145_data** %6, align 8
  %133 = call i32 @si1145_initialize(%struct.si1145_data* %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %91
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %3, align 4
  br label %170

138:                                              ; preds = %91
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %142 = load i32, i32* @si1145_trigger_handler, align 4
  %143 = call i32 @devm_iio_triggered_buffer_setup(i32* %140, %struct.iio_dev* %141, i32* null, i32 %142, i32* @si1145_buffer_setup_ops)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %3, align 4
  br label %170

148:                                              ; preds = %138
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %155 = call i32 @si1145_probe_trigger(%struct.iio_dev* %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %3, align 4
  br label %170

160:                                              ; preds = %153
  br label %165

161:                                              ; preds = %148
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = call i32 (i32*, i8*, ...) @dev_info(i32* %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %165

165:                                              ; preds = %161, %160
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %169 = call i32 @devm_iio_device_register(i32* %167, %struct.iio_dev* %168)
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %165, %158, %146, %136, %79, %63, %53, %43, %17
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.si1145_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @si1145_initialize(%struct.si1145_data*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @si1145_probe_trigger(%struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
