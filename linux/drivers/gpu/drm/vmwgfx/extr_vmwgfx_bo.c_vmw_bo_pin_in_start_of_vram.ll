; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_pin_in_start_of_vram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_pin_in_start_of_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ttm_place* }
%struct.ttm_place = type { i64 }
%struct.ttm_placement = type { i32, i32, %struct.ttm_place*, %struct.ttm_place* }
%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { i64, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ttm_operation_ctx = type { i32, i32, i32 }

@vmw_vram_placement = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@vmw_sys_placement = common dso_local global %struct.ttm_placement zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_bo_pin_in_start_of_vram(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_operation_ctx, align 4
  %9 = alloca %struct.ttm_buffer_object*, align 8
  %10 = alloca %struct.ttm_placement, align 8
  %11 = alloca %struct.ttm_place, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %5, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %19 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %18, i32 0, i32 1
  store %struct.ttm_buffer_object* %19, %struct.ttm_buffer_object** %9, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.ttm_place*, %struct.ttm_place** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vmw_vram_placement, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %20, i64 0
  %22 = bitcast %struct.ttm_place* %11 to i8*
  %23 = bitcast %struct.ttm_place* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %11, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %10, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %10, i32 0, i32 3
  store %struct.ttm_place* %11, %struct.ttm_place** %29, align 8
  %30 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %10, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %10, i32 0, i32 2
  store %struct.ttm_place* %11, %struct.ttm_place** %31, align 8
  %32 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %33 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ttm_write_lock(i32* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %130

43:                                               ; preds = %3
  %44 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %45 = call i32 @vmw_execbuf_release_pinned_bo(%struct.vmw_private* %44)
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %46, i32 %47, i32 0, i32* null)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %125

55:                                               ; preds = %43
  %56 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %57 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TTM_PL_VRAM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %55
  %63 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %64 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %68 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %62
  %72 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %73 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %79 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 2
  store i32 0, i32* %83, align 4
  %84 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %85 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %84, %struct.ttm_placement* @vmw_sys_placement, %struct.ttm_operation_ctx* %8)
  br label %86

86:                                               ; preds = %82, %77, %71, %62, %55
  %87 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %88 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %93 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %92, i32 0, i32 2
  %94 = call i32 @ttm_bo_mem_compat(%struct.ttm_placement* %10, %struct.TYPE_4__* %93, i32* %13)
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  br label %100

100:                                              ; preds = %97, %96
  %101 = phi i32 [ 0, %96 ], [ %99, %97 ]
  store i32 %101, i32* %12, align 4
  br label %105

102:                                              ; preds = %86
  %103 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %104 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %103, %struct.ttm_placement* %10, %struct.ttm_operation_ctx* %8)
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %100
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %110 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %108, %105
  %114 = phi i1 [ false, %105 ], [ %112, %108 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @WARN_ON(i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %6, align 8
  %121 = call i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object* %120, i32 1)
  br label %122

122:                                              ; preds = %119, %113
  %123 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %9, align 8
  %124 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %123)
  br label %125

125:                                              ; preds = %122, %54
  %126 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %127 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %126, i32 0, i32 0
  %128 = call i32 @ttm_write_unlock(i32* %127)
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %41
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ttm_write_lock(i32*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @vmw_execbuf_release_pinned_bo(%struct.vmw_private*) #2

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32*) #2

declare dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @ttm_bo_mem_compat(%struct.ttm_placement*, %struct.TYPE_4__*, i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object*, i32) #2

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #2

declare dso_local i32 @ttm_write_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
