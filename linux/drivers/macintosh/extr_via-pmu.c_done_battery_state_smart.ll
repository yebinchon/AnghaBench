; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_done_battery_state_smart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_done_battery_state_smart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.adb_request = type { i32*, i32 }

@PMU_BATT_TYPE_SMART = common dso_local global i32 0, align 4
@PMU_PWR_AC_PRESENT = common dso_local global i32 0, align 4
@pmu_power_flags = common dso_local global i32 0, align 4
@PMU_BATT_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"pmu.c: unrecognized battery info, len: %d, %4ph\0A\00", align 1
@PMU_BATT_CHARGING = common dso_local global i32 0, align 4
@pmu_batteries = common dso_local global %struct.TYPE_2__* null, align 8
@pmu_cur_battery = common dso_local global i64 0, align 8
@pmu_battery_count = common dso_local global i64 0, align 8
@async_req_locks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adb_request*)* @done_battery_state_smart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done_battery_state_smart(%struct.adb_request* %0) #0 {
  %2 = alloca %struct.adb_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adb_request* %0, %struct.adb_request** %2, align 8
  %8 = load i32, i32* @PMU_BATT_TYPE_SMART, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %10 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %18 = load i32, i32* @pmu_power_flags, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @pmu_power_flags, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @pmu_power_flags, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* @pmu_power_flags, align 4
  br label %25

25:                                               ; preds = %20, %16
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %26 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %27 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %118

33:                                               ; preds = %25
  %34 = load i32, i32* @PMU_BATT_PRESENT, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %38 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %109 [
    i32 3, label %42
    i32 4, label %42
    i32 5, label %65
  ]

42:                                               ; preds = %33, %33
  %43 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %44 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %49 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %54 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = bitcast i32* %56 to i8*
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  store i32 %59, i32* %4, align 4
  %60 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %61 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  br label %117

65:                                               ; preds = %33
  %66 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %67 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  %72 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %73 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %71, %76
  store i32 %77, i32* %5, align 4
  %78 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %79 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %85 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %83, %88
  store i32 %89, i32* %6, align 4
  %90 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %91 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 6
  %94 = bitcast i32* %93 to i16*
  %95 = load i16, i16* %94, align 2
  %96 = sext i16 %95 to i32
  store i32 %96, i32* %4, align 4
  %97 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %98 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 8
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %104 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 9
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %102, %107
  store i32 %108, i32* %7, align 4
  br label %117

109:                                              ; preds = %33
  %110 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %111 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %114 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %112, i32* %115)
  br label %117

117:                                              ; preds = %109, %65, %42
  br label %118

118:                                              ; preds = %117, %25
  %119 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %120 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = load i32, i32* %4, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* @PMU_BATT_CHARGING, align 4
  %131 = load i32, i32* %3, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %126, %118
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %136 = load i64, i64* @pmu_cur_battery, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %141 = load i64, i64* @pmu_cur_battery, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %146 = load i64, i64* @pmu_cur_battery, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %151 = load i64, i64* @pmu_cur_battery, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %156 = load i64, i64* @pmu_cur_battery, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 4
  store i32 %154, i32* %158, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %194

161:                                              ; preds = %133
  %162 = load %struct.adb_request*, %struct.adb_request** %2, align 8
  %163 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %161
  %170 = load i32, i32* %4, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %5, align 4
  %175 = sub i32 %173, %174
  %176 = mul i32 %175, 3600
  %177 = load i32, i32* %4, align 4
  %178 = udiv i32 %176, %177
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %180 = load i64, i64* @pmu_cur_battery, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 5
  store i32 %178, i32* %182, align 4
  br label %193

183:                                              ; preds = %169, %161
  %184 = load i32, i32* %5, align 4
  %185 = mul i32 %184, 3600
  %186 = load i32, i32* %4, align 4
  %187 = sub nsw i32 0, %186
  %188 = udiv i32 %185, %187
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %190 = load i64, i64* @pmu_cur_battery, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 5
  store i32 %188, i32* %192, align 4
  br label %193

193:                                              ; preds = %183, %172
  br label %199

194:                                              ; preds = %133
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmu_batteries, align 8
  %196 = load i64, i64* @pmu_cur_battery, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 5
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %194, %193
  %200 = load i64, i64* @pmu_cur_battery, align 8
  %201 = add i64 %200, 1
  %202 = load i64, i64* @pmu_battery_count, align 8
  %203 = urem i64 %201, %202
  store i64 %203, i64* @pmu_cur_battery, align 8
  %204 = call i32 @clear_bit(i32 0, i32* @async_req_locks)
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
