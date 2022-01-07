; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_thmc50_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_thmc50.c_thmc50_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"thmc50: detect failed, smbus byte data not supported!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"thmc50: Probing for THMC50 at 0x%2X on bus %d\0A\00", align 1
@THMC50_REG_COMPANY_ID = common dso_local global i32 0, align 4
@THMC50_REG_DIE_CODE = common dso_local global i32 0, align 4
@THMC50_REG_CONF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"adm1022\00", align 1
@adm1022_temp3_num = common dso_local global i32 0, align 4
@adm1022_temp3 = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"thmc50\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"thmc50: Detection of THMC50/ADM1022 failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"thmc50: Detected %s (version %x, revision %x)\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @thmc50_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thmc50_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %9, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %118

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %29, align 8
  %31 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %30)
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* @THMC50_REG_COMPANY_ID, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32, i32* @THMC50_REG_DIE_CODE, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load i32, i32* @THMC50_REG_CONF, align 4
  %41 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %42, 192
  br i1 %43, label %48, label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %24
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %118

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 65
  br i1 %53, label %54, label %95

54:                                               ; preds = %51
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %56, align 8
  %58 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %57)
  store i32 %58, i32* %11, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %91, %54
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @adm1022_temp3_num, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %59
  %65 = load i32*, i32** @adm1022_temp3, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %64
  %73 = load i32*, i32** @adm1022_temp3, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, 128
  store i32 %85, i32* %8, align 4
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load i32, i32* @THMC50_REG_CONF, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %86, i32 %87, i32 %88)
  br label %94

90:                                               ; preds = %72, %64
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %12, align 4
  br label %59

94:                                               ; preds = %83, %59
  br label %104

95:                                               ; preds = %51
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 73
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %103

99:                                               ; preds = %95
  %100 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %118

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %94
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %7, align 4
  %107 = lshr i32 %106, 4
  %108 = sub i32 %107, 12
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 15
  %111 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %105, i32 %108, i32 %110)
  %112 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %113 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* @I2C_NAME_SIZE, align 4
  %117 = call i32 @strlcpy(i32 %114, i8* %115, i32 %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %104, %99, %48, %20
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
