; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm63_data = type { i64, i32, i32, i32*, i32, i32*, i32*, i32*, i64, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LM63_REG_TACH_COUNT_LSB = common dso_local global i32 0, align 4
@LM63_REG_TACH_COUNT_MSB = common dso_local global i32 0, align 4
@LM63_REG_TACH_LIMIT_LSB = common dso_local global i32 0, align 4
@LM63_REG_TACH_LIMIT_MSB = common dso_local global i32 0, align 4
@LM63_REG_PWM_FREQ = common dso_local global i32 0, align 4
@LM63_REG_PWM_VALUE = common dso_local global i32 0, align 4
@LM63_REG_LOCAL_TEMP = common dso_local global i32 0, align 4
@LM63_REG_LOCAL_HIGH = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_TEMP_MSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_TEMP_LSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_LOW_MSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_LOW_LSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_HIGH_MSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_HIGH_LSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_OFFSET_MSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_OFFSET_LSB = common dso_local global i32 0, align 4
@lm96163 = common dso_local global i64 0, align 8
@LM96163_REG_REMOTE_TEMP_U_MSB = common dso_local global i32 0, align 4
@LM96163_REG_REMOTE_TEMP_U_LSB = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_TCRIT = common dso_local global i32 0, align 4
@LM63_REG_REMOTE_TCRIT_HYST = common dso_local global i32 0, align 4
@LM63_REG_ALERT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm63_data* (%struct.device*)* @lm63_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm63_data* @lm63_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.lm63_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.lm63_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.lm63_data* %7, %struct.lm63_data** %3, align 8
  %8 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %9 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %8, i32 0, i32 14
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %12 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %11, i32 0, i32 12
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %15 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %18 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add i64 %16, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @time_after(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %28 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %197, label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %33 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @LM63_REG_TACH_COUNT_LSB, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  %41 = and i32 %40, 252
  %42 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %43 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* @LM63_REG_TACH_COUNT_MSB, align 4
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 %47)
  %49 = shl i32 %48, 8
  %50 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %51 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* @LM63_REG_TACH_LIMIT_LSB, align 4
  %58 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 %57)
  %59 = and i32 %58, 252
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @LM63_REG_TACH_LIMIT_MSB, align 4
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %60, i32 %61)
  %63 = shl i32 %62, 8
  %64 = or i32 %59, %63
  %65 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %66 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %37, %31
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load i32, i32* @LM63_REG_PWM_FREQ, align 4
  %72 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %70, i32 %71)
  %73 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %74 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %76 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %81 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %80, i32 0, i32 4
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %69
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load i32, i32* @LM63_REG_PWM_VALUE, align 4
  %85 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %83, i32 %84)
  %86 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %87 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = load i32, i32* @LM63_REG_LOCAL_TEMP, align 4
  %92 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %90, i32 %91)
  %93 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %94 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %92, i32* %96, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = load i32, i32* @LM63_REG_LOCAL_HIGH, align 4
  %99 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %97, i32 %98)
  %100 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %101 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = load i32, i32* @LM63_REG_REMOTE_TEMP_MSB, align 4
  %106 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %104, i32 %105)
  %107 = shl i32 %106, 8
  %108 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %109 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %108, i32 0, i32 7
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = load i32, i32* @LM63_REG_REMOTE_TEMP_LSB, align 4
  %114 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %112, i32 %113)
  %115 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %116 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %115, i32 0, i32 7
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = load i32, i32* @LM63_REG_REMOTE_LOW_MSB, align 4
  %123 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %121, i32 %122)
  %124 = shl i32 %123, 8
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = load i32, i32* @LM63_REG_REMOTE_LOW_LSB, align 4
  %127 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %125, i32 %126)
  %128 = or i32 %124, %127
  %129 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %130 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 %128, i32* %132, align 4
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = load i32, i32* @LM63_REG_REMOTE_HIGH_MSB, align 4
  %135 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %133, i32 %134)
  %136 = shl i32 %135, 8
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = load i32, i32* @LM63_REG_REMOTE_HIGH_LSB, align 4
  %139 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %137, i32 %138)
  %140 = or i32 %136, %139
  %141 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %142 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %141, i32 0, i32 7
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  store i32 %140, i32* %144, align 4
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = load i32, i32* @LM63_REG_REMOTE_OFFSET_MSB, align 4
  %147 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %145, i32 %146)
  %148 = shl i32 %147, 8
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = load i32, i32* @LM63_REG_REMOTE_OFFSET_LSB, align 4
  %151 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %149, i32 %150)
  %152 = or i32 %148, %151
  %153 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %154 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %153, i32 0, i32 7
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  store i32 %152, i32* %156, align 4
  %157 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %158 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @lm96163, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %82
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = load i32, i32* @LM96163_REG_REMOTE_TEMP_U_MSB, align 4
  %165 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %163, i32 %164)
  %166 = shl i32 %165, 8
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = load i32, i32* @LM96163_REG_REMOTE_TEMP_U_LSB, align 4
  %169 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %167, i32 %168)
  %170 = or i32 %166, %169
  %171 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %172 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %171, i32 0, i32 9
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %162, %82
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = load i32, i32* @LM63_REG_REMOTE_TCRIT, align 4
  %176 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %174, i32 %175)
  %177 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %178 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  store i32 %176, i32* %180, align 4
  %181 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %182 = load i32, i32* @LM63_REG_REMOTE_TCRIT_HYST, align 4
  %183 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %181, i32 %182)
  %184 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %185 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %184, i32 0, i32 10
  store i32 %183, i32* %185, align 4
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = load i32, i32* @LM63_REG_ALERT_STATUS, align 4
  %188 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %186, i32 %187)
  %189 = and i32 %188, 127
  %190 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %191 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %190, i32 0, i32 11
  store i32 %189, i32* %191, align 8
  %192 = load i64, i64* @jiffies, align 8
  %193 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %194 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %196 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %195, i32 0, i32 1
  store i32 1, i32* %196, align 8
  br label %197

197:                                              ; preds = %173, %26
  %198 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %199 = call i32 @lm63_update_lut(%struct.lm63_data* %198)
  %200 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %201 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %200, i32 0, i32 12
  %202 = call i32 @mutex_unlock(i32* %201)
  %203 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  ret %struct.lm63_data* %203
}

declare dso_local %struct.lm63_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm63_update_lut(%struct.lm63_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
