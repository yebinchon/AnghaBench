; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_cursor_update_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_cursor_update_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.ttm_bo_kmap_obj = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"reserve failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_buffer_object*, i32, i32, i32, i32)* @vmw_cursor_update_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cursor_update_bo(%struct.vmw_private* %0, %struct.vmw_buffer_object* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca %struct.vmw_buffer_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ttm_bo_kmap_obj, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %8, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %15, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = mul nsw i32 %20, %21
  %23 = mul nsw i32 %22, 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %16, align 8
  %30 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %9, align 8
  %31 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %30, i32 0, i32 0
  %32 = call i32 @ttm_bo_reserve(i32* %31, i32 1, i32 0, i32* null)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %6
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %69

42:                                               ; preds = %6
  %43 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %9, align 8
  %44 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %43, i32 0, i32 0
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %16, align 8
  %47 = call i32 @ttm_bo_kmap(i32* %44, i64 %45, i64 %46, %struct.ttm_bo_kmap_obj* %14)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %64

54:                                               ; preds = %42
  %55 = call i8* @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj* %14, i32* %18)
  store i8* %55, i8** %17, align 8
  %56 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @vmw_cursor_update_image(%struct.vmw_private* %56, i8* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %19, align 4
  %63 = call i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj* %14)
  br label %64

64:                                               ; preds = %54, %53
  %65 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %9, align 8
  %66 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %65, i32 0, i32 0
  %67 = call i32 @ttm_bo_unreserve(i32* %66)
  %68 = load i32, i32* %19, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %64, %38
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @ttm_bo_kmap(i32*, i64, i64, %struct.ttm_bo_kmap_obj*) #1

declare dso_local i8* @ttm_kmap_obj_virtual(%struct.ttm_bo_kmap_obj*, i32*) #1

declare dso_local i32 @vmw_cursor_update_image(%struct.vmw_private*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ttm_bo_kunmap(%struct.ttm_bo_kmap_obj*) #1

declare dso_local i32 @ttm_bo_unreserve(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
