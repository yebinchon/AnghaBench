; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5636.c_sch5636_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5636.c_sch5636_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sch5636_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32, i64, i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@SCH5636_NO_INS = common dso_local global i32 0, align 4
@SCH5636_REG_IN_VAL = common dso_local global i32* null, align 8
@SCH5636_NO_TEMPS = common dso_local global i32 0, align 4
@SCH5636_TEMP_DEACTIVATED = common dso_local global i32 0, align 4
@SCH5636_REG_TEMP_VAL = common dso_local global i32* null, align 8
@SCH5636_TEMP_ALARM = common dso_local global i32 0, align 4
@SCH5636_NO_FANS = common dso_local global i32 0, align 4
@SCH5636_FAN_DEACTIVATED = common dso_local global i32 0, align 4
@SCH5636_REG_FAN_VAL = common dso_local global i32* null, align 8
@SCH5636_FAN_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sch5636_data* (%struct.device*)* @sch5636_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sch5636_data* @sch5636_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sch5636_data*, align 8
  %4 = alloca %struct.sch5636_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.sch5636_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.sch5636_data* %8, %struct.sch5636_data** %3, align 8
  %9 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  store %struct.sch5636_data* %9, %struct.sch5636_data** %4, align 8
  %10 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %11 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %10, i32 0, i32 6
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %14 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %20 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HZ, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @time_after(i64 %18, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %229

27:                                               ; preds = %17, %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %58, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SCH5636_NO_INS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %34 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** @SCH5636_REG_IN_VAL, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sch56xx_read_virtual_reg(i32 %35, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.sch5636_data* @ERR_PTR(i32 %48)
  store %struct.sch5636_data* %49, %struct.sch5636_data** %4, align 8
  br label %229

50:                                               ; preds = %32
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %53 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %28

61:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %139, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SCH5636_NO_TEMPS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %142

66:                                               ; preds = %62
  %67 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %68 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SCH5636_TEMP_DEACTIVATED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %139

78:                                               ; preds = %66
  %79 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %80 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** @SCH5636_REG_TEMP_VAL, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sch56xx_read_virtual_reg(i32 %81, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i32, i32* %6, align 4
  %95 = call %struct.sch5636_data* @ERR_PTR(i32 %94)
  store %struct.sch5636_data* %95, %struct.sch5636_data** %4, align 8
  br label %229

96:                                               ; preds = %78
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %99 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %105 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @SCH5636_REG_TEMP_CTRL(i32 %107)
  %109 = call i32 @sch56xx_read_virtual_reg(i32 %106, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %96
  %116 = load i32, i32* %6, align 4
  %117 = call %struct.sch5636_data* @ERR_PTR(i32 %116)
  store %struct.sch5636_data* %117, %struct.sch5636_data** %4, align 8
  br label %229

118:                                              ; preds = %96
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %121 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @SCH5636_TEMP_ALARM, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %118
  %131 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %132 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @SCH5636_REG_TEMP_CTRL(i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @sch56xx_write_virtual_reg(i32 %133, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %130, %118
  br label %139

139:                                              ; preds = %138, %77
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %62

142:                                              ; preds = %62
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %220, %142
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @SCH5636_NO_FANS, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %223

147:                                              ; preds = %143
  %148 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %149 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @SCH5636_FAN_DEACTIVATED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %220

159:                                              ; preds = %147
  %160 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %161 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** @SCH5636_REG_FAN_VAL, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @sch56xx_read_virtual_reg16(i32 %162, i32 %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i64 @unlikely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %159
  %175 = load i32, i32* %6, align 4
  %176 = call %struct.sch5636_data* @ERR_PTR(i32 %175)
  store %struct.sch5636_data* %176, %struct.sch5636_data** %4, align 8
  br label %229

177:                                              ; preds = %159
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %180 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %179, i32 0, i32 5
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %178, i32* %184, align 4
  %185 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %186 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @SCH5636_REG_FAN_CTRL(i32 %188)
  %190 = call i32 @sch56xx_read_virtual_reg(i32 %187, i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp slt i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i64 @unlikely(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %177
  %197 = load i32, i32* %6, align 4
  %198 = call %struct.sch5636_data* @ERR_PTR(i32 %197)
  store %struct.sch5636_data* %198, %struct.sch5636_data** %4, align 8
  br label %229

199:                                              ; preds = %177
  %200 = load i32, i32* %6, align 4
  %201 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %202 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %200, i32* %206, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @SCH5636_FAN_ALARM, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %199
  %212 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %213 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @SCH5636_REG_FAN_CTRL(i32 %215)
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @sch56xx_write_virtual_reg(i32 %214, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %211, %199
  br label %220

220:                                              ; preds = %219, %158
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %143

223:                                              ; preds = %143
  %224 = load i64, i64* @jiffies, align 8
  %225 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %226 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %225, i32 0, i32 7
  store i64 %224, i64* %226, align 8
  %227 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %228 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %227, i32 0, i32 0
  store i32 1, i32* %228, align 8
  br label %229

229:                                              ; preds = %223, %196, %174, %115, %93, %47, %26
  %230 = load %struct.sch5636_data*, %struct.sch5636_data** %3, align 8
  %231 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %230, i32 0, i32 6
  %232 = call i32 @mutex_unlock(i32* %231)
  %233 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  ret %struct.sch5636_data* %233
}

declare dso_local %struct.sch5636_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @sch56xx_read_virtual_reg(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sch5636_data* @ERR_PTR(i32) #1

declare dso_local i32 @SCH5636_REG_TEMP_CTRL(i32) #1

declare dso_local i32 @sch56xx_write_virtual_reg(i32, i32, i32) #1

declare dso_local i32 @sch56xx_read_virtual_reg16(i32, i32) #1

declare dso_local i32 @SCH5636_REG_FAN_CTRL(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
