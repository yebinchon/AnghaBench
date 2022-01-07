; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_of_i2c_get_board_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-of.c_of_i2c_get_board_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.i2c_board_info = type { i32, i32, %struct.device_node*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"of_i2c: modalias failure on %pOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"of_i2c: invalid reg on %pOF\0A\00", align 1
@I2C_TEN_BIT_ADDRESS = common dso_local global i32 0, align 4
@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@I2C_OWN_SLAVE_ADDRESS = common dso_local global i32 0, align 4
@I2C_CLIENT_SLAVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"host-notify\00", align 1
@I2C_CLIENT_HOST_NOTIFY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@I2C_CLIENT_WAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_i2c_get_board_info(%struct.device* %0, %struct.device_node* %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %10 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %11 = call i32 @memset(%struct.i2c_board_info* %10, i32 0, i32 24)
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %14 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @of_modalias_node(%struct.device_node* %12, i32 %15, i32 4)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.device_node* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %91

24:                                               ; preds = %3
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %91

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @I2C_TEN_BIT_ADDRESS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* @I2C_TEN_BIT_ADDRESS, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %45 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %46 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %39, %34
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @I2C_OWN_SLAVE_ADDRESS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32, i32* @I2C_OWN_SLAVE_ADDRESS, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @I2C_CLIENT_SLAVE, align 4
  %60 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %61 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %54, %49
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %67 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %70 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %69, i32 0, i32 2
  store %struct.device_node* %68, %struct.device_node** %70, align 8
  %71 = load %struct.device_node*, %struct.device_node** %6, align 8
  %72 = call i64 @of_property_read_bool(%struct.device_node* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load i32, i32* @I2C_CLIENT_HOST_NOTIFY, align 4
  %76 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %77 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %64
  %81 = load %struct.device_node*, %struct.device_node** %6, align 8
  %82 = call i64 @of_get_property(%struct.device_node* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32, i32* @I2C_CLIENT_WAKE, align 4
  %86 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %87 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %80
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %29, %18
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i64 @of_modalias_node(%struct.device_node*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
