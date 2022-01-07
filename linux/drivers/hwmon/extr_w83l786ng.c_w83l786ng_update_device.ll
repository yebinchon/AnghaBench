; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_w83l786ng_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_w83l786ng_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83l786ng_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Updating w83l786ng data.\0A\00", align 1
@W83L786NG_REG_FAN_DIV = common dso_local global i32 0, align 4
@W83L786NG_REG_FAN_CFG = common dso_local global i32 0, align 4
@W83L786NG_PWM_MODE_SHIFT = common dso_local global i32* null, align 8
@W83L786NG_PWM_ENABLE_SHIFT = common dso_local global i32* null, align 8
@W83L786NG_REG_PWM = common dso_local global i32* null, align 8
@W83L786NG_REG_TEMP = common dso_local global i32** null, align 8
@W83L786NG_REG_TOLERANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w83l786ng_data* (%struct.device*)* @w83l786ng_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w83l786ng_data* @w83l786ng_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.w83l786ng_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.w83l786ng_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.w83l786ng_data* %10, %struct.w83l786ng_data** %3, align 8
  %11 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %12 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %11, i32 0, i32 14
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %15 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %14, i32 0, i32 12
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %19 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %18, i32 0, i32 13
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* @HZ, align 4
  %25 = sdiv i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = call i64 @time_after(i64 %17, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %32 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %237, label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %73, %35
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @W83L786NG_REG_IN(i32 %44)
  %46 = call i32 @w83l786ng_read_value(%struct.i2c_client* %43, i32 %45)
  %47 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %48 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @W83L786NG_REG_IN_MIN(i32 %54)
  %56 = call i32 @w83l786ng_read_value(%struct.i2c_client* %53, i32 %55)
  %57 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %58 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @W83L786NG_REG_IN_MAX(i32 %64)
  %66 = call i32 @w83l786ng_read_value(%struct.i2c_client* %63, i32 %65)
  %67 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %68 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %42
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %39

76:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %101, %76
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @W83L786NG_REG_FAN(i32 %82)
  %84 = call i32 @w83l786ng_read_value(%struct.i2c_client* %81, i32 %83)
  %85 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %86 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @W83L786NG_REG_FAN_MIN(i32 %92)
  %94 = call i32 @w83l786ng_read_value(%struct.i2c_client* %91, i32 %93)
  %95 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %96 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %80
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %77

104:                                              ; preds = %77
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = load i32, i32* @W83L786NG_REG_FAN_DIV, align 4
  %107 = call i32 @w83l786ng_read_value(%struct.i2c_client* %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 7
  %110 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %111 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %110, i32 0, i32 6
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 7
  %117 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %118 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = load i32, i32* @W83L786NG_REG_FAN_CFG, align 4
  %123 = call i32 @w83l786ng_read_value(%struct.i2c_client* %121, i32 %122)
  store i32 %123, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %175, %104
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 2
  br i1 %126, label %127, label %178

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** @W83L786NG_PWM_MODE_SHIFT, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %128, %133
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 0, i32 1
  %139 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %140 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %139, i32 0, i32 7
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %138, i32* %144, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32*, i32** @W83L786NG_PWM_ENABLE_SHIFT, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %145, %150
  %152 = and i32 %151, 3
  %153 = add nsw i32 %152, 1
  %154 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %155 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %154, i32 0, i32 8
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %161 = load i32*, i32** @W83L786NG_REG_PWM, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @w83l786ng_read_value(%struct.i2c_client* %160, i32 %165)
  %167 = and i32 %166, 15
  %168 = mul nsw i32 %167, 17
  %169 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %170 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %169, i32 0, i32 9
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  br label %175

175:                                              ; preds = %127
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %124

178:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %212, %178
  %180 = load i32, i32* %5, align 4
  %181 = icmp slt i32 %180, 2
  br i1 %181, label %182, label %215

182:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %208, %182
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 3
  br i1 %185, label %186, label %211

186:                                              ; preds = %183
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = load i32**, i32*** @W83L786NG_REG_TEMP, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @w83l786ng_read_value(%struct.i2c_client* %187, i32 %196)
  %198 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %199 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %198, i32 0, i32 10
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %197, i32* %207, align 4
  br label %208

208:                                              ; preds = %186
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %183

211:                                              ; preds = %183
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %179

215:                                              ; preds = %179
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = load i32, i32* @W83L786NG_REG_TOLERANCE, align 4
  %218 = call i32 @w83l786ng_read_value(%struct.i2c_client* %216, i32 %217)
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = and i32 %219, 15
  %221 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %222 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %221, i32 0, i32 11
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  store i32 %220, i32* %224, align 4
  %225 = load i32, i32* %7, align 4
  %226 = ashr i32 %225, 4
  %227 = and i32 %226, 15
  %228 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %229 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %228, i32 0, i32 11
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  store i32 %227, i32* %231, align 4
  %232 = load i64, i64* @jiffies, align 8
  %233 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %234 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %233, i32 0, i32 13
  store i64 %232, i64* %234, align 8
  %235 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %236 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %235, i32 0, i32 0
  store i32 1, i32* %236, align 8
  br label %237

237:                                              ; preds = %215, %30
  %238 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  %239 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %238, i32 0, i32 12
  %240 = call i32 @mutex_unlock(i32* %239)
  %241 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %3, align 8
  ret %struct.w83l786ng_data* %241
}

declare dso_local %struct.w83l786ng_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83L786NG_REG_IN(i32) #1

declare dso_local i32 @W83L786NG_REG_IN_MIN(i32) #1

declare dso_local i32 @W83L786NG_REG_IN_MAX(i32) #1

declare dso_local i32 @W83L786NG_REG_FAN(i32) #1

declare dso_local i32 @W83L786NG_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
