; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_map_and_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_bo_map_and_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_buffer_object = type { i32, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Buffer object map failed: %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmw_bo_map_and_cache(%struct.vmw_buffer_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmw_buffer_object*, align 8
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.vmw_buffer_object* %0, %struct.vmw_buffer_object** %3, align 8
  %8 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %9 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %8, i32 0, i32 1
  store %struct.ttm_buffer_object* %9, %struct.ttm_buffer_object** %4, align 8
  %10 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %10, i32 0, i32 0
  %12 = call i8* @ttm_kmap_obj_virtual(i32* %11, i32* %5)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %2, align 8
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %20 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %23 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %22, i32 0, i32 0
  %24 = call i32 @ttm_bo_kmap(%struct.ttm_buffer_object* %18, i32 0, i32 %21, i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %3, align 8
  %32 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %31, i32 0, i32 0
  %33 = call i8* @ttm_kmap_obj_virtual(i32* %32, i32* %5)
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %30, %15
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i8* @ttm_kmap_obj_virtual(i32*, i32*) #1

declare dso_local i32 @ttm_bo_kmap(%struct.ttm_buffer_object*, i32, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
