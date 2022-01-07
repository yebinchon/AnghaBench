; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_max6639_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_max6639_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max6639_data = type { i32, i32, i32*, i32*, i32*, i32* }
%struct.max6639_platform_data = type { i32, i64, i32 }

@MAX6639_REG_GCONFIG = common dso_local global i32 0, align 4
@MAX6639_GCONFIG_POR = common dso_local global i32 0, align 4
@MAX6639_FAN_CONFIG1_PWM = common dso_local global i32 0, align 4
@MAX6639_FAN_CONFIG3_THERM_FULL_SPEED = common dso_local global i32 0, align 4
@MAX6639_GCONFIG_DISABLE_TIMEOUT = common dso_local global i32 0, align 4
@MAX6639_GCONFIG_CH2_LOCAL = common dso_local global i32 0, align 4
@MAX6639_GCONFIG_PWM_FREQ_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.max6639_data*)* @max6639_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6639_init_client(%struct.i2c_client* %0, %struct.max6639_data* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.max6639_data*, align 8
  %5 = alloca %struct.max6639_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.max6639_data* %1, %struct.max6639_data** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.max6639_platform_data* @dev_get_platdata(i32* %10)
  store %struct.max6639_platform_data* %11, %struct.max6639_platform_data** %5, align 8
  store i32 1, i32* %7, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = load i32, i32* @MAX6639_REG_GCONFIG, align 4
  %14 = load i32, i32* @MAX6639_GCONFIG_POR, align 4
  %15 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %12, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %212

19:                                               ; preds = %2
  %20 = load %struct.max6639_platform_data*, %struct.max6639_platform_data** %5, align 8
  %21 = icmp ne %struct.max6639_platform_data* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.max6639_platform_data*, %struct.max6639_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.max6639_platform_data, %struct.max6639_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.max6639_platform_data*, %struct.max6639_platform_data** %5, align 8
  %29 = getelementptr inbounds %struct.max6639_platform_data, %struct.max6639_platform_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.max6639_platform_data*, %struct.max6639_platform_data** %5, align 8
  %34 = getelementptr inbounds %struct.max6639_platform_data, %struct.max6639_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %37 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %41

38:                                               ; preds = %27, %22, %19
  %39 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %40 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %39, i32 0, i32 0
  store i32 2, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %43 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.max6639_platform_data*, %struct.max6639_platform_data** %5, align 8
  %47 = icmp ne %struct.max6639_platform_data* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.max6639_platform_data*, %struct.max6639_platform_data** %5, align 8
  %50 = getelementptr inbounds %struct.max6639_platform_data, %struct.max6639_platform_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @rpm_range_to_reg(i32 %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %56 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %200, %53
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %203

60:                                               ; preds = %57
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @MAX6639_REG_FAN_PPR(i32 %62)
  %64 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %65 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 6
  %68 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %61, i32 %63, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %212

72:                                               ; preds = %60
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @MAX6639_REG_FAN_CONFIG1(i32 %74)
  %76 = load i32, i32* @MAX6639_FAN_CONFIG1_PWM, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %73, i32 %75, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %212

83:                                               ; preds = %72
  %84 = load %struct.max6639_platform_data*, %struct.max6639_platform_data** %5, align 8
  %85 = icmp ne %struct.max6639_platform_data* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.max6639_platform_data*, %struct.max6639_platform_data** %5, align 8
  %88 = getelementptr inbounds %struct.max6639_platform_data, %struct.max6639_platform_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @MAX6639_REG_FAN_CONFIG2a(i32 %93)
  %95 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %92, i32 %94, i32 0)
  store i32 %95, i32* %8, align 4
  br label %101

96:                                               ; preds = %86, %83
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @MAX6639_REG_FAN_CONFIG2a(i32 %98)
  %100 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %97, i32 %99, i32 2)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %212

105:                                              ; preds = %101
  %106 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @MAX6639_REG_FAN_CONFIG3(i32 %107)
  %109 = load i32, i32* @MAX6639_FAN_CONFIG3_THERM_FULL_SPEED, align 4
  %110 = or i32 %109, 3
  %111 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %106, i32 %108, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %212

115:                                              ; preds = %105
  %116 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %117 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 80, i32* %121, align 4
  %122 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %123 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 90, i32* %127, align 4
  %128 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %129 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 100, i32* %133, align 4
  %134 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @MAX6639_REG_THERM_LIMIT(i32 %135)
  %137 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %138 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %134, i32 %136, i32 %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %115
  br label %212

148:                                              ; preds = %115
  %149 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @MAX6639_REG_ALERT_LIMIT(i32 %150)
  %152 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %153 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %149, i32 %151, i32 %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %148
  br label %212

163:                                              ; preds = %148
  %164 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @MAX6639_REG_OT_LIMIT(i32 %165)
  %167 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %168 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %164, i32 %166, i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %163
  br label %212

178:                                              ; preds = %163
  %179 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %180 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %179, i32 0, i32 5
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 120, i32* %184, align 4
  %185 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @MAX6639_REG_TARGTDUTY(i32 %186)
  %188 = load %struct.max6639_data*, %struct.max6639_data** %4, align 8
  %189 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %188, i32 0, i32 5
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %185, i32 %187, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %178
  br label %212

199:                                              ; preds = %178
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %57

203:                                              ; preds = %57
  %204 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %205 = load i32, i32* @MAX6639_REG_GCONFIG, align 4
  %206 = load i32, i32* @MAX6639_GCONFIG_DISABLE_TIMEOUT, align 4
  %207 = load i32, i32* @MAX6639_GCONFIG_CH2_LOCAL, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @MAX6639_GCONFIG_PWM_FREQ_HI, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %204, i32 %205, i32 %210)
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %203, %198, %177, %162, %147, %114, %104, %82, %71, %18
  %213 = load i32, i32* %8, align 4
  ret i32 %213
}

declare dso_local %struct.max6639_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @rpm_range_to_reg(i32) #1

declare dso_local i32 @MAX6639_REG_FAN_PPR(i32) #1

declare dso_local i32 @MAX6639_REG_FAN_CONFIG1(i32) #1

declare dso_local i32 @MAX6639_REG_FAN_CONFIG2a(i32) #1

declare dso_local i32 @MAX6639_REG_FAN_CONFIG3(i32) #1

declare dso_local i32 @MAX6639_REG_THERM_LIMIT(i32) #1

declare dso_local i32 @MAX6639_REG_ALERT_LIMIT(i32) #1

declare dso_local i32 @MAX6639_REG_OT_LIMIT(i32) #1

declare dso_local i32 @MAX6639_REG_TARGTDUTY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
