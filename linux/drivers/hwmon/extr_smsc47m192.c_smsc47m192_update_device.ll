; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_smsc47m192_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_smsc47m192_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc47m192_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SMSC47M192_REG_SFR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Starting smsc47m192 update\0A\00", align 1
@SMSC47M192_REG_TEMP = common dso_local global i32* null, align 8
@SMSC47M192_REG_TEMP_MAX = common dso_local global i32* null, align 8
@SMSC47M192_REG_TEMP_MIN = common dso_local global i32* null, align 8
@SMSC47M192_REG_VID = common dso_local global i32 0, align 4
@SMSC47M192_REG_CONFIG = common dso_local global i32 0, align 4
@SMSC47M192_REG_VID4 = common dso_local global i32 0, align 4
@SMSC47M192_REG_ALARM1 = common dso_local global i32 0, align 4
@SMSC47M192_REG_ALARM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smsc47m192_data* (%struct.device*)* @smsc47m192_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smsc47m192_data* @smsc47m192_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.smsc47m192_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.smsc47m192_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.smsc47m192_data* %9, %struct.smsc47m192_data** %3, align 8
  %10 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %11 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %10, i32 0, i32 12
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %14 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %13, i32 0, i32 10
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %18 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %17, i32 0, i32 11
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i64 @time_after(i64 %16, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %31 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %205, label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @SMSC47M192_REG_SFR, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %75, %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp sle i32 %42, 7
  br i1 %43, label %44, label %78

44:                                               ; preds = %41
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @SMSC47M192_REG_IN(i32 %46)
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %45, i32 %47)
  %49 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %50 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @SMSC47M192_REG_IN_MIN(i32 %56)
  %58 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %55, i32 %57)
  %59 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %60 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @SMSC47M192_REG_IN_MAX(i32 %66)
  %68 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %65, i32 %67)
  %69 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %70 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %44
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %41

78:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %122, %78
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %125

82:                                               ; preds = %79
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load i32*, i32** @SMSC47M192_REG_TEMP, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %83, i32 %88)
  %90 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %91 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = load i32*, i32** @SMSC47M192_REG_TEMP_MAX, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %96, i32 %101)
  %103 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %104 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = load i32*, i32** @SMSC47M192_REG_TEMP_MIN, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %109, i32 %114)
  %116 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %117 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  br label %122

122:                                              ; preds = %82
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %79

125:                                              ; preds = %79
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %140, %125
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %129, label %143

129:                                              ; preds = %126
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @SMSC47M192_REG_TEMP_OFFSET(i32 %131)
  %133 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %130, i32 %132)
  %134 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %135 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %134, i32 0, i32 7
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  br label %140

140:                                              ; preds = %129
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %126

143:                                              ; preds = %126
  %144 = load i32, i32* %7, align 4
  %145 = and i32 %144, 16
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %143
  %148 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %149 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %148, i32 0, i32 7
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %154 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %153, i32 0, i32 7
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %152, i32* %156, align 4
  %157 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %158 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %157, i32 0, i32 7
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 0, i32* %160, align 4
  br label %166

161:                                              ; preds = %143
  %162 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %163 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 0, i32* %165, align 4
  br label %166

166:                                              ; preds = %161, %147
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = load i32, i32* @SMSC47M192_REG_VID, align 4
  %169 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %167, i32 %168)
  %170 = and i32 %169, 15
  %171 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %172 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %171, i32 0, i32 8
  store i32 %170, i32* %172, align 8
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = load i32, i32* @SMSC47M192_REG_CONFIG, align 4
  %175 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %173, i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = and i32 %176, 32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %166
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = load i32, i32* @SMSC47M192_REG_VID4, align 4
  %182 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %180, i32 %181)
  %183 = and i32 %182, 1
  %184 = shl i32 %183, 4
  %185 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %186 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %179, %166
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = load i32, i32* @SMSC47M192_REG_ALARM1, align 4
  %192 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %190, i32 %191)
  %193 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %194 = load i32, i32* @SMSC47M192_REG_ALARM2, align 4
  %195 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %193, i32 %194)
  %196 = shl i32 %195, 8
  %197 = or i32 %192, %196
  %198 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %199 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %198, i32 0, i32 9
  store i32 %197, i32* %199, align 4
  %200 = load i64, i64* @jiffies, align 8
  %201 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %202 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %201, i32 0, i32 11
  store i64 %200, i64* %202, align 8
  %203 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %204 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  br label %205

205:                                              ; preds = %189, %29
  %206 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  %207 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %206, i32 0, i32 10
  %208 = call i32 @mutex_unlock(i32* %207)
  %209 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %3, align 8
  ret %struct.smsc47m192_data* %209
}

declare dso_local %struct.smsc47m192_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @SMSC47M192_REG_IN(i32) #1

declare dso_local i32 @SMSC47M192_REG_IN_MIN(i32) #1

declare dso_local i32 @SMSC47M192_REG_IN_MAX(i32) #1

declare dso_local i32 @SMSC47M192_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
