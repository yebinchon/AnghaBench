; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_voltage_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_voltage_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.atom_voltage_table = type { i32, i32, i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, i8* }
%union.voltage_object_info = type { i32 }
%union.voltage_object = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_16__ }

@DATA = common dso_local global i32 0, align 4
@VoltageObjectInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"old table version %d, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_VOLTAGE_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown voltage object table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_voltage_table(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.atom_voltage_table* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atom_voltage_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.voltage_object_info*, align 8
  %18 = alloca %union.voltage_object*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.atom_voltage_table* %3, %struct.atom_voltage_table** %9, align 8
  %23 = load i32, i32* @DATA, align 4
  %24 = load i32, i32* @VoltageObjectInfo, align 4
  %25 = call i32 @GetIndexIntoMasterTable(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  store %union.voltage_object* null, %union.voltage_object** %18, align 8
  %26 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @atom_parse_data_header(%struct.TYPE_18__* %29, i32 %30, i64* %14, i32* %11, i32* %12, i64* %13)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %231

33:                                               ; preds = %4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add nsw i64 %39, %40
  %42 = inttoptr i64 %41 to %union.voltage_object_info*
  store %union.voltage_object_info* %42, %union.voltage_object_info** %17, align 8
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %226 [
    i32 1, label %44
    i32 2, label %44
    i32 3, label %139
  ]

44:                                               ; preds = %33, %33
  %45 = load i32, i32* %12, align 4
  switch i32 %45, label %134 [
    i32 1, label %46
    i32 2, label %52
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %234

52:                                               ; preds = %44
  %53 = load %union.voltage_object_info*, %union.voltage_object_info** %17, align 8
  %54 = bitcast %union.voltage_object_info* %53 to i32*
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @atom_lookup_voltage_object_v2(i32* %54, i32 %55)
  %57 = inttoptr i64 %56 to %union.voltage_object*
  store %union.voltage_object* %57, %union.voltage_object** %18, align 8
  %58 = load %union.voltage_object*, %union.voltage_object** %18, align 8
  %59 = icmp ne %union.voltage_object* %58, null
  br i1 %59, label %60, label %133

60:                                               ; preds = %52
  %61 = load %union.voltage_object*, %union.voltage_object** %18, align 8
  %62 = bitcast %union.voltage_object* %61 to %struct.TYPE_11__*
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %19, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MAX_VOLTAGE_ENTRIES, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %234

72:                                               ; preds = %60
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 0
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %20, align 8
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %124, %72
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %127

83:                                               ; preds = %77
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le16_to_cpu(i32 %86)
  %88 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %89 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %88, i32 0, i32 3
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  store i8* %87, i8** %94, align 8
  %95 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %96 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %97 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %96, i32 0, i32 3
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %106 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %105, i32 0, i32 3
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %113 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %112, i32 0, i32 2
  %114 = call i32 @radeon_atom_get_voltage_gpio_settings(%struct.radeon_device* %95, i8* %103, i32 %104, i8** %111, i8** %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %83
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %5, align 4
  br label %234

119:                                              ; preds = %83
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %121 = bitcast %struct.TYPE_15__* %120 to i32*
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = bitcast i32* %122 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %123, %struct.TYPE_15__** %20, align 8
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %77

127:                                              ; preds = %77
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %132 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  store i32 0, i32* %5, align 4
  br label %234

133:                                              ; preds = %52
  br label %138

134:                                              ; preds = %44
  %135 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %234

138:                                              ; preds = %133
  br label %230

139:                                              ; preds = %33
  %140 = load i32, i32* %12, align 4
  switch i32 %140, label %221 [
    i32 1, label %141
  ]

141:                                              ; preds = %139
  %142 = load %union.voltage_object_info*, %union.voltage_object_info** %17, align 8
  %143 = bitcast %union.voltage_object_info* %142 to i32*
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i64 @atom_lookup_voltage_object_v3(i32* %143, i32 %144, i32 %145)
  %147 = inttoptr i64 %146 to %union.voltage_object*
  store %union.voltage_object* %147, %union.voltage_object** %18, align 8
  %148 = load %union.voltage_object*, %union.voltage_object** %18, align 8
  %149 = icmp ne %union.voltage_object* %148, null
  br i1 %149, label %150, label %220

150:                                              ; preds = %141
  %151 = load %union.voltage_object*, %union.voltage_object** %18, align 8
  %152 = bitcast %union.voltage_object* %151 to %struct.TYPE_12__*
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store %struct.TYPE_17__* %153, %struct.TYPE_17__** %21, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @MAX_VOLTAGE_ENTRIES, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %234

162:                                              ; preds = %150
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 0
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %22, align 8
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %200, %162
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %203

173:                                              ; preds = %167
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @le16_to_cpu(i32 %176)
  %178 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %179 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %178, i32 0, i32 3
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  store i8* %177, i8** %184, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @le32_to_cpu(i32 %187)
  %189 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %190 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %189, i32 0, i32 3
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  store i8* %188, i8** %195, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %197 = bitcast %struct.TYPE_14__* %196 to i32*
  %198 = getelementptr inbounds i32, i32* %197, i64 8
  %199 = bitcast i32* %198 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %199, %struct.TYPE_14__** %22, align 8
  br label %200

200:                                              ; preds = %173
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %167

203:                                              ; preds = %167
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i8* @le32_to_cpu(i32 %206)
  %208 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %209 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %208, i32 0, i32 2
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %214 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.atom_voltage_table*, %struct.atom_voltage_table** %9, align 8
  %219 = getelementptr inbounds %struct.atom_voltage_table, %struct.atom_voltage_table* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  store i32 0, i32* %5, align 4
  br label %234

220:                                              ; preds = %141
  br label %225

221:                                              ; preds = %139
  %222 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %5, align 4
  br label %234

225:                                              ; preds = %220
  br label %230

226:                                              ; preds = %33
  %227 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %5, align 4
  br label %234

230:                                              ; preds = %225, %138
  br label %231

231:                                              ; preds = %230, %4
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %231, %226, %221, %203, %159, %134, %127, %117, %69, %46
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_18__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @atom_lookup_voltage_object_v2(i32*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @radeon_atom_get_voltage_gpio_settings(%struct.radeon_device*, i8*, i32, i8**, i8**) #1

declare dso_local i64 @atom_lookup_voltage_object_v3(i32*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
