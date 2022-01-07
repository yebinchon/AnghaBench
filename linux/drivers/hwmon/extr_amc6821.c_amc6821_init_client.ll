; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_amc6821_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_amc6821_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@EIO = common dso_local global i32 0, align 4
@init = common dso_local global i64 0, align 8
@AMC6821_REG_CONF4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error reading configuration register, aborting.\0A\00", align 1
@AMC6821_CONF4_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Configuration register write error, aborting.\0A\00", align 1
@AMC6821_REG_CONF3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Revision %d\0A\00", align 1
@AMC6821_CONF3_THERM_FAN_EN = common dso_local global i32 0, align 4
@AMC6821_REG_CONF2 = common dso_local global i32 0, align 4
@AMC6821_CONF2_RTFIE = common dso_local global i32 0, align 4
@AMC6821_CONF2_LTOIE = common dso_local global i32 0, align 4
@AMC6821_CONF2_RTOIE = common dso_local global i32 0, align 4
@AMC6821_REG_CONF1 = common dso_local global i32 0, align 4
@AMC6821_CONF1_THERMOVIE = common dso_local global i32 0, align 4
@AMC6821_CONF1_FANIE = common dso_local global i32 0, align 4
@AMC6821_CONF1_START = common dso_local global i32 0, align 4
@pwminv = common dso_local global i64 0, align 8
@AMC6821_CONF1_PWMINV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @amc6821_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amc6821_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @EIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i64, i64* @init, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %146

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = load i32, i32* @AMC6821_REG_CONF4, align 4
  %13 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %147

21:                                               ; preds = %10
  %22 = load i32, i32* @AMC6821_CONF4_MODE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = load i32, i32* @AMC6821_REG_CONF4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %147

35:                                               ; preds = %21
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i32, i32* @AMC6821_REG_CONF3, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %147

46:                                               ; preds = %35
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 15
  %51 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @AMC6821_CONF3_THERM_FAN_EN, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = load i32, i32* @AMC6821_REG_CONF3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %56, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %147

66:                                               ; preds = %46
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = load i32, i32* @AMC6821_REG_CONF2, align 4
  %69 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %147

77:                                               ; preds = %66
  %78 = load i32, i32* @AMC6821_CONF2_RTFIE, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* @AMC6821_CONF2_LTOIE, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* @AMC6821_CONF2_RTOIE, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %91 = load i32, i32* @AMC6821_REG_CONF2, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %77
  %96 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %147

100:                                              ; preds = %77
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = load i32, i32* @AMC6821_REG_CONF1, align 4
  %103 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %101, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %147

111:                                              ; preds = %100
  %112 = load i32, i32* @AMC6821_CONF1_THERMOVIE, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %4, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* @AMC6821_CONF1_FANIE, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %4, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* @AMC6821_CONF1_START, align 4
  %121 = load i32, i32* %4, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %4, align 4
  %123 = load i64, i64* @pwminv, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %111
  %126 = load i32, i32* @AMC6821_CONF1_PWMINV, align 4
  %127 = load i32, i32* %4, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %4, align 4
  br label %134

129:                                              ; preds = %111
  %130 = load i32, i32* @AMC6821_CONF1_PWMINV, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %4, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %125
  %135 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %136 = load i32, i32* @AMC6821_REG_CONF1, align 4
  %137 = load i32, i32* %4, align 4
  %138 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %135, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %147

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %1
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %140, %106, %95, %72, %61, %41, %30, %16
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
