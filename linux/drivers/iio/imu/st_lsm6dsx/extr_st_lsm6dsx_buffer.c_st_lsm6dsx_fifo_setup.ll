; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_fifo_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_fifo_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { %struct.TYPE_6__**, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i64, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.st_sensors_platform_data = type { i64 }
%struct.iio_buffer = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"mode %lx unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ST_LSM6DSX_REG_HLACTIVE_ADDR = common dso_local global i32 0, align 4
@ST_LSM6DSX_REG_HLACTIVE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"drive-open-drain\00", align 1
@ST_LSM6DSX_REG_PP_OD_ADDR = common dso_local global i32 0, align 4
@ST_LSM6DSX_REG_PP_OD_MASK = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@st_lsm6dsx_handler_irq = common dso_local global i32 0, align 4
@st_lsm6dsx_handler_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"lsm6dsx\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to request trigger irq %d\0A\00", align 1
@ST_LSM6DSX_ID_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@st_lsm6dsx_buffer_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_fifo_setup(%struct.st_lsm6dsx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_lsm6dsx_hw*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.st_sensors_platform_data*, align 8
  %6 = alloca %struct.iio_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %3, align 8
  %11 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %12 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %17 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @irq_get_irq_data(i32 %18)
  %20 = call i64 @irqd_get_trigger_type(i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  switch i64 %21, label %24 [
    i64 130, label %22
    i64 128, label %22
    i64 129, label %23
    i64 131, label %23
  ]

22:                                               ; preds = %1, %1
  store i32 0, i32* %8, align 4
  br label %32

23:                                               ; preds = %1, %1
  store i32 1, i32* %8, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %26 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @dev_info(%struct.TYPE_7__* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %167

32:                                               ; preds = %23, %22
  %33 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %34 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ST_LSM6DSX_REG_HLACTIVE_ADDR, align 4
  %37 = load i32, i32* @ST_LSM6DSX_REG_HLACTIVE_MASK, align 4
  %38 = load i32, i32* @ST_LSM6DSX_REG_HLACTIVE_MASK, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @FIELD_PREP(i32 %38, i32 %39)
  %41 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %2, align 4
  br label %167

46:                                               ; preds = %32
  %47 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %48 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.st_sensors_platform_data*
  store %struct.st_sensors_platform_data* %52, %struct.st_sensors_platform_data** %5, align 8
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = icmp ne %struct.device_node* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = call i64 @of_property_read_bool(%struct.device_node* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55, %46
  %60 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %61 = icmp ne %struct.st_sensors_platform_data* %60, null
  br i1 %61, label %62, label %84

62:                                               ; preds = %59
  %63 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %64 = getelementptr inbounds %struct.st_sensors_platform_data, %struct.st_sensors_platform_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %62, %55
  %68 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %69 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ST_LSM6DSX_REG_PP_OD_ADDR, align 4
  %72 = load i32, i32* @ST_LSM6DSX_REG_PP_OD_MASK, align 4
  %73 = load i32, i32* @ST_LSM6DSX_REG_PP_OD_MASK, align 4
  %74 = call i32 @FIELD_PREP(i32 %73, i32 1)
  %75 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %72, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %2, align 4
  br label %167

80:                                               ; preds = %67
  %81 = load i64, i64* @IRQF_SHARED, align 8
  %82 = load i64, i64* %7, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %80, %62, %59
  %85 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %86 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %89 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @st_lsm6dsx_handler_irq, align 4
  %92 = load i32, i32* @st_lsm6dsx_handler_thread, align 4
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @IRQF_ONESHOT, align 8
  %95 = or i64 %93, %94
  %96 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %97 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %87, i32 %90, i32 %91, i32 %92, i64 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.st_lsm6dsx_hw* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %84
  %101 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %102 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %105 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_err(%struct.TYPE_7__* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %2, align 4
  br label %167

109:                                              ; preds = %84
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %163, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @ST_LSM6DSX_ID_MAX, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %166

114:                                              ; preds = %110
  %115 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %116 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %117, i64 %119
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = icmp ne %struct.TYPE_6__* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %114
  br label %163

124:                                              ; preds = %114
  %125 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %126 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %125, i32 0, i32 1
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = call %struct.iio_buffer* @devm_iio_kfifo_allocate(%struct.TYPE_7__* %127)
  store %struct.iio_buffer* %128, %struct.iio_buffer** %6, align 8
  %129 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %130 = icmp ne %struct.iio_buffer* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %167

134:                                              ; preds = %124
  %135 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %136 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %137, i64 %139
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load %struct.iio_buffer*, %struct.iio_buffer** %6, align 8
  %143 = call i32 @iio_device_attach_buffer(%struct.TYPE_6__* %141, %struct.iio_buffer* %142)
  %144 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %145 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %146 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %147, i64 %149
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %144
  store i32 %154, i32* %152, align 8
  %155 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %156 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %157, i64 %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i32* @st_lsm6dsx_buffer_ops, i32** %162, align 8
  br label %163

163:                                              ; preds = %134, %123
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %110

166:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %166, %131, %100, %78, %44, %24
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i32, i32, i32, i64, i8*, %struct.st_lsm6dsx_hw*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local %struct.iio_buffer* @devm_iio_kfifo_allocate(%struct.TYPE_7__*) #1

declare dso_local i32 @iio_device_attach_buffer(%struct.TYPE_6__*, %struct.iio_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
