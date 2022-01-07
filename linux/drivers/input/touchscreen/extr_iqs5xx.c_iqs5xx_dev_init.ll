; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.iqs5xx_private = type { i32 }
%struct.iqs5xx_dev_id_info = type { i64, i32, i32, i32 }

@IQS5XX_PROD_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unrecognized product number: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported project number: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unrecognized project number: %u\0A\00", align 1
@IQS5XX_MAJOR_VER_MIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Unsupported major version: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Unrecognized bootloader status: 0x%02X\0A\00", align 1
@IQS5XX_SYS_CFG0 = common dso_local global i32 0, align 4
@IQS5XX_SETUP_COMPLETE = common dso_local global i64 0, align 8
@IQS5XX_SW_INPUT_EVENT = common dso_local global i64 0, align 8
@IQS5XX_TP_EVENT = common dso_local global i64 0, align 8
@IQS5XX_EVENT_MODE = common dso_local global i64 0, align 8
@IQS5XX_SYS_CFG1 = common dso_local global i32 0, align 4
@IQS5XX_END_COMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @iqs5xx_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iqs5xx_dev_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.iqs5xx_private*, align 8
  %5 = alloca %struct.iqs5xx_dev_id_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [25 x i64], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.iqs5xx_private* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.iqs5xx_private* %10, %struct.iqs5xx_private** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = load i32, i32* @IQS5XX_PROD_NUM, align 4
  %13 = getelementptr inbounds [25 x i64], [25 x i64]* %8, i64 0, i64 1
  %14 = call i32 @iqs5xx_read_burst(%struct.i2c_client* %11, i32 %12, i64* %13, i32 24)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = call i32 @iqs5xx_bl_open(%struct.i2c_client* %18)
  store i32 %19, i32* %2, align 4
  br label %159

20:                                               ; preds = %1
  %21 = getelementptr inbounds [25 x i64], [25 x i64]* %8, i64 0, i64 0
  store i64 0, i64* %21, align 16
  %22 = getelementptr inbounds [25 x i64], [25 x i64]* %8, i64 0, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [25 x i64], [25 x i64]* %8, i64 0, i64 %27
  %29 = bitcast i64* %28 to %struct.iqs5xx_dev_id_info*
  store %struct.iqs5xx_dev_id_info* %29, %struct.iqs5xx_dev_id_info** %5, align 8
  %30 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %31 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @be16_to_cpu(i32 %32)
  switch i32 %33, label %35 [
    i32 131, label %34
    i32 130, label %34
    i32 132, label %34
  ]

34:                                               ; preds = %20, %20, %20
  br label %45

35:                                               ; preds = %20
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %39 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %159

45:                                               ; preds = %34
  %46 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %47 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be16_to_cpu(i32 %48)
  switch i32 %49, label %61 [
    i32 129, label %50
    i32 128, label %60
  ]

50:                                               ; preds = %45
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %54 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be16_to_cpu(i32 %55)
  %57 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = call i32 @iqs5xx_bl_open(%struct.i2c_client* %58)
  store i32 %59, i32* %2, align 4
  br label %159

60:                                               ; preds = %45
  br label %71

61:                                               ; preds = %45
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %65 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be16_to_cpu(i32 %66)
  %68 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %159

71:                                               ; preds = %60
  %72 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %73 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IQS5XX_MAJOR_VER_MIN, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %81 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %86 = call i32 @iqs5xx_bl_open(%struct.i2c_client* %85)
  store i32 %86, i32* %2, align 4
  br label %159

87:                                               ; preds = %71
  %88 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %89 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %92 [
    i32 134, label %91
    i32 133, label %91
  ]

91:                                               ; preds = %87, %87
  br label %101

92:                                               ; preds = %87
  %93 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %96 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %159

101:                                              ; preds = %91
  %102 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %103 = call i32 @iqs5xx_axis_init(%struct.i2c_client* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %159

108:                                              ; preds = %101
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = load i32, i32* @IQS5XX_SYS_CFG0, align 4
  %111 = call i32 @iqs5xx_read_byte(%struct.i2c_client* %109, i32 %110, i64* %7)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %159

116:                                              ; preds = %108
  %117 = load i64, i64* @IQS5XX_SETUP_COMPLETE, align 8
  %118 = load i64, i64* %7, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* @IQS5XX_SW_INPUT_EVENT, align 8
  %121 = xor i64 %120, -1
  %122 = load i64, i64* %7, align 8
  %123 = and i64 %122, %121
  store i64 %123, i64* %7, align 8
  %124 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %125 = load i32, i32* @IQS5XX_SYS_CFG0, align 4
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @iqs5xx_write_byte(%struct.i2c_client* %124, i32 %125, i64 %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %159

132:                                              ; preds = %116
  %133 = load i64, i64* @IQS5XX_TP_EVENT, align 8
  %134 = load i64, i64* @IQS5XX_EVENT_MODE, align 8
  %135 = or i64 %133, %134
  store i64 %135, i64* %7, align 8
  %136 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %137 = load i32, i32* @IQS5XX_SYS_CFG1, align 4
  %138 = load i64, i64* %7, align 8
  %139 = call i32 @iqs5xx_write_byte(%struct.i2c_client* %136, i32 %137, i64 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %159

144:                                              ; preds = %132
  %145 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %146 = load i32, i32* @IQS5XX_END_COMM, align 4
  %147 = call i32 @iqs5xx_write_byte(%struct.i2c_client* %145, i32 %146, i64 0)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %159

152:                                              ; preds = %144
  %153 = load %struct.iqs5xx_dev_id_info*, %struct.iqs5xx_dev_id_info** %5, align 8
  %154 = getelementptr inbounds %struct.iqs5xx_dev_id_info, %struct.iqs5xx_dev_id_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %4, align 8
  %157 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = call i32 @msleep(i32 100)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %152, %150, %142, %130, %114, %106, %92, %77, %61, %50, %35, %17
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.iqs5xx_private* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @iqs5xx_read_burst(%struct.i2c_client*, i32, i64*, i32) #1

declare dso_local i32 @iqs5xx_bl_open(%struct.i2c_client*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iqs5xx_axis_init(%struct.i2c_client*) #1

declare dso_local i32 @iqs5xx_read_byte(%struct.i2c_client*, i32, i64*) #1

declare dso_local i32 @iqs5xx_write_byte(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
