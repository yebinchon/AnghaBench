; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_fan_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_fan_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_data = type { %struct.pmbus_driver_info* }
%struct.pmbus_driver_info = type { i32, i32* }

@pmbus_fan_registers = common dso_local global i32* null, align 8
@pmbus_fan_flags = common dso_local global i32* null, align 8
@pmbus_fan_config_registers = common dso_local global i32* null, align 8
@PB_FAN_1_INSTALLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@PSC_FAN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pmbus_fan_command_registers = common dso_local global i32* null, align 8
@pmbus_fan_status_flags = common dso_local global i32* null, align 8
@pmbus_fan_status_registers = common dso_local global i32* null, align 8
@PB_STATUS_FAN34_BASE = common dso_local global i32 0, align 4
@PB_STATUS_FAN_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@PB_FAN_FAN1_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@PB_FAN_FAN1_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_data*)* @pmbus_add_fan_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_add_fan_attributes(%struct.i2c_client* %0, %struct.pmbus_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.pmbus_data*, align 8
  %6 = alloca %struct.pmbus_driver_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.pmbus_data* %1, %struct.pmbus_data** %5, align 8
  %13 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %14 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %13, i32 0, i32 0
  %15 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %14, align 8
  store %struct.pmbus_driver_info* %15, %struct.pmbus_driver_info** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %184, %2
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %19 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %187

22:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %180, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** @pmbus_fan_registers, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %183

28:                                               ; preds = %23
  %29 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %30 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @pmbus_fan_flags, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %35, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %28
  br label %183

44:                                               ; preds = %28
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** @pmbus_fan_registers, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @pmbus_check_word_register(%struct.i2c_client* %45, i32 %46, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %183

55:                                               ; preds = %44
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** @pmbus_fan_config_registers, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @_pmbus_read_byte_data(%struct.i2c_client* %56, i32 %57, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @PB_FAN_1_INSTALLED, align 4
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 1
  %71 = mul nsw i32 %70, 4
  %72 = ashr i32 %68, %71
  %73 = and i32 %67, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %66, %55
  br label %180

76:                                               ; preds = %66
  %77 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** @pmbus_fan_registers, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PSC_FAN, align 4
  %86 = call i32* @pmbus_add_sensor(%struct.pmbus_data* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79, i32 %84, i32 %85, i32 1, i32 1, i32 1)
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %188

91:                                               ; preds = %76
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32*, i32** @pmbus_fan_command_registers, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @pmbus_check_word_register(%struct.i2c_client* %92, i32 %93, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %91
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @pmbus_add_fan_ctrl(%struct.i2c_client* %102, %struct.pmbus_data* %103, i32 %104, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %188

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %91
  %115 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %116 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** @pmbus_fan_status_flags, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %121, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %177

129:                                              ; preds = %114
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32*, i32** @pmbus_fan_status_registers, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %130, i32 %131, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %177

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* @PB_STATUS_FAN34_BASE, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %12, align 4
  br label %150

146:                                              ; preds = %139
  %147 = load i32, i32* @PB_STATUS_FAN_BASE, align 4
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %146, %142
  %151 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @PB_FAN_FAN1_WARNING, align 4
  %155 = load i32, i32* %10, align 4
  %156 = and i32 %155, 1
  %157 = ashr i32 %154, %156
  %158 = call i32 @pmbus_add_boolean(%struct.pmbus_data* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %152, i32* null, i32* null, i32 %153, i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %150
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %3, align 4
  br label %188

163:                                              ; preds = %150
  %164 = load %struct.pmbus_data*, %struct.pmbus_data** %5, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @PB_FAN_FAN1_FAULT, align 4
  %168 = load i32, i32* %10, align 4
  %169 = and i32 %168, 1
  %170 = ashr i32 %167, %169
  %171 = call i32 @pmbus_add_boolean(%struct.pmbus_data* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %165, i32* null, i32* null, i32 %166, i32 %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %3, align 4
  br label %188

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176, %129, %114
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %177, %75
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %23

183:                                              ; preds = %54, %43, %23
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %16

187:                                              ; preds = %16
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %174, %161, %111, %88
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @pmbus_check_word_register(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @_pmbus_read_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32* @pmbus_add_sensor(%struct.pmbus_data*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pmbus_add_fan_ctrl(%struct.i2c_client*, %struct.pmbus_data*, i32, i32, i32, i32) #1

declare dso_local i64 @pmbus_check_byte_register(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @pmbus_add_boolean(%struct.pmbus_data*, i8*, i8*, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
