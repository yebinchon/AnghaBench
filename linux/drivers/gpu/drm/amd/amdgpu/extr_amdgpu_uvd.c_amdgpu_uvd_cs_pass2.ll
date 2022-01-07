; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_pass2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_pass2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_uvd_cs_ctx = type { i64*, i32, %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.amdgpu_bo_va_mapping = type { i64, i64 }
%struct.amdgpu_bo = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Can't find BO for addr 0x%08Lx\0A\00", align 1
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"buffer (%d) to small (%d / %d)!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid UVD command %X!\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"reloc %LX-%LX crossing 256MB boundary!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"msg/fb buffer %LX-%LX out of 256MB segment!\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Message needed before other commands are send!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_uvd_cs_ctx*)* @amdgpu_uvd_cs_pass2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_uvd_cs_pass2(%struct.amdgpu_uvd_cs_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_uvd_cs_ctx*, align 8
  %4 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %5 = alloca %struct.amdgpu_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_uvd_cs_ctx* %0, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %11 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %12 = call i64 @amdgpu_uvd_get_addr_from_ctx(%struct.amdgpu_uvd_cs_ctx* %11)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @amdgpu_cs_find_mapping(%struct.TYPE_10__* %15, i64 %16, %struct.amdgpu_bo** %5, %struct.amdgpu_bo_va_mapping** %4)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i64, i64* %9, align 8
  %22 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %2, align 4
  br label %235

24:                                               ; preds = %1
  %25 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %26 = call i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @AMDGPU_GPU_PAGE_SIZE, align 8
  %37 = mul nsw i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AMDGPU_GPU_PAGE_SIZE, align 8
  %44 = mul nsw i64 %42, %43
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @lower_32_bits(i64 %59)
  %61 = call i32 @amdgpu_set_ib_value(%struct.TYPE_10__* %52, i32 %55, i32 %58, i32 %60)
  %62 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @upper_32_bits(i64 %71)
  %73 = call i32 @amdgpu_set_ib_value(%struct.TYPE_10__* %64, i32 %67, i32 %70, i32 %72)
  %74 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @amdgpu_get_ib_value(%struct.TYPE_10__* %76, i32 %79, i32 %82)
  %84 = ashr i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %116

87:                                               ; preds = %24
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %7, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %90, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %87
  %100 = load i32, i32* %6, align 4
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub nsw i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %104, i64 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %235

115:                                              ; preds = %87
  br label %157

116:                                              ; preds = %24
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 518
  br i1 %118, label %119, label %144

119:                                              ; preds = %116
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %7, align 8
  %122 = sub nsw i64 %120, %121
  %123 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %124 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %122, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %119
  %130 = load i32, i32* %6, align 4
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %7, align 8
  %133 = sub nsw i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %136 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 4
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %134, i64 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %235

143:                                              ; preds = %119
  br label %156

144:                                              ; preds = %116
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 256
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 516
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %6, align 4
  %152 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %235

155:                                              ; preds = %147, %144
  br label %156

156:                                              ; preds = %155, %143
  br label %157

157:                                              ; preds = %156, %115
  %158 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %159 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %209, label %167

167:                                              ; preds = %157
  %168 = load i64, i64* %7, align 8
  %169 = ashr i64 %168, 28
  %170 = load i64, i64* %8, align 8
  %171 = sub nsw i64 %170, 1
  %172 = ashr i64 %171, 28
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* %8, align 8
  %177 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %175, i64 %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %235

180:                                              ; preds = %167
  %181 = load i32, i32* %6, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %6, align 4
  %185 = icmp eq i32 %184, 3
  br i1 %185, label %186, label %208

186:                                              ; preds = %183, %180
  %187 = load i64, i64* %7, align 8
  %188 = ashr i64 %187, 28
  %189 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %190 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %189, i32 0, i32 2
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = ashr i32 %198, 28
  %200 = sext i32 %199 to i64
  %201 = icmp ne i64 %188, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %186
  %203 = load i64, i64* %7, align 8
  %204 = load i64, i64* %8, align 8
  %205 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %203, i64 %204)
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %2, align 4
  br label %235

208:                                              ; preds = %186, %183
  br label %209

209:                                              ; preds = %208, %157
  %210 = load i32, i32* %6, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %209
  %213 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %214 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %213, i32 0, i32 1
  store i32 1, i32* %214, align 8
  %215 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %216 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %217 = load i64, i64* %9, align 8
  %218 = call i32 @amdgpu_uvd_cs_msg(%struct.amdgpu_uvd_cs_ctx* %215, %struct.amdgpu_bo* %216, i64 %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %212
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %2, align 4
  br label %235

223:                                              ; preds = %212
  br label %234

224:                                              ; preds = %209
  %225 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %3, align 8
  %226 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %224
  %230 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %231 = load i32, i32* @EINVAL, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %2, align 4
  br label %235

233:                                              ; preds = %224
  br label %234

234:                                              ; preds = %233, %223
  store i32 0, i32* %2, align 4
  br label %235

235:                                              ; preds = %234, %229, %221, %202, %174, %150, %129, %99, %20
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i64 @amdgpu_uvd_get_addr_from_ctx(%struct.amdgpu_uvd_cs_ctx*) #1

declare dso_local i32 @amdgpu_cs_find_mapping(%struct.TYPE_10__*, i64, %struct.amdgpu_bo**, %struct.amdgpu_bo_va_mapping**) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_set_ib_value(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @amdgpu_get_ib_value(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @amdgpu_uvd_cs_msg(%struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_bo*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
