; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_f75375_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f75375s.c_f75375_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f75375_data = type { i32, i32*, i32*, i32*, i32*, i32, i32*, i32*, i64, i32*, i32, i8*, i8**, i8*, i8**, i8**, i8** }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@F75375_REG_FAN_TIMER = common dso_local global i32 0, align 4
@f75387 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.f75375_data* (%struct.device*)* @f75375_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.f75375_data* @f75375_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.f75375_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.f75375_data* %9, %struct.f75375_data** %4, align 8
  %10 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %11 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %10, i32 0, i32 10
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i8*, i8** @jiffies, align 8
  %14 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %15 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %14, i32 0, i32 13
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 60, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %16, i64 %19
  %21 = call i64 @time_after(i8* %13, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %25 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %123, label %28

28:                                               ; preds = %23, %1
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %83, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %86

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @F75375_REG_TEMP_HIGH(i32 %34)
  %36 = call i32 @f75375_read8(%struct.i2c_client* %33, i32 %35)
  %37 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %38 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @F75375_REG_TEMP_HYST(i32 %44)
  %46 = call i32 @f75375_read8(%struct.i2c_client* %43, i32 %45)
  %47 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %48 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @F75375_REG_FAN_FULL(i32 %54)
  %56 = call i8* @f75375_read16(%struct.i2c_client* %53, i32 %55)
  %57 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %58 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %57, i32 0, i32 16
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %56, i8** %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @F75375_REG_FAN_MIN(i32 %64)
  %66 = call i8* @f75375_read16(%struct.i2c_client* %63, i32 %65)
  %67 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %68 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %67, i32 0, i32 15
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %66, i8** %72, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @F75375_REG_FAN_EXP(i32 %74)
  %76 = call i8* @f75375_read16(%struct.i2c_client* %73, i32 %75)
  %77 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %78 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %77, i32 0, i32 14
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  br label %83

83:                                               ; preds = %32
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %29

86:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %111, %86
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @F75375_REG_VOLT_HIGH(i32 %92)
  %94 = call i32 @f75375_read8(%struct.i2c_client* %91, i32 %93)
  %95 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %96 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @F75375_REG_VOLT_LOW(i32 %102)
  %104 = call i32 @f75375_read8(%struct.i2c_client* %101, i32 %103)
  %105 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %106 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  br label %111

111:                                              ; preds = %90
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %87

114:                                              ; preds = %87
  %115 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %116 = load i32, i32* @F75375_REG_FAN_TIMER, align 4
  %117 = call i32 @f75375_read8(%struct.i2c_client* %115, i32 %116)
  %118 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %119 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load i8*, i8** @jiffies, align 8
  %121 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %122 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %121, i32 0, i32 13
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %114, %23
  %124 = load i8*, i8** @jiffies, align 8
  %125 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %126 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %125, i32 0, i32 11
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @HZ, align 4
  %129 = mul nsw i32 2, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr i8, i8* %127, i64 %130
  %132 = call i64 @time_after(i8* %124, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %123
  %135 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %136 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %221, label %139

139:                                              ; preds = %134, %123
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %194, %139
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %141, 2
  br i1 %142, label %143, label %197

143:                                              ; preds = %140
  %144 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @F75375_REG_FAN_PWM_DUTY(i32 %145)
  %147 = call i32 @f75375_read8(%struct.i2c_client* %144, i32 %146)
  %148 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %149 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %148, i32 0, i32 6
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @F75375_REG_TEMP(i32 %155)
  %157 = call i32 @f75375_read8(%struct.i2c_client* %154, i32 %156)
  %158 = shl i32 %157, 8
  %159 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %160 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  %165 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %166 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %165, i32 0, i32 8
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @f75387, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %143
  %171 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @F75387_REG_TEMP11_LSB(i32 %172)
  %174 = call i32 @f75375_read8(%struct.i2c_client* %171, i32 %173)
  %175 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %176 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %175, i32 0, i32 7
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %174
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %170, %143
  %184 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @F75375_REG_FAN(i32 %185)
  %187 = call i8* @f75375_read16(%struct.i2c_client* %184, i32 %186)
  %188 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %189 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %188, i32 0, i32 12
  %190 = load i8**, i8*** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  store i8* %187, i8** %193, align 8
  br label %194

194:                                              ; preds = %183
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %140

197:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %212, %197
  %199 = load i32, i32* %5, align 4
  %200 = icmp slt i32 %199, 4
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @F75375_REG_VOLT(i32 %203)
  %205 = call i32 @f75375_read8(%struct.i2c_client* %202, i32 %204)
  %206 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %207 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %206, i32 0, i32 9
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %205, i32* %211, align 4
  br label %212

212:                                              ; preds = %201
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %198

215:                                              ; preds = %198
  %216 = load i8*, i8** @jiffies, align 8
  %217 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %218 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %217, i32 0, i32 11
  store i8* %216, i8** %218, align 8
  %219 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %220 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  br label %221

221:                                              ; preds = %215, %134
  %222 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  %223 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %222, i32 0, i32 10
  %224 = call i32 @mutex_unlock(i32* %223)
  %225 = load %struct.f75375_data*, %struct.f75375_data** %4, align 8
  ret %struct.f75375_data* %225
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.f75375_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @f75375_read8(%struct.i2c_client*, i32) #1

declare dso_local i32 @F75375_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @F75375_REG_TEMP_HYST(i32) #1

declare dso_local i8* @f75375_read16(%struct.i2c_client*, i32) #1

declare dso_local i32 @F75375_REG_FAN_FULL(i32) #1

declare dso_local i32 @F75375_REG_FAN_MIN(i32) #1

declare dso_local i32 @F75375_REG_FAN_EXP(i32) #1

declare dso_local i32 @F75375_REG_VOLT_HIGH(i32) #1

declare dso_local i32 @F75375_REG_VOLT_LOW(i32) #1

declare dso_local i32 @F75375_REG_FAN_PWM_DUTY(i32) #1

declare dso_local i32 @F75375_REG_TEMP(i32) #1

declare dso_local i32 @F75387_REG_TEMP11_LSB(i32) #1

declare dso_local i32 @F75375_REG_FAN(i32) #1

declare dso_local i32 @F75375_REG_VOLT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
