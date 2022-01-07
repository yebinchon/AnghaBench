; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_setup_any_motion_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_setup_any_motion_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmx61_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KMX61_ACC = common dso_local global i32 0, align 4
@KMX61_MAG = common dso_local global i32 0, align 4
@KMX61_ALL_STBY = common dso_local global i32 0, align 4
@KMX61_REG_INC1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error reading reg_inc1\0A\00", align 1
@KMX61_REG_INC1_BIT_IEN = common dso_local global i32 0, align 4
@KMX61_REG_INC1_BIT_WUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error writing reg_inc1\0A\00", align 1
@KMX61_REG_CTRL1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error reading reg_ctrl1\0A\00", align 1
@KMX61_REG_CTRL1_BIT_WUFE = common dso_local global i32 0, align 4
@KMX61_REG_CTRL1_BIT_BTSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Error writing reg_ctrl1\0A\00", align 1
@KMX61_ACT_STBY_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmx61_data*, i32)* @kmx61_setup_any_motion_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_setup_any_motion_interrupt(%struct.kmx61_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmx61_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kmx61_data* %0, %struct.kmx61_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %9 = load i32, i32* @KMX61_ACC, align 4
  %10 = load i32, i32* @KMX61_MAG, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @kmx61_get_mode(%struct.kmx61_data* %8, i32* %6, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %139

17:                                               ; preds = %2
  %18 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %19 = load i32, i32* @KMX61_ALL_STBY, align 4
  %20 = load i32, i32* @KMX61_ACC, align 4
  %21 = load i32, i32* @KMX61_MAG, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @kmx61_set_mode(%struct.kmx61_data* %18, i32 %19, i32 %22, i32 1)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %139

28:                                               ; preds = %17
  %29 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %30 = call i32 @kmx61_chip_update_thresholds(%struct.kmx61_data* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %139

35:                                               ; preds = %28
  %36 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %37 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* @KMX61_REG_INC1, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %45 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %139

50:                                               ; preds = %35
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @KMX61_REG_INC1_BIT_IEN, align 4
  %55 = load i32, i32* @KMX61_REG_INC1_BIT_WUFS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %66

59:                                               ; preds = %50
  %60 = load i32, i32* @KMX61_REG_INC1_BIT_IEN, align 4
  %61 = load i32, i32* @KMX61_REG_INC1_BIT_WUFS, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %59, %53
  %67 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %68 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* @KMX61_REG_INC1, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %69, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %77 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %139

82:                                               ; preds = %66
  %83 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %84 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* @KMX61_REG_CTRL1, align 4
  %87 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %92 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %139

97:                                               ; preds = %82
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @KMX61_REG_CTRL1_BIT_WUFE, align 4
  %102 = load i32, i32* @KMX61_REG_CTRL1_BIT_BTSE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %113

106:                                              ; preds = %97
  %107 = load i32, i32* @KMX61_REG_CTRL1_BIT_WUFE, align 4
  %108 = load i32, i32* @KMX61_REG_CTRL1_BIT_BTSE, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %106, %100
  %114 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %115 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* @KMX61_REG_CTRL1, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %116, i32 %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %124 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %139

129:                                              ; preds = %113
  %130 = load i32, i32* @KMX61_ACT_STBY_BIT, align 4
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load %struct.kmx61_data*, %struct.kmx61_data** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @KMX61_ACC, align 4
  %136 = load i32, i32* @KMX61_MAG, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @kmx61_set_mode(%struct.kmx61_data* %133, i32 %134, i32 %137, i32 1)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %129, %122, %90, %75, %43, %33, %26, %15
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @kmx61_get_mode(%struct.kmx61_data*, i32*, i32) #1

declare dso_local i32 @kmx61_set_mode(%struct.kmx61_data*, i32, i32, i32) #1

declare dso_local i32 @kmx61_chip_update_thresholds(%struct.kmx61_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
