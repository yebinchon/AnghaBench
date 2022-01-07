; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm90_data = type { i32, i64, i32*, i32*, i32, i64, i32, i32, i32, i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Updating lm90 data.\0A\00", align 1
@LM90_REG_R_LOCAL_LOW = common dso_local global i32 0, align 4
@LOCAL_LOW = common dso_local global i64 0, align 8
@LM90_REG_R_LOCAL_HIGH = common dso_local global i32 0, align 4
@LOCAL_HIGH = common dso_local global i64 0, align 8
@LM90_REG_R_LOCAL_TEMP = common dso_local global i32 0, align 4
@LOCAL_TEMP = common dso_local global i64 0, align 8
@LM90_REG_R_REMOTE_TEMPH = common dso_local global i32 0, align 4
@LM90_REG_R_REMOTE_TEMPL = common dso_local global i64 0, align 8
@REMOTE_TEMP = common dso_local global i64 0, align 8
@LM90_REG_R_STATUS = common dso_local global i32 0, align 4
@max6696 = common dso_local global i64 0, align 8
@REMOTE2_TEMP = common dso_local global i64 0, align 8
@MAX6696_REG_R_STATUS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Re-enabling ALERT#\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @lm90_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_update_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.lm90_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.lm90_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.lm90_data* %9, %struct.lm90_data** %4, align 8
  %10 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %11 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %10, i32 0, i32 11
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %14 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @lm90_update_limits(%struct.device* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %227

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %27 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %30 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @msecs_to_jiffies(i32 %31)
  %33 = add i64 %28, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @time_after(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %25
  %39 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %40 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %226, label %43

43:                                               ; preds = %38, %25
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %48 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %50 = load i32, i32* @LM90_REG_R_LOCAL_LOW, align 4
  %51 = call i32 @lm90_read_reg(%struct.i2c_client* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %227

56:                                               ; preds = %43
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %59 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @LOCAL_LOW, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %64 = load i32, i32* @LM90_REG_R_LOCAL_HIGH, align 4
  %65 = call i32 @lm90_read_reg(%struct.i2c_client* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %227

70:                                               ; preds = %56
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %73 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @LOCAL_HIGH, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %78 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %70
  %82 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %83 = load i32, i32* @LM90_REG_R_LOCAL_TEMP, align 4
  %84 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %85 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @lm90_read16(%struct.i2c_client* %82, i32 %83, i64 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %227

92:                                               ; preds = %81
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %95 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @LOCAL_TEMP, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %93, i32* %98, align 4
  br label %115

99:                                               ; preds = %70
  %100 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %101 = load i32, i32* @LM90_REG_R_LOCAL_TEMP, align 4
  %102 = call i32 @lm90_read_reg(%struct.i2c_client* %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %227

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = shl i32 %108, 8
  %110 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %111 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @LOCAL_TEMP, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %109, i32* %114, align 4
  br label %115

115:                                              ; preds = %107, %92
  %116 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %117 = load i32, i32* @LM90_REG_R_REMOTE_TEMPH, align 4
  %118 = load i64, i64* @LM90_REG_R_REMOTE_TEMPL, align 8
  %119 = call i32 @lm90_read16(%struct.i2c_client* %116, i32 %117, i64 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %227

124:                                              ; preds = %115
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %127 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @REMOTE_TEMP, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %132 = load i32, i32* @LM90_REG_R_STATUS, align 4
  %133 = call i32 @lm90_read_reg(%struct.i2c_client* %131, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %227

138:                                              ; preds = %124
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %141 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %143 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @max6696, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %188

147:                                              ; preds = %138
  %148 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %149 = call i32 @lm90_select_remote_channel(%struct.lm90_data* %148, i32 1)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %227

154:                                              ; preds = %147
  %155 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %156 = load i32, i32* @LM90_REG_R_REMOTE_TEMPH, align 4
  %157 = load i64, i64* @LM90_REG_R_REMOTE_TEMPL, align 8
  %158 = call i32 @lm90_read16(%struct.i2c_client* %155, i32 %156, i64 %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %163 = call i32 @lm90_select_remote_channel(%struct.lm90_data* %162, i32 0)
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %2, align 4
  br label %227

165:                                              ; preds = %154
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %168 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @REMOTE2_TEMP, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %166, i32* %171, align 4
  %172 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %173 = call i32 @lm90_select_remote_channel(%struct.lm90_data* %172, i32 0)
  %174 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %175 = load i32, i32* @MAX6696_REG_R_STATUS2, align 4
  %176 = call i32 @lm90_read_reg(%struct.i2c_client* %174, i32 %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %165
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %2, align 4
  br label %227

181:                                              ; preds = %165
  %182 = load i32, i32* %7, align 4
  %183 = shl i32 %182, 8
  %184 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %185 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %181, %138
  %189 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %190 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, 128
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %220, label %194

194:                                              ; preds = %188
  %195 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %196 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %199 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %197, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %220, label %203

203:                                              ; preds = %194
  %204 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %205 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, 128
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %203
  %210 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %211 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %210, i32 0, i32 0
  %212 = call i32 @dev_dbg(i32* %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %213 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %214 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %215 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, -129
  %218 = call i32 @lm90_update_confreg(%struct.lm90_data* %213, i32 %217)
  br label %219

219:                                              ; preds = %209, %203
  br label %220

220:                                              ; preds = %219, %194, %188
  %221 = load i64, i64* @jiffies, align 8
  %222 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %223 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %222, i32 0, i32 1
  store i64 %221, i64* %223, align 8
  %224 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %225 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %224, i32 0, i32 0
  store i32 1, i32* %225, align 8
  br label %226

226:                                              ; preds = %220, %38
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %226, %179, %161, %152, %136, %122, %105, %90, %68, %54, %22
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.lm90_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @lm90_update_limits(%struct.device*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @lm90_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm90_read16(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @lm90_select_remote_channel(%struct.lm90_data*, i32) #1

declare dso_local i32 @lm90_update_confreg(%struct.lm90_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
