; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_7__, %struct.amdgpu_ring**, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i64, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, %struct.TYPE_8__*, i64, i64, %struct.amdgpu_device* }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.amdgpu_irq_src = type { i32 }

@amdgpu_sched_hw_submission = common dso_local global i32 0, align 4
@AMDGPU_RING_TYPE_KIQ = common dso_local global i64 0, align 8
@AMDGPU_MAX_RINGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"(%d) ring rptr_offs wb alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"(%d) ring wptr_offs wb alloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"(%d) ring fence_offs wb alloc failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"(%d) ring trail_fence_offs wb alloc failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"(%d) ring cond_exec_polling wb alloc failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed initializing fences (%d).\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"(%d) ring create failed\0A\00", align 1
@DRM_SCHED_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@DRM_SCHED_PRIORITY_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Failed to register debugfs file for rings !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device* %0, %struct.amdgpu_ring* %1, i32 %2, %struct.amdgpu_irq_src* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_irq_src*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.amdgpu_irq_src* %3, %struct.amdgpu_irq_src** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @amdgpu_sched_hw_submission, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i32 0, i32 18
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AMDGPU_RING_TYPE_KIQ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @max(i32 %24, i32 256)
  store i32 %25, i32* %14, align 4
  br label %37

26:                                               ; preds = %5
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = icmp eq %struct.amdgpu_ring* %27, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 256, i32* %14, align 4
  br label %36

36:                                               ; preds = %35, %26
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 21
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %39, align 8
  %41 = icmp eq %struct.amdgpu_device* %40, null
  br i1 %41, label %42, label %77

42:                                               ; preds = %37
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AMDGPU_MAX_RINGS, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %312

51:                                               ; preds = %42
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %53, i32 0, i32 21
  store %struct.amdgpu_device* %52, %struct.amdgpu_device** %54, align 8
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %60 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 3
  %64 = load %struct.amdgpu_ring**, %struct.amdgpu_ring*** %63, align 8
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %64, i64 %67
  store %struct.amdgpu_ring* %61, %struct.amdgpu_ring** %68, align 8
  %69 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @amdgpu_fence_driver_init_ring(%struct.amdgpu_ring* %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %51
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %6, align 4
  br label %312

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %80 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %79, i32 0, i32 1
  %81 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %78, i32* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %312

91:                                               ; preds = %77
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %93 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %94 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %93, i32 0, i32 2
  %95 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %92, i32* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %6, align 4
  br label %312

105:                                              ; preds = %91
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %107 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %108 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %107, i32 0, i32 3
  %109 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %106, i32* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %6, align 4
  br label %312

119:                                              ; preds = %105
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %121 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %122 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %121, i32 0, i32 4
  %123 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %120, i32* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %6, align 4
  br label %312

133:                                              ; preds = %119
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %139 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %140, 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %137, %142
  %144 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %145 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %144, i32 0, i32 20
  store i64 %143, i64* %145, align 8
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %151 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %156 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %155, i32 0, i32 5
  store i32* %154, i32** %156, align 8
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %158 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %159 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %158, i32 0, i32 6
  %160 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %157, i32* %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %133
  %164 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %165 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @dev_err(i32 %166, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %6, align 4
  br label %312

170:                                              ; preds = %133
  %171 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %172 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %176 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %177, 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %174, %179
  %181 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %182 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %181, i32 0, i32 19
  store i64 %180, i64* %182, align 8
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %184 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %188 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %193 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %192, i32 0, i32 7
  store i32* %191, i32** %193, align 8
  %194 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %195 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %194, i32 0, i32 7
  %196 = load i32*, i32** %195, align 8
  store i32 1, i32* %196, align 4
  %197 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %198 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %10, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @amdgpu_fence_driver_start_ring(%struct.amdgpu_ring* %197, %struct.amdgpu_irq_src* %198, i32 %199)
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %170
  %204 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %205 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @dev_err(i32 %206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %6, align 4
  br label %312

210:                                              ; preds = %170
  %211 = load i32, i32* %9, align 4
  %212 = mul i32 %211, 4
  %213 = load i32, i32* %14, align 4
  %214 = mul i32 %212, %213
  %215 = call i32 @roundup_pow_of_two(i32 %214)
  %216 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %217 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %216, i32 0, i32 8
  store i32 %215, i32* %217, align 8
  %218 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %219 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = sdiv i32 %220, 4
  %222 = sub nsw i32 %221, 1
  %223 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %224 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %223, i32 0, i32 9
  store i32 %222, i32* %224, align 4
  %225 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %226 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %225, i32 0, i32 18
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %210
  br label %237

232:                                              ; preds = %210
  %233 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %234 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  br label %237

237:                                              ; preds = %232, %231
  %238 = phi i64 [ -1, %231 ], [ %236, %232 ]
  %239 = trunc i64 %238 to i32
  %240 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %241 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %240, i32 0, i32 10
  store i32 %239, i32* %241, align 8
  %242 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %243 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %242, i32 0, i32 17
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %279

246:                                              ; preds = %237
  %247 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %248 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %249 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %248, i32 0, i32 8
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %252 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %251, i32 0, i32 18
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %250, %255
  %257 = load i32, i32* @PAGE_SIZE, align 4
  %258 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %259 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %260 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %259, i32 0, i32 17
  %261 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %262 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %261, i32 0, i32 16
  %263 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %264 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %263, i32 0, i32 15
  %265 = bitcast i32* %264 to i8**
  %266 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %247, i32 %256, i32 %257, i32 %258, i32** %260, i32* %262, i8** %265)
  store i32 %266, i32* %12, align 4
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %246
  %270 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %271 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = call i32 @dev_err(i32 %272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* %12, align 4
  store i32 %275, i32* %6, align 4
  br label %312

276:                                              ; preds = %246
  %277 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %278 = call i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring* %277)
  br label %279

279:                                              ; preds = %276, %237
  %280 = load i32, i32* %9, align 4
  %281 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %282 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %281, i32 0, i32 11
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* @DRM_SCHED_PRIORITY_NORMAL, align 4
  %284 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %285 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %284, i32 0, i32 14
  store i32 %283, i32* %285, align 4
  %286 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %287 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %286, i32 0, i32 13
  %288 = call i32 @mutex_init(i32* %287)
  store i32 0, i32* %13, align 4
  br label %289

289:                                              ; preds = %301, %279
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* @DRM_SCHED_PRIORITY_MAX, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %304

293:                                              ; preds = %289
  %294 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %295 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %294, i32 0, i32 12
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = call i32 @atomic_set(i32* %299, i32 0)
  br label %301

301:                                              ; preds = %293
  %302 = load i32, i32* %13, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %13, align 4
  br label %289

304:                                              ; preds = %289
  %305 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %306 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %307 = call i64 @amdgpu_debugfs_ring_init(%struct.amdgpu_device* %305, %struct.amdgpu_ring* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %311

311:                                              ; preds = %309, %304
  store i32 0, i32* %6, align 4
  br label %312

312:                                              ; preds = %311, %269, %203, %163, %126, %112, %98, %84, %74, %48
  %313 = load i32, i32* %6, align 4
  ret i32 %313
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @amdgpu_fence_driver_init_ring(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_fence_driver_start_ring(%struct.amdgpu_ring*, %struct.amdgpu_irq_src*, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32**, i32*, i8**) #1

declare dso_local i32 @amdgpu_ring_clear_ring(%struct.amdgpu_ring*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @amdgpu_debugfs_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
