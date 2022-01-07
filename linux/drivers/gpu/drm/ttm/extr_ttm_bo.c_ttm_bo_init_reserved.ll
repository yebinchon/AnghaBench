; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_init_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_init_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }
%struct.ttm_buffer_object = type { void (%struct.ttm_buffer_object*)*, i32, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.ttm_bo_device*, %struct.sg_table*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_5__, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.dma_resv*, i32, %struct.dma_resv }
%struct.dma_resv = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_operation_ctx = type { i32 }
%struct.sg_table = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Out of kernel memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Illegal buffer object size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_CACHED = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i64 0, align 8
@ttm_bo_type_sg = common dso_local global i64 0, align 8
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_init_reserved(%struct.ttm_bo_device* %0, %struct.ttm_buffer_object* %1, i64 %2, i32 %3, %struct.ttm_placement* %4, i32 %5, %struct.ttm_operation_ctx* %6, i64 %7, %struct.sg_table* %8, %struct.dma_resv* %9, void (%struct.ttm_buffer_object*)* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ttm_bo_device*, align 8
  %14 = alloca %struct.ttm_buffer_object*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ttm_placement*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ttm_operation_ctx*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.sg_table*, align 8
  %22 = alloca %struct.dma_resv*, align 8
  %23 = alloca void (%struct.ttm_buffer_object*)*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.ttm_mem_global*, align 8
  %27 = alloca i32, align 4
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %13, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %14, align 8
  store i64 %2, i64* %15, align 8
  store i32 %3, i32* %16, align 4
  store %struct.ttm_placement* %4, %struct.ttm_placement** %17, align 8
  store i32 %5, i32* %18, align 4
  store %struct.ttm_operation_ctx* %6, %struct.ttm_operation_ctx** %19, align 8
  store i64 %7, i64* %20, align 8
  store %struct.sg_table* %8, %struct.sg_table** %21, align 8
  store %struct.dma_resv* %9, %struct.dma_resv** %22, align 8
  store void (%struct.ttm_buffer_object*)* %10, void (%struct.ttm_buffer_object*)** %23, align 8
  store i32 0, i32* %24, align 4
  %28 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %29 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %31, align 8
  store %struct.ttm_mem_global* %32, %struct.ttm_mem_global** %26, align 8
  %33 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %26, align 8
  %34 = load i64, i64* %20, align 8
  %35 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %19, align 8
  %36 = call i32 @ttm_mem_global_alloc(%struct.ttm_mem_global* %33, i64 %34, %struct.ttm_operation_ctx* %35)
  store i32 %36, i32* %24, align 4
  %37 = load i32, i32* %24, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %11
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %42 = icmp ne void (%struct.ttm_buffer_object*)* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %45 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  call void %44(%struct.ttm_buffer_object* %45)
  br label %49

46:                                               ; preds = %39
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %48 = call i32 @kfree(%struct.ttm_buffer_object* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %295

52:                                               ; preds = %11
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = add i64 %53, %54
  %56 = sub i64 %55, 1
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = lshr i64 %56, %57
  store i64 %58, i64* %25, align 8
  %59 = load i64, i64* %25, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %52
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %64 = icmp ne void (%struct.ttm_buffer_object*)* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  call void %66(%struct.ttm_buffer_object* %67)
  br label %71

68:                                               ; preds = %61
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %70 = call i32 @kfree(%struct.ttm_buffer_object* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %26, align 8
  %73 = load i64, i64* %20, align 8
  %74 = call i32 @ttm_mem_global_free(%struct.ttm_mem_global* %72, i64 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %295

77:                                               ; preds = %52
  %78 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %79 = icmp ne void (%struct.ttm_buffer_object*)* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  br label %83

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi void (%struct.ttm_buffer_object*)* [ %81, %80 ], [ @ttm_bo_default_destroy, %82 ]
  %85 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %86 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %85, i32 0, i32 0
  store void (%struct.ttm_buffer_object*)* %84, void (%struct.ttm_buffer_object*)** %86, align 8
  %87 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %88 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %87, i32 0, i32 16
  %89 = call i32 @kref_init(i32* %88)
  %90 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %91 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %90, i32 0, i32 15
  %92 = call i32 @kref_init(i32* %91)
  %93 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %94 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %93, i32 0, i32 14
  %95 = call i32 @atomic_set(i32* %94, i32 0)
  %96 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %97 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %96, i32 0, i32 13
  %98 = call i32 @INIT_LIST_HEAD(i32* %97)
  %99 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %100 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %99, i32 0, i32 12
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %103 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %102, i32 0, i32 11
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %106 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %105, i32 0, i32 10
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %109 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %108, i32 0, i32 9
  %110 = call i32 @mutex_init(i32* %109)
  %111 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %112 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %113 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %112, i32 0, i32 6
  store %struct.ttm_bo_device* %111, %struct.ttm_bo_device** %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %116 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %25, align 8
  %118 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %119 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %25, align 8
  %121 = load i64, i64* @PAGE_SHIFT, align 8
  %122 = shl i64 %120, %121
  %123 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %124 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %127 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %128 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 6
  store i32 %126, i32* %129, align 8
  %130 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %131 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %134 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i64 %132, i64* %135, align 8
  %136 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %137 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 5
  store i32* null, i32** %138, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %141 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 4
  store i32 %139, i32* %142, align 8
  %143 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %144 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %148 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %152 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %151, i32 0, i32 8
  store i32* null, i32** %152, align 8
  %153 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %154 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %157 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  store i32 %155, i32* %158, align 8
  %159 = load i64, i64* %20, align 8
  %160 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %161 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %160, i32 0, i32 3
  store i64 %159, i64* %161, align 8
  %162 = load %struct.sg_table*, %struct.sg_table** %21, align 8
  %163 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %164 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %163, i32 0, i32 7
  store %struct.sg_table* %162, %struct.sg_table** %164, align 8
  %165 = load %struct.dma_resv*, %struct.dma_resv** %22, align 8
  %166 = icmp ne %struct.dma_resv* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %83
  %168 = load %struct.dma_resv*, %struct.dma_resv** %22, align 8
  %169 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %170 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store %struct.dma_resv* %168, %struct.dma_resv** %171, align 8
  %172 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %173 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load %struct.dma_resv*, %struct.dma_resv** %174, align 8
  %176 = call i32 @dma_resv_assert_held(%struct.dma_resv* %175)
  br label %184

177:                                              ; preds = %83
  %178 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %179 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %182 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store %struct.dma_resv* %180, %struct.dma_resv** %183, align 8
  br label %184

184:                                              ; preds = %177, %167
  %185 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %186 = call i32 @ttm_bo_uses_embedded_gem_object(%struct.ttm_buffer_object* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %184
  %189 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %190 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = call i32 @dma_resv_init(%struct.dma_resv* %191)
  %193 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %194 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = call i32 @drm_vma_node_reset(i32* %195)
  br label %197

197:                                              ; preds = %188, %184
  %198 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %199 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %198, i32 0, i32 6
  %200 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %199, align 8
  %201 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %200, i32 0, i32 0
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = call i32 @atomic_inc(i32* %203)
  %205 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %206 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* @ttm_bo_type_device, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %218, label %211

211:                                              ; preds = %197
  %212 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %213 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* @ttm_bo_type_sg, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %211, %197
  %219 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %220 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %219, i32 0, i32 1
  %221 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %222 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %225 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @drm_vma_offset_add(i32* %220, i32* %223, i64 %227)
  store i32 %228, i32* %24, align 4
  br label %229

229:                                              ; preds = %218, %211
  %230 = load %struct.dma_resv*, %struct.dma_resv** %22, align 8
  %231 = icmp ne %struct.dma_resv* %230, null
  br i1 %231, label %243, label %232

232:                                              ; preds = %229
  %233 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %234 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load %struct.dma_resv*, %struct.dma_resv** %235, align 8
  %237 = call i32 @dma_resv_trylock(%struct.dma_resv* %236)
  store i32 %237, i32* %27, align 4
  %238 = load i32, i32* %27, align 4
  %239 = icmp ne i32 %238, 0
  %240 = xor i1 %239, true
  %241 = zext i1 %240 to i32
  %242 = call i32 @WARN_ON(i32 %241)
  br label %243

243:                                              ; preds = %232, %229
  %244 = load i32, i32* %24, align 4
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = call i64 @likely(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %252 = load %struct.ttm_placement*, %struct.ttm_placement** %17, align 8
  %253 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %19, align 8
  %254 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %251, %struct.ttm_placement* %252, %struct.ttm_operation_ctx* %253)
  store i32 %254, i32* %24, align 4
  br label %255

255:                                              ; preds = %250, %243
  %256 = load i32, i32* %24, align 4
  %257 = call i64 @unlikely(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %255
  %260 = load %struct.dma_resv*, %struct.dma_resv** %22, align 8
  %261 = icmp ne %struct.dma_resv* %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %264 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %267 = call i32 @ttm_bo_put(%struct.ttm_buffer_object* %266)
  %268 = load i32, i32* %24, align 4
  store i32 %268, i32* %12, align 4
  br label %295

269:                                              ; preds = %255
  %270 = load %struct.dma_resv*, %struct.dma_resv** %22, align 8
  %271 = icmp ne %struct.dma_resv* %270, null
  br i1 %271, label %272, label %293

272:                                              ; preds = %269
  %273 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %274 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %272
  %281 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %282 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %281, i32 0, i32 0
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = call i32 @spin_lock(i32* %284)
  %286 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %287 = call i32 @ttm_bo_add_to_lru(%struct.ttm_buffer_object* %286)
  %288 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %289 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %288, i32 0, i32 0
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = call i32 @spin_unlock(i32* %291)
  br label %293

293:                                              ; preds = %280, %272, %269
  %294 = load i32, i32* %24, align 4
  store i32 %294, i32* %12, align 4
  br label %295

295:                                              ; preds = %293, %265, %71, %49
  %296 = load i32, i32* %12, align 4
  ret i32 %296
}

declare dso_local i32 @ttm_mem_global_alloc(%struct.ttm_mem_global*, i64, %struct.ttm_operation_ctx*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_mem_global_free(%struct.ttm_mem_global*, i64) #1

declare dso_local void @ttm_bo_default_destroy(%struct.ttm_buffer_object*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dma_resv_assert_held(%struct.dma_resv*) #1

declare dso_local i32 @ttm_bo_uses_embedded_gem_object(%struct.ttm_buffer_object*) #1

declare dso_local i32 @dma_resv_init(%struct.dma_resv*) #1

declare dso_local i32 @drm_vma_node_reset(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @drm_vma_offset_add(i32*, i32*, i64) #1

declare dso_local i32 @dma_resv_trylock(%struct.dma_resv*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_put(%struct.ttm_buffer_object*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_add_to_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
