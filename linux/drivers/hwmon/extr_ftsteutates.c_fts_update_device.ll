; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fts_data = type { i32, i32, i32, i32*, i32*, i32, i32*, i32*, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@FTS_DEVICE_STATUS_REG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FTS_FAN_PRESENT_REG = common dso_local global i32 0, align 4
@FTS_FAN_EVENT_REG = common dso_local global i32 0, align 4
@FTS_NO_FAN_SENSORS = common dso_local global i32 0, align 4
@FTS_SENSOR_EVENT_REG = common dso_local global i32 0, align 4
@FTS_NO_TEMP_SENSORS = common dso_local global i32 0, align 4
@FTS_NO_VOLT_SENSORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fts_data*)* @fts_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_update_device(%struct.fts_data* %0) #0 {
  %2 = alloca %struct.fts_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fts_data* %0, %struct.fts_data** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %6 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %5, i32 0, i32 8
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %10 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %9, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @HZ, align 4
  %13 = mul nsw i32 2, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i32 @time_after(i64 %8, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %20 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %210

24:                                               ; preds = %18, %1
  %25 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %26 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FTS_DEVICE_STATUS_REG, align 4
  %29 = call i32 @fts_read_byte(i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %210

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %41 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %43 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %210

53:                                               ; preds = %33
  %54 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %55 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FTS_FAN_PRESENT_REG, align 4
  %58 = call i32 @fts_read_byte(i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %210

62:                                               ; preds = %53
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %65 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %67 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FTS_FAN_EVENT_REG, align 4
  %70 = call i32 @fts_read_byte(i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %210

74:                                               ; preds = %62
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %77 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %139, %74
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @FTS_NO_FAN_SENSORS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %142

82:                                               ; preds = %78
  %83 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %84 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %82
  %91 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %92 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @FTS_REG_FAN_INPUT(i32 %94)
  %96 = call i32 @fts_read_byte(i32 %93, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %210

100:                                              ; preds = %90
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %103 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %109 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @FTS_REG_FAN_SOURCE(i32 %111)
  %113 = call i32 @fts_read_byte(i32 %110, i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %100
  br label %210

117:                                              ; preds = %100
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %120 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %138

125:                                              ; preds = %82
  %126 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %127 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 0, i32* %131, align 4
  %132 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %133 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %125, %117
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %78

142:                                              ; preds = %78
  %143 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %144 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @FTS_SENSOR_EVENT_REG, align 4
  %147 = call i32 @fts_read_byte(i32 %145, i32 %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %210

151:                                              ; preds = %142
  %152 = load i32, i32* %4, align 4
  %153 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %154 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 8
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %177, %151
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @FTS_NO_TEMP_SENSORS, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %155
  %160 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %161 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @FTS_REG_TEMP_INPUT(i32 %163)
  %165 = call i32 @fts_read_byte(i32 %162, i32 %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  br label %210

169:                                              ; preds = %159
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %172 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  br label %155

180:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %203, %180
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @FTS_NO_VOLT_SENSORS, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %206

185:                                              ; preds = %181
  %186 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %187 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @FTS_REG_VOLT(i32 %189)
  %191 = call i32 @fts_read_byte(i32 %188, i32 %190)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %210

195:                                              ; preds = %185
  %196 = load i32, i32* %4, align 4
  %197 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %198 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %197, i32 0, i32 7
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %196, i32* %202, align 4
  br label %203

203:                                              ; preds = %195
  %204 = load i32, i32* %3, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %3, align 4
  br label %181

206:                                              ; preds = %181
  %207 = load i64, i64* @jiffies, align 8
  %208 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %209 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %208, i32 0, i32 9
  store i64 %207, i64* %209, align 8
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %206, %194, %168, %150, %116, %99, %73, %61, %50, %32, %23
  %211 = load %struct.fts_data*, %struct.fts_data** %2, align 8
  %212 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %211, i32 0, i32 8
  %213 = call i32 @mutex_unlock(i32* %212)
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @fts_read_byte(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @FTS_REG_FAN_INPUT(i32) #1

declare dso_local i32 @FTS_REG_FAN_SOURCE(i32) #1

declare dso_local i32 @FTS_REG_TEMP_INPUT(i32) #1

declare dso_local i32 @FTS_REG_VOLT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
