; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_sensor_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_sensor_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29018_chip = type { i32 }
%struct.device = type { i32 }

@ISL29018_REG_ADD_COMMAND1 = common dso_local global i32 0, align 4
@ISL29018_CMD1_OPMODE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error in setting operating mode err %d\0A\00", align 1
@ISL29018_CONV_TIME_MS = common dso_local global i32 0, align 4
@ISL29018_REG_ADD_DATA_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Error in reading LSB DATA with err %d\0A\00", align 1
@ISL29018_REG_ADD_DATA_MSB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Error in reading MSB DATA with error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MSB 0x%x and LSB 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29018_chip*, i32)* @isl29018_read_sensor_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29018_read_sensor_input(%struct.isl29018_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isl29018_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.isl29018_chip* %0, %struct.isl29018_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %11 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device* @regmap_get_device(i32 %12)
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %15 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ISL29018_REG_ADD_COMMAND1, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ISL29018_CMD1_OPMODE_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = call i32 @regmap_write(i32 %16, i32 %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %66

29:                                               ; preds = %2
  %30 = load i32, i32* @ISL29018_CONV_TIME_MS, align 4
  %31 = call i32 @msleep(i32 %30)
  %32 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %33 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ISL29018_REG_ADD_DATA_LSB, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %7)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %66

44:                                               ; preds = %29
  %45 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %46 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ISL29018_REG_ADD_DATA_MSB, align 4
  %49 = call i32 @regmap_read(i32 %47, i32 %48, i32* %8)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.device*, %struct.device** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %66

57:                                               ; preds = %44
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_vdbg(%struct.device* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %52, %39, %24
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
