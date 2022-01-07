; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_setup_new_data_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_setup_new_data_interrupt.c"
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
@KXCJK1013_REG_CTRL1_BIT_DRDY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Error writing reg_ctrl1\0A\00", align 1
@OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*, i32)* @kxcjk1013_setup_new_data_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_setup_new_data_interrupt(%struct.kxcjk1013_data* %0, i32 %1) #0 {
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
  br label %122

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
  br label %122

22:                                               ; preds = %14
  %23 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %24 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* @KXCJK1013_REG_INT_CTRL1, align 4
  %27 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %32 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %122

37:                                               ; preds = %22
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @KXCJK1013_REG_INT_CTRL1_BIT_IEN, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @KXCJK1013_REG_INT_CTRL1_BIT_IEN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %51 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* @KXCJK1013_REG_INT_CTRL1, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %60 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %122

65:                                               ; preds = %49
  %66 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %67 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %70 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %75 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %122

80:                                               ; preds = %65
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @KXCJK1013_REG_CTRL1_BIT_DRDY, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %92

87:                                               ; preds = %80
  %88 = load i32, i32* @KXCJK1013_REG_CTRL1_BIT_DRDY, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %94 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* @KXCJK1013_REG_CTRL1, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %95, i32 %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %92
  %102 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %103 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %122

108:                                              ; preds = %92
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @OPERATION, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %114 = load i32, i32* @OPERATION, align 4
  %115 = call i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data* %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %122

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %108
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %118, %101, %73, %58, %30, %20, %12
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @kxcjk1013_get_mode(%struct.kxcjk1013_data*, i32*) #1

declare dso_local i32 @kxcjk1013_set_mode(%struct.kxcjk1013_data*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
