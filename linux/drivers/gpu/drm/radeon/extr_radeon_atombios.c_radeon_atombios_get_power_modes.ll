; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_power_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_power_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.radeon_mode_info }
%struct.TYPE_8__ = type { i32, i32, i32, i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__*, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.radeon_mode_info = type { i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4
@VOLTAGE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_atombios_get_power_modes(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_mode_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 2
  store %struct.radeon_mode_info* %10, %struct.radeon_mode_info** %3, align 8
  %11 = load i32, i32* @DATA, align 4
  %12 = load i32, i32* @PowerPlayInfo, align 4
  %13 = call i32 @GetIndexIntoMasterTable(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @atom_parse_data_header(i32 %19, i32 %20, i32* null, i32* %6, i32* %7, i32* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %34 [
    i32 1, label %25
    i32 2, label %25
    i32 3, label %25
    i32 4, label %28
    i32 5, label %28
    i32 6, label %31
  ]

25:                                               ; preds = %23, %23, %23
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = call i32 @radeon_atombios_parse_power_table_1_3(%struct.radeon_device* %26)
  store i32 %27, i32* %8, align 4
  br label %35

28:                                               ; preds = %23, %23
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = call i32 @radeon_atombios_parse_power_table_4_5(%struct.radeon_device* %29)
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = call i32 @radeon_atombios_parse_power_table_6(%struct.radeon_device* %32)
  store i32 %33, i32* %8, align 4
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %31, %28, %25
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %170

39:                                               ; preds = %36
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.TYPE_9__* @kzalloc(i32 4, i32 %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %169

50:                                               ; preds = %39
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.TYPE_10__* @kcalloc(i32 1, i32 4, i32 %51)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %58, align 8
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  br i1 %66, label %67, label %168

67:                                               ; preds = %50
  %68 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  store i32 %68, i32* %76, align 8
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i32 %88, i32* %99, align 4
  %100 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i32 %103, i32* %114, align 8
  %115 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 0
  %125 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 4
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %132, align 8
  %133 = load i32, i32* @VOLTAGE_NONE, align 4
  %134 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 %133, i32* %145, align 8
  %146 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 16, i32* %153, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %156 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  %158 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 3
  store i64 0, i64* %165, align 8
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %67, %50
  br label %169

169:                                              ; preds = %168, %39
  br label %170

170:                                              ; preds = %169, %36
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 4
  %175 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %180 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 8
  %182 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  store i64 0, i64* %184, align 8
  %185 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %210

190:                                              ; preds = %170
  %191 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %192 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %208 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 3
  store i64 %206, i64* %209, align 8
  br label %214

210:                                              ; preds = %170
  %211 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %210, %190
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @radeon_atombios_parse_power_table_1_3(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_parse_power_table_4_5(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_parse_power_table_6(%struct.radeon_device*) #1

declare dso_local %struct.TYPE_9__* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
