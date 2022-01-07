; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_sysfs_new_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_sysfs_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_adapter = type { i32, i32 }
%struct.i2c_board_info = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: Missing parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"new_device\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: Invalid device name\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%hi%c\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: Can't parse I2C address\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s: Extra parameters\0A\00", align 1
@I2C_ADDR_OFFSET_TEN_BIT = common dso_local global i32 0, align 4
@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@I2C_ADDR_OFFSET_SLAVE = common dso_local global i32 0, align 4
@I2C_CLIENT_SLAVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: Instantiated device %s at 0x%02hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @i2c_sysfs_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i2c_sysfs_new_device(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.i2c_board_info, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.i2c_adapter* @to_i2c_adapter(%struct.device* %16)
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %10, align 8
  %18 = call i32 @memset(%struct.i2c_board_info* %11, i32 0, i32 12)
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 32)
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %138

28:                                               ; preds = %4
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = load i32, i32* @I2C_NAME_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %138

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i32 %45, i8* %46, i32 %52)
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %13, align 8
  %56 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %57 = call i32 @sscanf(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %56, i8* %14)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %5, align 8
  br label %138

65:                                               ; preds = %43
  %66 = load i32, i32* %15, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i8, i8* %14, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 10
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i64, i64* @EINVAL, align 8
  %76 = sub i64 0, %75
  store i64 %76, i64* %5, align 8
  br label %138

77:                                               ; preds = %68, %65
  %78 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @I2C_ADDR_OFFSET_TEN_BIT, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @I2C_ADDR_OFFSET_TEN_BIT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load i32, i32* @I2C_ADDR_OFFSET_TEN_BIT, align 4
  %86 = xor i32 %85, -1
  %87 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %86
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %91 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %84, %77
  %95 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @I2C_ADDR_OFFSET_SLAVE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load i32, i32* @I2C_ADDR_OFFSET_SLAVE, align 4
  %102 = xor i32 %101, -1
  %103 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @I2C_CLIENT_SLAVE, align 4
  %107 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %100, %94
  %111 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %112 = call %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %111, %struct.i2c_board_info* %11)
  store %struct.i2c_client* %112, %struct.i2c_client** %12, align 8
  %113 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %114 = call i64 @IS_ERR(%struct.i2c_client* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %118 = call i64 @PTR_ERR(%struct.i2c_client* %117)
  store i64 %118, i64* %5, align 8
  br label %138

119:                                              ; preds = %110
  %120 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %121 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %120, i32 0, i32 0
  %122 = call i32 @mutex_lock(i32* %121)
  %123 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %126 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %125, i32 0, i32 1
  %127 = call i32 @list_add_tail(i32* %124, i32* %126)
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %129 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %11, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_info(%struct.device* %131, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %135)
  %137 = load i64, i64* %9, align 8
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %119, %116, %72, %60, %38, %23
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(%struct.device*) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i64 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
