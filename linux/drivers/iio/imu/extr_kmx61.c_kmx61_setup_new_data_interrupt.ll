; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_setup_new_data_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_setup_new_data_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmx61_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KMX61_ACC = common dso_local global i32 0, align 4
@KMX61_MAG = common dso_local global i32 0, align 4
@KMX61_ALL_STBY = common dso_local global i32 0, align 4
@KMX61_REG_INC1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error reading reg_ctrl1\0A\00", align 1
@KMX61_REG_INC1_BIT_IEN = common dso_local global i32 0, align 4
@KMX61_REG_INC1_BIT_DRDYA = common dso_local global i32 0, align 4
@KMX61_REG_INC1_BIT_DRDYM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error writing reg_int_ctrl1\0A\00", align 1
@KMX61_REG_CTRL1 = common dso_local global i32 0, align 4
@KMX61_REG_CTRL1_BIT_DRDYE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error writing reg_ctrl1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmx61_data*, i32, i32)* @kmx61_setup_new_data_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_setup_new_data_interrupt(%struct.kmx61_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kmx61_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kmx61_data* %0, %struct.kmx61_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %11 = load i32, i32* @KMX61_ACC, align 4
  %12 = load i32, i32* @KMX61_MAG, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @kmx61_get_mode(%struct.kmx61_data* %10, i32* %8, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %161

19:                                               ; preds = %3
  %20 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %21 = load i32, i32* @KMX61_ALL_STBY, align 4
  %22 = load i32, i32* @KMX61_ACC, align 4
  %23 = load i32, i32* @KMX61_MAG, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @kmx61_set_mode(%struct.kmx61_data* %20, i32 %21, i32 %24, i32 1)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %161

30:                                               ; preds = %19
  %31 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %32 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* @KMX61_REG_INC1, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %40 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %161

45:                                               ; preds = %30
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i32, i32* @KMX61_REG_INC1_BIT_IEN, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @KMX61_ACC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @KMX61_REG_INC1_BIT_DRDYA, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @KMX61_MAG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @KMX61_REG_INC1_BIT_DRDYM, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %60
  br label %95

70:                                               ; preds = %45
  %71 = load i32, i32* @KMX61_REG_INC1_BIT_IEN, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @KMX61_ACC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load i32, i32* @KMX61_REG_INC1_BIT_DRDYA, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %79, %70
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @KMX61_MAG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* @KMX61_REG_INC1_BIT_DRDYM, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %69
  %96 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %97 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* @KMX61_REG_INC1, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %98, i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %106 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %4, align 4
  br label %161

111:                                              ; preds = %95
  %112 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %113 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* @KMX61_REG_CTRL1, align 4
  %116 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %114, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %121 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %161

126:                                              ; preds = %111
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* @KMX61_REG_CTRL1_BIT_DRDYE, align 4
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %138

133:                                              ; preds = %126
  %134 = load i32, i32* @KMX61_REG_CTRL1_BIT_DRDYE, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %9, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %133, %129
  %139 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %140 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i32, i32* @KMX61_REG_CTRL1, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %141, i32 %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %138
  %148 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %149 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %148, i32 0, i32 0
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %4, align 4
  br label %161

154:                                              ; preds = %138
  %155 = load %struct.kmx61_data*, %struct.kmx61_data** %5, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @KMX61_ACC, align 4
  %158 = load i32, i32* @KMX61_MAG, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @kmx61_set_mode(%struct.kmx61_data* %155, i32 %156, i32 %159, i32 1)
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %154, %147, %119, %104, %38, %28, %17
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @kmx61_get_mode(%struct.kmx61_data*, i32*, i32) #1

declare dso_local i32 @kmx61_set_mode(%struct.kmx61_data*, i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
