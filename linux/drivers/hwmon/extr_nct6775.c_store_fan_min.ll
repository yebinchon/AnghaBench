; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_fan_min.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i64*, i32*, i32, i32*, i32, i32 (i32, i32)*, i32 }
%struct.sensor_device_attribute = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"fan%u low limit and alarm disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"fan%u low limit %lu below minimum %u, set to minimum\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"fan%u low limit %lu above maximum %u, set to maximum\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"fan%u clock divider changed from %u to %u\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct6775_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.nct6775_data* %18, %struct.nct6775_data** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute* %20, %struct.sensor_device_attribute** %11, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtoul(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %5, align 4
  br label %212

30:                                               ; preds = %4
  %31 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %32 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %31, i32 0, i32 2
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %35 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %63, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i64 65311, i64* %13, align 8
  br label %55

42:                                               ; preds = %38
  %43 = load i64, i64* %13, align 8
  %44 = icmp ugt i64 %43, 1350000
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i64 135000, i64* %13, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i64, i64* %13, align 8
  %48 = udiv i64 1350000, %47
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = and i64 %49, 31
  %51 = load i64, i64* %13, align 8
  %52 = shl i64 %51, 3
  %53 = and i64 %52, 65280
  %54 = or i64 %50, %53
  store i64 %54, i64* %13, align 8
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i64, i64* %13, align 8
  %57 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %58 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %56, i64* %62, align 8
  br label %189

63:                                               ; preds = %30
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  %67 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %68 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 255, i64* %72, align 8
  %73 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %74 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %15, align 4
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @dev_info(%struct.device* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %150

84:                                               ; preds = %63
  %85 = load i64, i64* %13, align 8
  %86 = udiv i64 1350000, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp uge i32 %88, 32640
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %92 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 254, i64* %96, align 8
  store i32 7, i32* %15, align 4
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i64, i64* %13, align 8
  %101 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %102 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %101, i32 0, i32 5
  %103 = load i32 (i32, i32)*, i32 (i32, i32)** %102, align 8
  %104 = call i32 %103(i32 254, i32 7)
  %105 = call i32 @dev_warn(%struct.device* %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %99, i64 %100, i32 %104)
  br label %149

106:                                              ; preds = %84
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %106
  %110 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %111 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 1, i64* %115, align 8
  store i32 0, i32* %15, align 4
  %116 = load %struct.device*, %struct.device** %6, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %121 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %120, i32 0, i32 5
  %122 = load i32 (i32, i32)*, i32 (i32, i32)** %121, align 8
  %123 = call i32 %122(i32 1, i32 0)
  %124 = call i32 @dev_warn(%struct.device* %116, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %118, i64 %119, i32 %123)
  br label %148

125:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %126

126:                                              ; preds = %134, %125
  %127 = load i32, i32* %14, align 4
  %128 = icmp ugt i32 %127, 192
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %15, align 4
  %131 = icmp slt i32 %130, 7
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i1 [ false, %126 ], [ %131, %129 ]
  br i1 %133, label %134, label %139

134:                                              ; preds = %132
  %135 = load i32, i32* %14, align 4
  %136 = lshr i32 %135, 1
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %126

139:                                              ; preds = %132
  %140 = load i32, i32* %14, align 4
  %141 = zext i32 %140 to i64
  %142 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %143 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  store i64 %141, i64* %147, align 8
  br label %148

148:                                              ; preds = %139, %109
  br label %149

149:                                              ; preds = %148, %90
  br label %150

150:                                              ; preds = %149, %66
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %153 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %151, %158
  br i1 %159, label %160, label %188

160:                                              ; preds = %150
  %161 = load %struct.device*, %struct.device** %6, align 8
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  %164 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %165 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @div_from_reg(i32 %170)
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @div_from_reg(i32 %172)
  %174 = call i32 @dev_dbg(%struct.device* %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %171, i32 %173)
  %175 = load i32, i32* %15, align 4
  %176 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %177 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %175, i32* %181, align 4
  %182 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @nct6775_write_fan_div_common(%struct.nct6775_data* %182, i32 %183)
  %185 = load i32, i32* @jiffies, align 4
  %186 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %187 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %160, %150
  br label %189

189:                                              ; preds = %188, %55
  %190 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %191 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %192 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %199 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %198, i32 0, i32 0
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = call i32 @nct6775_write_value(%struct.nct6775_data* %190, i32 %197, i32 %205)
  %207 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %208 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %207, i32 0, i32 2
  %209 = call i32 @mutex_unlock(i32* %208)
  %210 = load i64, i64* %9, align 8
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %189, %28
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @div_from_reg(i32) #1

declare dso_local i32 @nct6775_write_fan_div_common(%struct.nct6775_data*, i32) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
