; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpex.c_ibmpex_find_sensors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmpex.c_ibmpex_find_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.ibmpex_bmc_data = type { i32, %struct.TYPE_13__*, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SENSOR = common dso_local global i32 0, align 4
@TEMP_SENSOR = common dso_local global i32 0, align 4
@PEX_NUM_SENSOR_FUNCS = common dso_local global i32 0, align 4
@sensor_dev_attr_reset_high_low = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@sensor_dev_attr_name = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmpex_bmc_data*)* @ibmpex_find_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmpex_find_sensors(%struct.ibmpex_bmc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmpex_bmc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibmpex_bmc_data* %0, %struct.ibmpex_bmc_data** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %12 = call i32 @ibmpex_query_sensor_count(%struct.ibmpex_bmc_data* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %233

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %21 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %23 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.TYPE_13__* @kcalloc(i32 %24, i32 16, i32 %25)
  %27 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %28 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %27, i32 0, i32 1
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %28, align 8
  %29 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %30 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %233

36:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %129, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %40 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %132

43:                                               ; preds = %37
  %44 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ibmpex_query_sensor_name(%struct.ibmpex_bmc_data* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %129

50:                                               ; preds = %43
  %51 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %52 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %55 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @is_power_sensor(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %50
  %60 = load i32, i32* @POWER_SENSOR, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %65 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %66 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %69 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @power_sensor_multiplier(%struct.ibmpex_bmc_data* %64, i32 %67, i32 %70)
  %72 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %73 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 8
  br label %102

79:                                               ; preds = %50
  %80 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %81 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %84 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @is_temp_sensor(i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %79
  %89 = load i32, i32* @TEMP_SENSOR, align 4
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %8, align 4
  %93 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %94 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  store i32 1000, i32* %99, align 8
  br label %101

100:                                              ; preds = %79
  br label %129

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %59
  %103 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %104 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %103, i32 0, i32 1
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %125, %102
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @PEX_NUM_SENSOR_FUNCS, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @create_sensor(%struct.ibmpex_bmc_data* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %149

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %110

128:                                              ; preds = %110
  br label %129

129:                                              ; preds = %128, %100, %49
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %37

132:                                              ; preds = %37
  %133 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %134 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @device_create_file(i32 %135, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sensor_dev_attr_reset_high_low, i32 0, i32 0))
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %149

140:                                              ; preds = %132
  %141 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %142 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @device_create_file(i32 %143, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sensor_dev_attr_name, i32 0, i32 0))
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %149

148:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %233

149:                                              ; preds = %147, %139, %123
  %150 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %151 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @device_remove_file(i32 %152, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sensor_dev_attr_reset_high_low, i32 0, i32 0))
  %154 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %155 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @device_remove_file(i32 %156, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sensor_dev_attr_name, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %224, %149
  %159 = load i32, i32* %4, align 4
  %160 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %161 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %227

164:                                              ; preds = %158
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %220, %164
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @PEX_NUM_SENSOR_FUNCS, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %223

169:                                              ; preds = %165
  %170 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %171 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %170, i32 0, i32 1
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = icmp ne %struct.TYPE_13__* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %169
  br label %220

187:                                              ; preds = %169
  %188 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %189 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %192 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %191, i32 0, i32 1
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = call i32 @device_remove_file(i32 %190, %struct.TYPE_14__* %202)
  %204 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %205 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %204, i32 0, i32 1
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = load i32, i32* %4, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = call i32 @kfree(%struct.TYPE_13__* %218)
  br label %220

220:                                              ; preds = %187, %186
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %165

223:                                              ; preds = %165
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %4, align 4
  br label %158

227:                                              ; preds = %158
  %228 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %3, align 8
  %229 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %228, i32 0, i32 1
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = call i32 @kfree(%struct.TYPE_13__* %230)
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %227, %148, %33, %15
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @ibmpex_query_sensor_count(%struct.ibmpex_bmc_data*) #1

declare dso_local %struct.TYPE_13__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ibmpex_query_sensor_name(%struct.ibmpex_bmc_data*, i32) #1

declare dso_local i64 @is_power_sensor(i32, i32) #1

declare dso_local i32 @power_sensor_multiplier(%struct.ibmpex_bmc_data*, i32, i32) #1

declare dso_local i64 @is_temp_sensor(i32, i32) #1

declare dso_local i32 @create_sensor(%struct.ibmpex_bmc_data*, i32, i32, i32, i32) #1

declare dso_local i32 @device_create_file(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @device_remove_file(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @kfree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
