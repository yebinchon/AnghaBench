; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_dummy_query_bo_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_dummy_query_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_buffer_object* }
%struct.vmw_buffer_object = type { i32 }
%struct.ttm_bo_kmap_obj = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vmw_sys_ne_placement = common dso_local global i32 0, align 4
@vmw_bo_bo_free = common dso_local global i32 0, align 4
@SVGA3D_QUERYSTATE_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Dummy query buffer map failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*)* @vmw_dummy_query_bo_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_dummy_query_bo_create(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_buffer_object*, align 8
  %6 = alloca %struct.ttm_bo_kmap_obj, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vmw_buffer_object* @kzalloc(i32 4, i32 %9)
  store %struct.vmw_buffer_object* %10, %struct.vmw_buffer_object** %5, align 8
  %11 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %12 = icmp ne %struct.vmw_buffer_object* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %76

16:                                               ; preds = %1
  %17 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %18 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i32 @vmw_bo_init(%struct.vmw_private* %17, %struct.vmw_buffer_object* %18, i32 %19, i32* @vmw_sys_ne_placement, i32 0, i32* @vmw_bo_bo_free)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %76

28:                                               ; preds = %16
  %29 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %30 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %29, i32 0, i32 0
  %31 = call i32 @ttm_bo_reserve(i32* %30, i32 0, i32 1, i32* null)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %37 = call i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object* %36, i32 1)
  %38 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %39 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %38, i32 0, i32 0
  %40 = call i32 @ttm_bo_kmap(i32* %39, i32 0, i32 1, %struct.ttm_bo_kmap_obj* %6)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %28
  %47 = call %struct.TYPE_3__* @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj* %6, i32* %8)
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %7, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store volatile i32 12, i32* %49, align 4
  %50 = load i32, i32* @SVGA3D_QUERYSTATE_PENDING, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store volatile i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store volatile i32 255, i32* %54, align 4
  %55 = call i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj* %6)
  br label %56

56:                                               ; preds = %46, %28
  %57 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %58 = call i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object* %57, i32 0)
  %59 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %60 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %59, i32 0, i32 0
  %61 = call i32 @ttm_bo_unreserve(i32* %60)
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %69 = call i32 @vmw_bo_unreference(%struct.vmw_buffer_object** %5)
  br label %74

70:                                               ; preds = %56
  %71 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %72 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %73 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %72, i32 0, i32 0
  store %struct.vmw_buffer_object* %71, %struct.vmw_buffer_object** %73, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %26, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.vmw_buffer_object* @kzalloc(i32, i32) #1

declare dso_local i32 @vmw_bo_init(%struct.vmw_private*, %struct.vmw_buffer_object*, i32, i32*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_bo_pin_reserved(%struct.vmw_buffer_object*, i32) #1

declare dso_local i32 @ttm_bo_kmap(i32*, i32, i32, %struct.ttm_bo_kmap_obj*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_3__* @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj*, i32*) #1

declare dso_local i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj*) #1

declare dso_local i32 @ttm_bo_unreserve(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_bo_unreference(%struct.vmw_buffer_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
