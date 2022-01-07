; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6650.c_max6650_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6650_data = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"maxim,fan-microvolt\00", align 1
@fan_voltage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"maxim,fan-prescale\00", align 1
@prescaler = common dso_local global i32 0, align 4
@MAX6650_REG_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Error reading config register, aborting.\0A\00", align 1
@MAX6650_CFG_V12 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"illegal value for fan_voltage (%d)\0A\00", align 1
@MAX6650_CFG_PRESCALER_MASK = common dso_local global i32 0, align 4
@MAX6650_CFG_PRESCALER_2 = common dso_local global i32 0, align 4
@MAX6650_CFG_PRESCALER_4 = common dso_local global i32 0, align 4
@MAX6650_CFG_PRESCALER_8 = common dso_local global i32 0, align 4
@MAX6650_CFG_PRESCALER_16 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"illegal value for prescaler (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Fan voltage: %dV, prescaler: %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Config write error, aborting.\0A\00", align 1
@MAX6650_REG_SPEED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to read speed register, aborting.\0A\00", align 1
@MAX6650_REG_DAC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed to read DAC register, aborting.\0A\00", align 1
@MAX6650_REG_COUNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Failed to read count register, aborting.\0A\00", align 1
@MAX6650_REG_ALARM_EN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"Failed to read alarm configuration, aborting.\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"maxim,fan-target-rpm\00", align 1
@MAX6650_CFG_MODE_CLOSED_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max6650_data*, %struct.i2c_client*)* @max6650_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6650_init_client(%struct.max6650_data* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max6650_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max6650_data* %0, %struct.max6650_data** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @of_property_read_u32(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %9)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @fan_voltage, align 4
  store i32 %20, i32* %9, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = sdiv i32 %22, 1000000
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @of_property_read_u32(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @prescaler, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* @MAX6650_REG_CONFIG, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %191

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %54 [
    i32 0, label %44
    i32 5, label %45
    i32 12, label %50
  ]

44:                                               ; preds = %42
  br label %58

45:                                               ; preds = %42
  %46 = load i32, i32* @MAX6650_CFG_V12, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %58

50:                                               ; preds = %42
  %51 = load i32, i32* @MAX6650_CFG_V12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %58

54:                                               ; preds = %42
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %50, %45, %44
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %94 [
    i32 0, label %60
    i32 1, label %61
    i32 2, label %66
    i32 4, label %73
    i32 8, label %80
    i32 16, label %87
  ]

60:                                               ; preds = %58
  br label %98

61:                                               ; preds = %58
  %62 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %98

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = load i32, i32* @MAX6650_CFG_PRESCALER_2, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %7, align 4
  br label %98

73:                                               ; preds = %58
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = load i32, i32* @MAX6650_CFG_PRESCALER_4, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %7, align 4
  br label %98

80:                                               ; preds = %58
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = load i32, i32* @MAX6650_CFG_PRESCALER_8, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %7, align 4
  br label %98

87:                                               ; preds = %58
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load i32, i32* @MAX6650_CFG_PRESCALER_16, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %7, align 4
  br label %98

94:                                               ; preds = %58
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %87, %80, %73, %66, %61, %60
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @MAX6650_CFG_V12, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 12, i32 5
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @MAX6650_CFG_PRESCALER_MASK, align 4
  %108 = and i32 %106, %107
  %109 = shl i32 1, %108
  %110 = call i32 @dev_info(%struct.device* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %105, i32 %109)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %112 = load i32, i32* @MAX6650_REG_CONFIG, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %111, i32 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %98
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %191

121:                                              ; preds = %98
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %124 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %126 = load i32, i32* @MAX6650_REG_SPEED, align 4
  %127 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %125, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %191

134:                                              ; preds = %121
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %137 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %139 = load i32, i32* @MAX6650_REG_DAC, align 4
  %140 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %138, i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %3, align 4
  br label %191

147:                                              ; preds = %134
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %150 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %152 = load i32, i32* @MAX6650_REG_COUNT, align 4
  %153 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %151, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %191

160:                                              ; preds = %147
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %163 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %165 = load i32, i32* @MAX6650_REG_ALARM_EN, align 4
  %166 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %164, i32 %165)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %160
  %170 = load %struct.device*, %struct.device** %6, align 8
  %171 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %170, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  %172 = load i32, i32* %7, align 4
  store i32 %172, i32* %3, align 4
  br label %191

173:                                              ; preds = %160
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %176 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  %177 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.device, %struct.device* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @of_property_read_u32(i32 %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32* %11)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %173
  %184 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @max6650_set_target(%struct.max6650_data* %184, i32 %185)
  %187 = load %struct.max6650_data*, %struct.max6650_data** %4, align 8
  %188 = load i32, i32* @MAX6650_CFG_MODE_CLOSED_LOOP, align 4
  %189 = call i32 @max6650_set_operating_mode(%struct.max6650_data* %187, i32 %188)
  br label %190

190:                                              ; preds = %183, %173
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %169, %156, %143, %130, %117, %38
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @max6650_set_target(%struct.max6650_data*, i32) #1

declare dso_local i32 @max6650_set_operating_mode(%struct.max6650_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
