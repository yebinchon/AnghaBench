; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_pin_reserved.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_pin_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.vmw_buffer_object = type { i64, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ttm_place = type { i32, i64, i64 }
%struct.ttm_placement = type { i32, %struct.ttm_place* }

@__const.vmw_bo_pin_reserved.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 0, i32 1 }, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@VMW_PL_FLAG_GMR = common dso_local global i32 0, align 4
@VMW_PL_FLAG_MOB = common dso_local global i32 0, align 4
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_CACHED = common dso_local global i32 0, align 4
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_bo_pin_reserved(%struct.vmw_buffer_object* %0, i32 %1) #0 {
  %3 = alloca %struct.vmw_buffer_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_operation_ctx, align 4
  %6 = alloca %struct.ttm_place, align 8
  %7 = alloca %struct.ttm_placement, align 8
  %8 = alloca %struct.ttm_buffer_object*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vmw_buffer_object* %0, %struct.vmw_buffer_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = bitcast %struct.ttm_operation_ctx* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_bo_pin_reserved.ctx to i8*), i64 8, i1 false)
  %12 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %13 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %12, i32 0, i32 1
  store %struct.ttm_buffer_object* %13, %struct.ttm_buffer_object** %8, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dma_resv_assert_held(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %27 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = icmp sgt i64 %28, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %86

32:                                               ; preds = %25
  br label %47

33:                                               ; preds = %2
  %34 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %35 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %41 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %86

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %32
  %48 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %6, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %6, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %51 = load i32, i32* @VMW_PL_FLAG_GMR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @VMW_PL_FLAG_MOB, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %64 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %47
  %68 = call i32 @memset(%struct.ttm_placement* %7, i32 0, i32 16)
  %69 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %7, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %7, i32 0, i32 1
  store %struct.ttm_place* %6, %struct.ttm_place** %70, align 8
  %71 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %72 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %71, %struct.ttm_placement* %7, %struct.ttm_operation_ctx* %5)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %67
  %76 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %8, align 8
  %77 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %79, %80
  br label %82

82:                                               ; preds = %75, %67
  %83 = phi i1 [ true, %67 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUG_ON(i32 %84)
  br label %86

86:                                               ; preds = %82, %45, %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dma_resv_assert_held(i32) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @memset(%struct.ttm_placement*, i32, i32) #2

declare dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @BUG_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
