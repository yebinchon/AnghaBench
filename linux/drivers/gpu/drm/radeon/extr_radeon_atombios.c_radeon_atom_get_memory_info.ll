; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_memory_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_memory_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.atom_memory_info = type { i32, i32 }
%union.vram_info = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i64 }

@DATA = common dso_local global i32 0, align 4
@VRAM_Info = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_memory_info(%struct.radeon_device* %0, i32 %1, %struct.atom_memory_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atom_memory_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.vram_info*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.atom_memory_info* %2, %struct.atom_memory_info** %7, align 8
  %18 = load i32, i32* @DATA, align 4
  %19 = load i32, i32* @VRAM_Info, align 4
  %20 = call i32 @GetIndexIntoMasterTable(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.atom_memory_info*, %struct.atom_memory_info** %7, align 8
  %22 = call i32 @memset(%struct.atom_memory_info* %21, i32 0, i32 8)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @atom_parse_data_header(%struct.TYPE_18__* %26, i32 %27, i64* %13, i32* %9, i32* %10, i64* %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %236

30:                                               ; preds = %3
  %31 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = add nsw i64 %36, %37
  %39 = inttoptr i64 %38 to %union.vram_info*
  store %union.vram_info* %39, %union.vram_info** %14, align 8
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %229 [
    i32 1, label %41
    i32 2, label %164
  ]

41:                                               ; preds = %30
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %157 [
    i32 3, label %43
    i32 4, label %101
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %6, align 4
  %45 = load %union.vram_info*, %union.vram_info** %14, align 8
  %46 = bitcast %union.vram_info* %45 to %struct.TYPE_11__*
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %97

50:                                               ; preds = %43
  %51 = load %union.vram_info*, %union.vram_info** %14, align 8
  %52 = bitcast %union.vram_info* %51 to %struct.TYPE_11__*
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %15, align 8
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %79, %50
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %239

69:                                               ; preds = %60
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %71 = bitcast %struct.TYPE_17__* %70 to i32*
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = bitcast i32* %77 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %15, align 8
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %56

82:                                               ; preds = %56
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  %88 = load %struct.atom_memory_info*, %struct.atom_memory_info** %7, align 8
  %89 = getelementptr inbounds %struct.atom_memory_info, %struct.atom_memory_info* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 240
  %95 = load %struct.atom_memory_info*, %struct.atom_memory_info** %7, align 8
  %96 = getelementptr inbounds %struct.atom_memory_info, %struct.atom_memory_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %100

97:                                               ; preds = %43
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %239

100:                                              ; preds = %82
  br label %163

101:                                              ; preds = %41
  %102 = load i32, i32* %6, align 4
  %103 = load %union.vram_info*, %union.vram_info** %14, align 8
  %104 = bitcast %union.vram_info* %103 to %struct.TYPE_13__*
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %153

108:                                              ; preds = %101
  %109 = load %union.vram_info*, %union.vram_info** %14, align 8
  %110 = bitcast %union.vram_info* %109 to %struct.TYPE_13__*
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %16, align 8
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %137, %108
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %114
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @le16_to_cpu(i32 %121)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %239

127:                                              ; preds = %118
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %129 = bitcast %struct.TYPE_16__* %128 to i32*
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le16_to_cpu(i32 %132)
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = bitcast i32* %135 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** %16, align 8
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %114

140:                                              ; preds = %114
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 15
  %145 = load %struct.atom_memory_info*, %struct.atom_memory_info** %7, align 8
  %146 = getelementptr inbounds %struct.atom_memory_info, %struct.atom_memory_info* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 240
  %151 = load %struct.atom_memory_info*, %struct.atom_memory_info** %7, align 8
  %152 = getelementptr inbounds %struct.atom_memory_info, %struct.atom_memory_info* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %156

153:                                              ; preds = %101
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %239

156:                                              ; preds = %140
  br label %163

157:                                              ; preds = %41
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %158, i32 %159)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %239

163:                                              ; preds = %156, %100
  br label %235

164:                                              ; preds = %30
  %165 = load i32, i32* %10, align 4
  switch i32 %165, label %222 [
    i32 1, label %166
  ]

166:                                              ; preds = %164
  %167 = load i32, i32* %6, align 4
  %168 = load %union.vram_info*, %union.vram_info** %14, align 8
  %169 = bitcast %union.vram_info* %168 to %struct.TYPE_14__*
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %167, %171
  br i1 %172, label %173, label %218

173:                                              ; preds = %166
  %174 = load %union.vram_info*, %union.vram_info** %14, align 8
  %175 = bitcast %union.vram_info* %174 to %struct.TYPE_14__*
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %178, %struct.TYPE_15__** %17, align 8
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %202, %173
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %205

183:                                              ; preds = %179
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @le16_to_cpu(i32 %186)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %239

192:                                              ; preds = %183
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %194 = bitcast %struct.TYPE_15__* %193 to i32*
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @le16_to_cpu(i32 %197)
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %194, i64 %199
  %201 = bitcast i32* %200 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %201, %struct.TYPE_15__** %17, align 8
  br label %202

202:                                              ; preds = %192
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %179

205:                                              ; preds = %179
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 15
  %210 = load %struct.atom_memory_info*, %struct.atom_memory_info** %7, align 8
  %211 = getelementptr inbounds %struct.atom_memory_info, %struct.atom_memory_info* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 240
  %216 = load %struct.atom_memory_info*, %struct.atom_memory_info** %7, align 8
  %217 = getelementptr inbounds %struct.atom_memory_info, %struct.atom_memory_info* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  br label %221

218:                                              ; preds = %166
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %4, align 4
  br label %239

221:                                              ; preds = %205
  br label %228

222:                                              ; preds = %164
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %4, align 4
  br label %239

228:                                              ; preds = %221
  br label %235

229:                                              ; preds = %30
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %230, i32 %231)
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %4, align 4
  br label %239

235:                                              ; preds = %228, %163
  store i32 0, i32* %4, align 4
  br label %239

236:                                              ; preds = %3
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %236, %235, %229, %222, %218, %189, %157, %153, %124, %97, %66
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.atom_memory_info*, i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_18__*, i32, i64*, i32*, i32*, i64*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
