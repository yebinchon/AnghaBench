; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_mqd_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_mqd_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.amdgpu_ring*, %struct.TYPE_6__, %struct.amdgpu_ring*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8** }
%struct.TYPE_6__ = type { i8** }
%struct.amdgpu_ring = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.amdgpu_ring }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to create ring mqd ob (%d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@AMDGPU_MAX_COMPUTE_RINGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"no memory to create MQD backup for ring %s\0A\00", align 1
@CHIP_NAVI10 = common dso_local global i64 0, align 8
@amdgpu_async_gfx_ring = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create ring mqd bo (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gfx_mqd_sw_init(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.amdgpu_ring* null, %struct.amdgpu_ring** %6, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.amdgpu_ring* %12, %struct.amdgpu_ring** %6, align 8
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %2
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 3
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 2
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 1
  %28 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %18, i32 %19, i32 %20, i32 %21, i32* %23, i32* %25, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %17
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %230

38:                                               ; preds = %17
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc(i32 %39, i32 %40)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* @AMDGPU_MAX_COMPUTE_RINGS, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* %41, i8** %48, align 8
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* @AMDGPU_MAX_COMPUTE_RINGS, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %38
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %58, %38
  br label %67

67:                                               ; preds = %66, %2
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CHIP_NAVI10, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %153

73:                                               ; preds = %67
  %74 = load i64, i64* @amdgpu_async_gfx_ring, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %153

76:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %149, %76
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %152

84:                                               ; preds = %77
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %88, i64 %90
  store %struct.amdgpu_ring* %91, %struct.amdgpu_ring** %6, align 8
  %92 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %93 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %148, label %96

96:                                               ; preds = %84
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %101 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %102 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %101, i32 0, i32 3
  %103 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %104 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %103, i32 0, i32 2
  %105 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %106 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %105, i32 0, i32 1
  %107 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %97, i32 %98, i32 %99, i32 %100, i32* %102, i32* %104, i32* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %96
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @dev_warn(i32 %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %230

117:                                              ; preds = %96
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i8* @kmalloc(i32 %118, i32 %119)
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %120, i8** %128, align 8
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %117
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %141 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %144 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_warn(i32 %142, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %139, %117
  br label %148

148:                                              ; preds = %147, %84
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %77

152:                                              ; preds = %77
  br label %153

153:                                              ; preds = %152, %73, %67
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %226, %153
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %155, %159
  br i1 %160, label %161, label %229

161:                                              ; preds = %154
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %163 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %165, i64 %167
  store %struct.amdgpu_ring* %168, %struct.amdgpu_ring** %6, align 8
  %169 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %170 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %225, label %173

173:                                              ; preds = %161
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @PAGE_SIZE, align 4
  %177 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %178 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %179 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %178, i32 0, i32 3
  %180 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %181 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %180, i32 0, i32 2
  %182 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %183 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %182, i32 0, i32 1
  %184 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %174, i32 %175, i32 %176, i32 %177, i32* %179, i32* %181, i32* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %173
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %189 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @dev_warn(i32 %190, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  br label %230

194:                                              ; preds = %173
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @GFP_KERNEL, align 4
  %197 = call i8* @kmalloc(i32 %195, i32 %196)
  %198 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %199 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i8**, i8*** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  store i8* %197, i8** %205, align 8
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %207 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i8**, i8*** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %224, label %216

216:                                              ; preds = %194
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %218 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %221 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @dev_warn(i32 %219, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %216, %194
  br label %225

225:                                              ; preds = %224, %161
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %154

229:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %229, %187, %110, %31
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
