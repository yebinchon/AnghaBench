; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_rlc.c_amdgpu_gfx_rlc_setup_cp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_rlc.c_amdgpu_gfx_rlc_setup_cp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.amdgpu_device*)* }
%struct.gfx_firmware_header_v1_0 = type { i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_gfx_rlc_setup_cp_table(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %12 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %13 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %14 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %15 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %21, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = call i32 %22(%struct.amdgpu_device* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %236, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %239

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %34
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %45, %struct.gfx_firmware_header_v1_0** %11, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %53 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = add nsw i32 %51, %56
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %3, align 8
  %60 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %61 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %65 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  store i32 %67, i32* %10, align 4
  br label %208

68:                                               ; preds = %34
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %79, %struct.gfx_firmware_header_v1_0** %12, align 8
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %12, align 8
  %87 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = add nsw i32 %85, %90
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i32*
  store i32* %93, i32** %3, align 8
  %94 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %12, align 8
  %95 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %12, align 8
  %99 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  store i32 %101, i32* %10, align 4
  br label %207

102:                                              ; preds = %68
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %136

105:                                              ; preds = %102
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %113, %struct.gfx_firmware_header_v1_0** %13, align 8
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %13, align 8
  %121 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = add nsw i32 %119, %124
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %3, align 8
  %128 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %13, align 8
  %129 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le32_to_cpu(i32 %130)
  store i32 %131, i32* %9, align 4
  %132 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %13, align 8
  %133 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le32_to_cpu(i32 %134)
  store i32 %135, i32* %10, align 4
  br label %206

136:                                              ; preds = %102
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 3
  br i1 %138, label %139, label %170

139:                                              ; preds = %136
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %141 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %147, %struct.gfx_firmware_header_v1_0** %14, align 8
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %14, align 8
  %155 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = add nsw i32 %153, %158
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i32*
  store i32* %161, i32** %3, align 8
  %162 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %14, align 8
  %163 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le32_to_cpu(i32 %164)
  store i32 %165, i32* %9, align 4
  %166 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %14, align 8
  %167 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le32_to_cpu(i32 %168)
  store i32 %169, i32* %10, align 4
  br label %205

170:                                              ; preds = %136
  %171 = load i32, i32* %5, align 4
  %172 = icmp eq i32 %171, 4
  br i1 %172, label %173, label %204

173:                                              ; preds = %170
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %175 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %181, %struct.gfx_firmware_header_v1_0** %15, align 8
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %15, align 8
  %189 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le32_to_cpu(i32 %191)
  %193 = add nsw i32 %187, %192
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to i32*
  store i32* %195, i32** %3, align 8
  %196 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %15, align 8
  %197 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @le32_to_cpu(i32 %198)
  store i32 %199, i32* %9, align 4
  %200 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %15, align 8
  %201 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @le32_to_cpu(i32 %202)
  store i32 %203, i32* %10, align 4
  br label %204

204:                                              ; preds = %173, %170
  br label %205

205:                                              ; preds = %204, %139
  br label %206

206:                                              ; preds = %205, %105
  br label %207

207:                                              ; preds = %206, %71
  br label %208

208:                                              ; preds = %207, %37
  store i32 0, i32* %6, align 4
  br label %209

209:                                              ; preds = %229, %208
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %232

213:                                              ; preds = %209
  %214 = load i32*, i32** %3, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le32_to_cpu(i32 %220)
  %222 = call i32 @cpu_to_le32(i32 %221)
  %223 = load i32*, i32** %4, align 8
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  store volatile i32 %222, i32* %228, align 4
  br label %229

229:                                              ; preds = %213
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  br label %209

232:                                              ; preds = %209
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  br label %30

239:                                              ; preds = %30
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
