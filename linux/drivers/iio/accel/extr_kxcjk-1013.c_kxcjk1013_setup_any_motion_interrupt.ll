; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_setup_any_motion_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_setup_any_motion_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxcjk1013_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@STANDBY = common dso_local global i32 0, align 4
@KXCJK1013_REG_INT_CTRL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error reading reg_int_ctrl1\0A\00", align 1
@KXCJK1013_REG_INT_CTRL1_BIT_IEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error writing reg_int_ctrl1\0A\00", align 1
@KXCJK1013_REG_CTRL1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error reading reg_ctrl1\0A\00", align 1
@KXCJK1013_REG_CTRL1_BIT_WUFE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Error writing reg_ctrl1\0A\00", align 1
@OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*, i32)* @kxcjk1013_setup_any_motion_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_setup_any_motion_interrupt(%struct.kxcjk1013_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kxcjk1013_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kxcjk1013_data* %0, %struct.kxcjk1013_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %9 = call i32 @kxcjk1013_get_mode(%struct.kxcjk1013_data* %8, i32* %7)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %129

14:                                               ; preds = %2
  %15 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %16 = load i32, i32* @STANDBY, align 4
  %17 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %129

22:                                               ; preds = %14
  %23 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %24 = call i32 @kxcjk1013_chip_update_thresholds(%struct.kxcjk1013_data* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %129

29:                                               ; preds = %22
  %30 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %31 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* @KXCJK1013_REG_INT_CTRL1, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %39 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %129

44:                                               ; preds = %29
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @KXCJK1013_REG_INT_CTRL1_BIT_IEN, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @KXCJK1013_REG_INT_CTRL1_BIT_IEN, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %58 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* @KXCJK1013_REG_INT_CTRL1, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %67 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %129

72:                                               ; preds = %56
  %73 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %74 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %77 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %82 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %129

87:                                               ; preds = %72
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @KXCJK1013_REG_CTRL1_BIT_WUFE, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %99

94:                                               ; preds = %87
  %95 = load i32, i32* @KXCJK1013_REG_CTRL1_BIT_WUFE, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %101 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %102, i32 %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %99
  %109 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %110 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %129

115:                                              ; preds = %99
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @OPERATION, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %121 = load i32, i32* @OPERATION, align 4
  %122 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %120, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %129

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %115
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %125, %108, %80, %65, %37, %27, %20, %12
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @kxcjk1013_get_mode(%struct.kxcjk1013_data*, i32*) #1

declare dso_local i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data*, i32) #1

declare dso_local i32 @kxcjk1013_chip_update_thresholds(%struct.kxcjk1013_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
