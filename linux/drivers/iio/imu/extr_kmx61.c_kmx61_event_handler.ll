; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmx61_data = type { %struct.TYPE_3__*, %struct.iio_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.iio_dev = type { i32 }

@KMX61_REG_INS1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error reading reg_ins1\0A\00", align 1
@KMX61_REG_INS1_BIT_WUFS = common dso_local global i32 0, align 4
@KMX61_REG_INS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error reading reg_ins2\0A\00", align 1
@KMX61_REG_INS2_BIT_XN = common dso_local global i32 0, align 4
@IIO_ACCEL = common dso_local global i32 0, align 4
@IIO_MOD_X = common dso_local global i32 0, align 4
@IIO_EV_TYPE_THRESH = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@KMX61_REG_INS2_BIT_XP = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@KMX61_REG_INS2_BIT_YN = common dso_local global i32 0, align 4
@IIO_MOD_Y = common dso_local global i32 0, align 4
@KMX61_REG_INS2_BIT_YP = common dso_local global i32 0, align 4
@KMX61_REG_INS2_BIT_ZN = common dso_local global i32 0, align 4
@IIO_MOD_Z = common dso_local global i32 0, align 4
@KMX61_REG_INS2_BIT_ZP = common dso_local global i32 0, align 4
@KMX61_REG_CTRL1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error reading reg_ctrl1\0A\00", align 1
@KMX61_REG_CTRL1_BIT_RES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Error writing reg_ctrl1\0A\00", align 1
@KMX61_REG_INL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Error reading reg_inl\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @kmx61_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_event_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kmx61_data*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.kmx61_data*
  store %struct.kmx61_data* %9, %struct.kmx61_data** %5, align 8
  %10 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %11 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %10, i32 0, i32 1
  %12 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %14 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* @KMX61_REG_INS1, align 4
  %17 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %22 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %125

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @KMX61_REG_INS1_BIT_WUFS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %124

31:                                               ; preds = %26
  %32 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %33 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* @KMX61_REG_INS2, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %41 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %125

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @KMX61_REG_INS2_BIT_XN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = load i32, i32* @IIO_ACCEL, align 4
  %53 = load i32, i32* @IIO_MOD_X, align 4
  %54 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %55 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %56 = call i32 @IIO_MOD_EVENT_CODE(i32 %52, i32 0, i32 %53, i32 %54, i32 %55)
  %57 = call i32 @iio_push_event(%struct.iio_dev* %51, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @KMX61_REG_INS2_BIT_XP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = load i32, i32* @IIO_ACCEL, align 4
  %66 = load i32, i32* @IIO_MOD_X, align 4
  %67 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %68 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %69 = call i32 @IIO_MOD_EVENT_CODE(i32 %65, i32 0, i32 %66, i32 %67, i32 %68)
  %70 = call i32 @iio_push_event(%struct.iio_dev* %64, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @KMX61_REG_INS2_BIT_YN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %78 = load i32, i32* @IIO_ACCEL, align 4
  %79 = load i32, i32* @IIO_MOD_Y, align 4
  %80 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %81 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %82 = call i32 @IIO_MOD_EVENT_CODE(i32 %78, i32 0, i32 %79, i32 %80, i32 %81)
  %83 = call i32 @iio_push_event(%struct.iio_dev* %77, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @KMX61_REG_INS2_BIT_YP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = load i32, i32* @IIO_ACCEL, align 4
  %92 = load i32, i32* @IIO_MOD_Y, align 4
  %93 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %94 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %95 = call i32 @IIO_MOD_EVENT_CODE(i32 %91, i32 0, i32 %92, i32 %93, i32 %94)
  %96 = call i32 @iio_push_event(%struct.iio_dev* %90, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %89, %84
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @KMX61_REG_INS2_BIT_ZN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %104 = load i32, i32* @IIO_ACCEL, align 4
  %105 = load i32, i32* @IIO_MOD_Z, align 4
  %106 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %107 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %108 = call i32 @IIO_MOD_EVENT_CODE(i32 %104, i32 0, i32 %105, i32 %106, i32 %107)
  %109 = call i32 @iio_push_event(%struct.iio_dev* %103, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %102, %97
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @KMX61_REG_INS2_BIT_ZP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %117 = load i32, i32* @IIO_ACCEL, align 4
  %118 = load i32, i32* @IIO_MOD_Z, align 4
  %119 = load i32, i32* @IIO_EV_TYPE_THRESH, align 4
  %120 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %121 = call i32 @IIO_MOD_EVENT_CODE(i32 %117, i32 0, i32 %118, i32 %119, i32 %120)
  %122 = call i32 @iio_push_event(%struct.iio_dev* %116, i32 %121, i32 0)
  br label %123

123:                                              ; preds = %115, %110
  br label %124

124:                                              ; preds = %123, %26
  br label %125

125:                                              ; preds = %124, %39, %20
  %126 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %127 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load i32, i32* @KMX61_REG_CTRL1, align 4
  %130 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %128, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %135 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %133, %125
  %140 = load i32, i32* @KMX61_REG_CTRL1_BIT_RES, align 4
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %144 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = load i32, i32* @KMX61_REG_CTRL1, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %145, i32 %146, i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %139
  %152 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %153 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %152, i32 0, i32 0
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %157

157:                                              ; preds = %151, %139
  %158 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %159 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %158, i32 0, i32 0
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i32, i32* @KMX61_REG_INL, align 4
  %162 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %160, i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %157
  %166 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %167 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %166, i32 0, i32 0
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = call i32 @dev_err(i32* %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %165, %157
  %172 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %172
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iio_push_event(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @IIO_MOD_EVENT_CODE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
