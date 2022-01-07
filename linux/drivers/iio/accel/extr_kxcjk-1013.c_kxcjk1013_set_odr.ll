; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_set_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_set_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxcjk1013_data = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kx_odr_map = type { i32, i32 }

@KXTF9 = common dso_local global i64 0, align 8
@kxtf9_samp_freq_table = common dso_local global i32 0, align 4
@samp_freq_table = common dso_local global i32 0, align 4
@STANDBY = common dso_local global i32 0, align 4
@KXCJK1013_REG_DATA_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error writing data_ctrl\0A\00", align 1
@KXCJK1013_REG_CTRL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error writing reg_ctrl2\0A\00", align 1
@OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*, i32, i32)* @kxcjk1013_set_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_set_odr(%struct.kxcjk1013_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kxcjk1013_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kx_odr_map*, align 8
  store %struct.kxcjk1013_data* %0, %struct.kxcjk1013_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %12 = call i32 @kxcjk1013_get_mode(%struct.kxcjk1013_data* %11, i32* %9)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %107

17:                                               ; preds = %3
  %18 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %19 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KXTF9, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* @kxtf9_samp_freq_table, align 4
  %25 = load i32, i32* @kxtf9_samp_freq_table, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.kx_odr_map* @kxcjk1013_find_odr_value(i32 %24, i32 %26, i32 %27, i32 %28)
  store %struct.kx_odr_map* %29, %struct.kx_odr_map** %10, align 8
  br label %37

30:                                               ; preds = %17
  %31 = load i32, i32* @samp_freq_table, align 4
  %32 = load i32, i32* @samp_freq_table, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.kx_odr_map* @kxcjk1013_find_odr_value(i32 %31, i32 %33, i32 %34, i32 %35)
  store %struct.kx_odr_map* %36, %struct.kx_odr_map** %10, align 8
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.kx_odr_map*, %struct.kx_odr_map** %10, align 8
  %39 = call i64 @IS_ERR(%struct.kx_odr_map* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.kx_odr_map*, %struct.kx_odr_map** %10, align 8
  %43 = call i32 @PTR_ERR(%struct.kx_odr_map* %42)
  store i32 %43, i32* %4, align 4
  br label %107

44:                                               ; preds = %37
  %45 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %46 = load i32, i32* @STANDBY, align 4
  %47 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %107

52:                                               ; preds = %44
  %53 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %54 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* @KXCJK1013_REG_DATA_CTRL, align 4
  %57 = load %struct.kx_odr_map*, %struct.kx_odr_map** %10, align 8
  %58 = getelementptr inbounds %struct.kx_odr_map, %struct.kx_odr_map* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %55, i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %65 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %107

70:                                               ; preds = %52
  %71 = load %struct.kx_odr_map*, %struct.kx_odr_map** %10, align 8
  %72 = getelementptr inbounds %struct.kx_odr_map, %struct.kx_odr_map* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %75 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %77 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* @KXCJK1013_REG_CTRL2, align 4
  %80 = load %struct.kx_odr_map*, %struct.kx_odr_map** %10, align 8
  %81 = getelementptr inbounds %struct.kx_odr_map, %struct.kx_odr_map* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %78, i32 %79, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %70
  %87 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %88 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %107

93:                                               ; preds = %70
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @OPERATION, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %5, align 8
  %99 = load i32, i32* @OPERATION, align 4
  %100 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %107

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %93
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %103, %86, %63, %50, %41, %15
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @kxcjk1013_get_mode(%struct.kxcjk1013_data*, i32*) #1

declare dso_local %struct.kx_odr_map* @kxcjk1013_find_odr_value(i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(%struct.kx_odr_map*) #1

declare dso_local i32 @PTR_ERR(%struct.kx_odr_map*) #1

declare dso_local i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
