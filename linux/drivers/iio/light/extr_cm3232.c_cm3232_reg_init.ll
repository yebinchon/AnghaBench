; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3232.c_cm3232_reg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3232.c_cm3232_reg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cm3232_chip = type { i32, %struct.i2c_client*, %struct.TYPE_2__* }
%struct.i2c_client = type { i32 }

@cm3232_als_info_default = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CM3232_REG_ADDR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error reading addr_id\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CM3232_CMD_ALS_DISABLE = common dso_local global i32 0, align 4
@CM3232_CMD_ALS_RESET = common dso_local global i32 0, align 4
@CM3232_REG_ADDR_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Error writing reg_cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm3232_chip*)* @cm3232_reg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3232_reg_init(%struct.cm3232_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm3232_chip*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.cm3232_chip* %0, %struct.cm3232_chip** %3, align 8
  %6 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %7 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %6, i32 0, i32 1
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %10 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %9, i32 0, i32 2
  store %struct.TYPE_2__* @cm3232_als_info_default, %struct.TYPE_2__** %10, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = load i32, i32* @CM3232_REG_ADDR_ID, align 4
  %13 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %18 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %17, i32 0, i32 1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %80

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 255
  %26 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %27 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %25, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %80

35:                                               ; preds = %23
  %36 = load i32, i32* @CM3232_CMD_ALS_DISABLE, align 4
  %37 = load i32, i32* @CM3232_CMD_ALS_RESET, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %40 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @CM3232_REG_ADDR_CMD, align 4
  %43 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %44 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %41, i32 %42, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %51 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %50, i32 0, i32 1
  %52 = load %struct.i2c_client*, %struct.i2c_client** %51, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %80

56:                                               ; preds = %35
  %57 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %58 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %63 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load i32, i32* @CM3232_REG_ADDR_CMD, align 4
  %66 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %67 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %64, i32 %65, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %56
  %73 = load %struct.cm3232_chip*, %struct.cm3232_chip** %3, align 8
  %74 = getelementptr inbounds %struct.cm3232_chip, %struct.cm3232_chip* %73, i32 0, i32 1
  %75 = load %struct.i2c_client*, %struct.i2c_client** %74, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %72, %56
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %49, %32, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
