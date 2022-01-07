; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_drm_legacy_addbufs_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_bufs.c_drm_legacy_addbufs_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64, %struct.drm_device_dma* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.drm_device_dma = type { i32, i32, i32, i64, i32, %struct.drm_buf**, %struct.drm_buf_entry* }
%struct.drm_buf = type { i32, i32, i32, i64, i8*, i32, i32, i32*, i64, i64, i32*, i64, i64 }
%struct.drm_buf_entry = type { i32, i32, i32, i64, %struct.drm_buf* }
%struct.drm_buf_desc = type { i32, i32, i32, i64 }

@DRIVER_SG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@_DRM_PAGE_ALIGN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"count:      %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"order:      %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"size:       %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"agp_offset: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"alignment:  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"page_order: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"total:      %d\0A\00", align 1
@DRM_MIN_ORDER = common dso_local global i32 0, align 4
@DRM_MAX_ORDER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"buffer %d @ %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"byte_count: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"dma->buf_count : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"entry->buf_count : %d\0A\00", align 1
@_DRM_DMA_USE_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_buf_desc*)* @drm_legacy_addbufs_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_legacy_addbufs_sg(%struct.drm_device* %0, %struct.drm_buf_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_buf_desc*, align 8
  %6 = alloca %struct.drm_device_dma*, align 8
  %7 = alloca %struct.drm_buf_entry*, align 8
  %8 = alloca %struct.drm_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.drm_buf**, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_buf_desc* %1, %struct.drm_buf_desc** %5, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 6
  %22 = load %struct.drm_device_dma*, %struct.drm_device_dma** %21, align 8
  store %struct.drm_device_dma* %22, %struct.drm_device_dma** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load i32, i32* @DRIVER_SG, align 4
  %25 = call i32 @drm_core_check_feature(%struct.drm_device* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %427

30:                                               ; preds = %2
  %31 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %32 = icmp ne %struct.drm_device_dma* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %427

36:                                               ; preds = %30
  %37 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %38 = call i32 @capable(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %427

43:                                               ; preds = %36
  %44 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %45 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %48 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @order_base_2(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 1, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %54 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @_DRM_PAGE_ALIGN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @PAGE_ALIGN(i32 %60)
  br label %64

62:                                               ; preds = %43
  %63 = load i32, i32* %13, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %61, %59 ], [ %63, %62 ]
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = sub nsw i32 %66, %67
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = sub nsw i32 %71, %72
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 0, %74 ]
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* %15, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %80 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %81 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* %10, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @DRM_MIN_ORDER, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %75
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @DRM_MAX_ORDER, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %75
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %427

108:                                              ; preds = %101
  %109 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 4
  %111 = call i32 @spin_lock(i32* %110)
  %112 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %113 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %118 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %117, i32 0, i32 4
  %119 = call i32 @spin_unlock(i32* %118)
  %120 = load i32, i32* @EBUSY, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %427

122:                                              ; preds = %108
  %123 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 0
  %125 = call i32 @atomic_inc(i32* %124)
  %126 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %127 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %126, i32 0, i32 4
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 1
  %131 = call i32 @mutex_lock(i32* %130)
  %132 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %133 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %132, i32 0, i32 6
  %134 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %134, i64 %136
  store %struct.drm_buf_entry* %137, %struct.drm_buf_entry** %7, align 8
  %138 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %139 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %122
  %143 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %144 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %143, i32 0, i32 1
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %147 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %146, i32 0, i32 0
  %148 = call i32 @atomic_dec(i32* %147)
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %427

151:                                              ; preds = %122
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = icmp sgt i32 %155, 4096
  br i1 %156, label %157, label %166

157:                                              ; preds = %154, %151
  %158 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %159 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %158, i32 0, i32 1
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %162 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %161, i32 0, i32 0
  %163 = call i32 @atomic_dec(i32* %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %427

166:                                              ; preds = %154
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call %struct.drm_buf* @kcalloc(i32 %167, i32 88, i32 %168)
  %170 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %171 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %170, i32 0, i32 4
  store %struct.drm_buf* %169, %struct.drm_buf** %171, align 8
  %172 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %173 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %172, i32 0, i32 4
  %174 = load %struct.drm_buf*, %struct.drm_buf** %173, align 8
  %175 = icmp ne %struct.drm_buf* %174, null
  br i1 %175, label %185, label %176

176:                                              ; preds = %166
  %177 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %178 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %177, i32 0, i32 1
  %179 = call i32 @mutex_unlock(i32* %178)
  %180 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 0
  %182 = call i32 @atomic_dec(i32* %181)
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %427

185:                                              ; preds = %166
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %188 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %191 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  store i64 0, i64* %9, align 8
  br label %192

192:                                              ; preds = %289, %185
  %193 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %194 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %310

198:                                              ; preds = %192
  %199 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %200 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %199, i32 0, i32 4
  %201 = load %struct.drm_buf*, %struct.drm_buf** %200, align 8
  %202 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %203 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %201, i64 %205
  store %struct.drm_buf* %206, %struct.drm_buf** %8, align 8
  %207 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %208 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %211 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %209, %212
  %214 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %215 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* %14, align 4
  %217 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %218 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %221 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 8
  %222 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %223 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %222, i32 0, i32 12
  store i64 0, i64* %223, align 8
  %224 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %225 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %9, align 8
  %228 = add i64 %226, %227
  %229 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %230 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %229, i32 0, i32 11
  store i64 %228, i64* %230, align 8
  %231 = load i64, i64* %10, align 8
  %232 = load i64, i64* %9, align 8
  %233 = add i64 %231, %232
  %234 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %235 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %234, i32 0, i32 3
  store i64 %233, i64* %235, align 8
  %236 = load i64, i64* %10, align 8
  %237 = load i64, i64* %9, align 8
  %238 = add i64 %236, %237
  %239 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %240 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %239, i32 0, i32 3
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %238, %243
  %245 = inttoptr i64 %244 to i8*
  %246 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %247 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %246, i32 0, i32 4
  store i8* %245, i8** %247, align 8
  %248 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %249 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %248, i32 0, i32 10
  store i32* null, i32** %249, align 8
  %250 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %251 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %250, i32 0, i32 9
  store i64 0, i64* %251, align 8
  %252 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %253 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %252, i32 0, i32 8
  store i64 0, i64* %253, align 8
  %254 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %255 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %254, i32 0, i32 7
  store i32* null, i32** %255, align 8
  %256 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %257 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %256, i32 0, i32 2
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %262 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %261, i32 0, i32 6
  store i32 %260, i32* %262, align 4
  %263 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %264 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @GFP_KERNEL, align 4
  %267 = call i32 @kzalloc(i32 %265, i32 %266)
  %268 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %269 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %268, i32 0, i32 5
  store i32 %267, i32* %269, align 8
  %270 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %271 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %289, label %274

274:                                              ; preds = %198
  %275 = load i32, i32* %11, align 4
  %276 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %277 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %279 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %280 = call i32 @drm_cleanup_buf_error(%struct.drm_device* %278, %struct.drm_buf_entry* %279)
  %281 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %282 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %281, i32 0, i32 1
  %283 = call i32 @mutex_unlock(i32* %282)
  %284 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %285 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %284, i32 0, i32 0
  %286 = call i32 @atomic_dec(i32* %285)
  %287 = load i32, i32* @ENOMEM, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %3, align 4
  br label %427

289:                                              ; preds = %198
  %290 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %291 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %294 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %293, i32 0, i32 4
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %292, i8* %295)
  %297 = load i32, i32* %14, align 4
  %298 = sext i32 %297 to i64
  %299 = load i64, i64* %9, align 8
  %300 = add i64 %299, %298
  store i64 %300, i64* %9, align 8
  %301 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %302 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 8
  %305 = load i32, i32* @PAGE_SIZE, align 4
  %306 = load i32, i32* %15, align 4
  %307 = shl i32 %305, %306
  %308 = load i32, i32* %17, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %17, align 4
  br label %192

310:                                              ; preds = %192
  %311 = load i32, i32* %17, align 4
  %312 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %311)
  %313 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %314 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %313, i32 0, i32 5
  %315 = load %struct.drm_buf**, %struct.drm_buf*** %314, align 8
  %316 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %317 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %320 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %318, %321
  %323 = sext i32 %322 to i64
  %324 = mul i64 %323, 8
  %325 = trunc i64 %324 to i32
  %326 = load i32, i32* @GFP_KERNEL, align 4
  %327 = call %struct.drm_buf** @krealloc(%struct.drm_buf** %315, i32 %325, i32 %326)
  store %struct.drm_buf** %327, %struct.drm_buf*** %19, align 8
  %328 = load %struct.drm_buf**, %struct.drm_buf*** %19, align 8
  %329 = icmp ne %struct.drm_buf** %328, null
  br i1 %329, label %342, label %330

330:                                              ; preds = %310
  %331 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %332 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %333 = call i32 @drm_cleanup_buf_error(%struct.drm_device* %331, %struct.drm_buf_entry* %332)
  %334 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %335 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %334, i32 0, i32 1
  %336 = call i32 @mutex_unlock(i32* %335)
  %337 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %338 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %337, i32 0, i32 0
  %339 = call i32 @atomic_dec(i32* %338)
  %340 = load i32, i32* @ENOMEM, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %3, align 4
  br label %427

342:                                              ; preds = %310
  %343 = load %struct.drm_buf**, %struct.drm_buf*** %19, align 8
  %344 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %345 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %344, i32 0, i32 5
  store %struct.drm_buf** %343, %struct.drm_buf*** %345, align 8
  store i32 0, i32* %18, align 4
  br label %346

346:                                              ; preds = %369, %342
  %347 = load i32, i32* %18, align 4
  %348 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %349 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp slt i32 %347, %350
  br i1 %351, label %352, label %372

352:                                              ; preds = %346
  %353 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %354 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %353, i32 0, i32 4
  %355 = load %struct.drm_buf*, %struct.drm_buf** %354, align 8
  %356 = load i32, i32* %18, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %355, i64 %357
  %359 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %360 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %359, i32 0, i32 5
  %361 = load %struct.drm_buf**, %struct.drm_buf*** %360, align 8
  %362 = load i32, i32* %18, align 4
  %363 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %364 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %362, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %361, i64 %367
  store %struct.drm_buf* %358, %struct.drm_buf** %368, align 8
  br label %369

369:                                              ; preds = %352
  %370 = load i32, i32* %18, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %18, align 4
  br label %346

372:                                              ; preds = %346
  %373 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %374 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %377 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = add nsw i32 %378, %375
  store i32 %379, i32* %377, align 8
  %380 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %381 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %380, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %384 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = sext i32 %385 to i64
  %387 = add nsw i64 %386, %382
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %384, align 8
  %389 = load i32, i32* %17, align 4
  %390 = load i32, i32* @PAGE_SHIFT, align 4
  %391 = ashr i32 %389, %390
  %392 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %393 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, %391
  store i32 %395, i32* %393, align 4
  %396 = load i32, i32* %17, align 4
  %397 = sext i32 %396 to i64
  %398 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %399 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = add nsw i64 %400, %397
  store i64 %401, i64* %399, align 8
  %402 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %403 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %404)
  %406 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %407 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %408)
  %410 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %411 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %410, i32 0, i32 1
  %412 = call i32 @mutex_unlock(i32* %411)
  %413 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %414 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %417 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %416, i32 0, i32 0
  store i32 %415, i32* %417, align 8
  %418 = load i32, i32* %13, align 4
  %419 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %420 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %419, i32 0, i32 1
  store i32 %418, i32* %420, align 4
  %421 = load i32, i32* @_DRM_DMA_USE_SG, align 4
  %422 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %423 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %422, i32 0, i32 2
  store i32 %421, i32* %423, align 8
  %424 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %425 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %424, i32 0, i32 0
  %426 = call i32 @atomic_dec(i32* %425)
  store i32 0, i32* %3, align 4
  br label %427

427:                                              ; preds = %372, %330, %274, %176, %157, %142, %116, %105, %40, %33, %27
  %428 = load i32, i32* %3, align 4
  ret i32 %428
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.drm_buf* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @drm_cleanup_buf_error(%struct.drm_device*, %struct.drm_buf_entry*) #1

declare dso_local %struct.drm_buf** @krealloc(%struct.drm_buf**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
