; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_check_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_resource.c_vmw_resource_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_operation_ctx = type { i32, i32 }
%struct.ww_acquire_ctx = type { i32 }
%struct.vmw_resource = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ttm_validate_buffer = type { i32*, i32, i64 }
%struct.list_head = type { i32 }

@__const.vmw_resource_check_buffer.ctx = private unnamed_addr constant %struct.ttm_operation_ctx { i32 1, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ww_acquire_ctx*, %struct.vmw_resource*, i32, %struct.ttm_validate_buffer*)* @vmw_resource_check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_resource_check_buffer(%struct.ww_acquire_ctx* %0, %struct.vmw_resource* %1, i32 %2, %struct.ttm_validate_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ww_acquire_ctx*, align 8
  %7 = alloca %struct.vmw_resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ttm_validate_buffer*, align 8
  %10 = alloca %struct.ttm_operation_ctx, align 4
  %11 = alloca %struct.list_head, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ww_acquire_ctx* %0, %struct.ww_acquire_ctx** %6, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ttm_validate_buffer* %3, %struct.ttm_validate_buffer** %9, align 8
  %14 = bitcast %struct.ttm_operation_ctx* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.ttm_operation_ctx* @__const.vmw_resource_check_buffer.ctx to i8*), i64 8, i1 false)
  store i32 0, i32* %12, align 4
  %15 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %16 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @vmw_resource_buf_alloc(%struct.vmw_resource* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %112

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %4
  %35 = call i32 @INIT_LIST_HEAD(%struct.list_head* %11)
  %36 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %37 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @ttm_bo_get(i32* %39)
  %41 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %42 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %9, align 8
  %46 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  %47 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %9, align 8
  %48 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %9, align 8
  %50 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %49, i32 0, i32 1
  %51 = call i32 @list_add_tail(i32* %50, %struct.list_head* %11)
  %52 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx* %52, %struct.list_head* %11, i32 %53, i32* null, i32 1)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %34
  br label %97

61:                                               ; preds = %34
  %62 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %63 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %70 = call i32 @vmw_resource_mob_attached(%struct.vmw_resource* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %112

73:                                               ; preds = %68, %61
  %74 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %75 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %12, align 4
  %77 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %78 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %82 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %81, i32 0, i32 2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ttm_bo_validate(i32* %80, i32 %85, %struct.ttm_operation_ctx* %10)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  br label %94

93:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %112

94:                                               ; preds = %92
  %95 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %6, align 8
  %96 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %95, %struct.list_head* %11)
  br label %97

97:                                               ; preds = %94, %60
  %98 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %9, align 8
  %99 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @ttm_bo_put(i32* %100)
  %102 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %9, align 8
  %103 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load %struct.vmw_resource*, %struct.vmw_resource** %7, align 8
  %108 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %107, i32 0, i32 1
  %109 = call i32 @vmw_bo_unreference(%struct.TYPE_4__** %108)
  br label %110

110:                                              ; preds = %106, %97
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %93, %72, %31
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @vmw_resource_buf_alloc(%struct.vmw_resource*, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #2

declare dso_local i32 @ttm_bo_get(i32*) #2

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #2

declare dso_local i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx*, %struct.list_head*, i32, i32*, i32) #2

declare dso_local i32 @vmw_resource_mob_attached(%struct.vmw_resource*) #2

declare dso_local i32 @ttm_bo_validate(i32*, i32, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx*, %struct.list_head*) #2

declare dso_local i32 @ttm_bo_put(i32*) #2

declare dso_local i32 @vmw_bo_unreference(%struct.TYPE_4__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
