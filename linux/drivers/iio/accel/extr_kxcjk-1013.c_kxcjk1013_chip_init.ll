; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxcjk1013_data = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@KXCJK1013_REG_WHO_AM_I = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error reading who_am_i\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"KXCJK1013 Chip Id %x\0A\00", align 1
@STANDBY = common dso_local global i32 0, align 4
@KXCJK1013_REG_CTRL1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error reading reg_ctrl1\0A\00", align 1
@KXCJK1013_REG_CTRL1_BIT_RES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Error reading reg_ctrl\0A\00", align 1
@KXCJK1013_RANGE_4G = common dso_local global i32 0, align 4
@KXCJK1013_REG_DATA_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Error reading reg_data_ctrl\0A\00", align 1
@KXCJK1013_REG_INT_CTRL1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Error reading reg_int_ctrl1\0A\00", align 1
@KXCJK1013_REG_INT_CTRL1_BIT_IEA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Error writing reg_int_ctrl1\0A\00", align 1
@OPERATION = common dso_local global i32 0, align 4
@KXCJK1013_DEFAULT_WAKE_THRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*)* @kxcjk1013_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_chip_init(%struct.kxcjk1013_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kxcjk1013_data*, align 8
  %4 = alloca i32, align 4
  store %struct.kxcjk1013_data* %0, %struct.kxcjk1013_data** %3, align 8
  %5 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %6 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i32, i32* @KXCJK1013_REG_WHO_AM_I, align 4
  %9 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %14 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %21 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %27 = load i32, i32* @STANDBY, align 4
  %28 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %150

33:                                               ; preds = %19
  %34 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %35 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %43 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %150

48:                                               ; preds = %33
  %49 = load i32, i32* @KXCJK1013_REG_CTRL1_BIT_RES, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %53 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %54, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %48
  %61 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %62 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %150

67:                                               ; preds = %48
  %68 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %69 = load i32, i32* @KXCJK1013_RANGE_4G, align 4
  %70 = call i32 @kxcjk1013_set_range(%struct.kxcjk1013_data* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %150

75:                                               ; preds = %67
  %76 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %77 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* @KXCJK1013_REG_DATA_CTRL, align 4
  %80 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %85 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %150

90:                                               ; preds = %75
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %93 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %95 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* @KXCJK1013_REG_INT_CTRL1, align 4
  %98 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %90
  %102 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %103 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %150

108:                                              ; preds = %90
  %109 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %110 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @KXCJK1013_REG_INT_CTRL1_BIT_IEA, align 4
  %115 = load i32, i32* %4, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %4, align 4
  br label %122

117:                                              ; preds = %108
  %118 = load i32, i32* @KXCJK1013_REG_INT_CTRL1_BIT_IEA, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %4, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %124 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %123, i32 0, i32 2
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* @KXCJK1013_REG_INT_CTRL1, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %125, i32 %126, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %122
  %132 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %133 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %132, i32 0, i32 2
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %2, align 4
  br label %150

138:                                              ; preds = %122
  %139 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %140 = load i32, i32* @OPERATION, align 4
  %141 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %139, i32 %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @KXCJK1013_DEFAULT_WAKE_THRES, align 4
  %148 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %3, align 8
  %149 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %146, %144, %131, %101, %83, %73, %60, %41, %31, %12
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @kxcjk1013_set_range(%struct.kxcjk1013_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
