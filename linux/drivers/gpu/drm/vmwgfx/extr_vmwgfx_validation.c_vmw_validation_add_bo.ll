; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_add_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_add_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_validation_context = type { i32, i64 }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_validation_bo_node = type { i32, i32, %struct.ttm_validate_buffer, %struct.TYPE_2__ }
%struct.ttm_validate_buffer = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Inconsistent buffer usage.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to initialize a buffer validation entry.\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_validation_add_bo(%struct.vmw_validation_context* %0, %struct.vmw_buffer_object* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_validation_context*, align 8
  %7 = alloca %struct.vmw_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_validation_bo_node*, align 8
  %11 = alloca %struct.ttm_validate_buffer*, align 8
  %12 = alloca i32, align 4
  store %struct.vmw_validation_context* %0, %struct.vmw_validation_context** %6, align 8
  store %struct.vmw_buffer_object* %1, %struct.vmw_buffer_object** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %6, align 8
  %14 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %15 = call %struct.vmw_validation_bo_node* @vmw_validation_find_bo_dup(%struct.vmw_validation_context* %13, %struct.vmw_buffer_object* %14)
  store %struct.vmw_validation_bo_node* %15, %struct.vmw_validation_bo_node** %10, align 8
  %16 = load %struct.vmw_validation_bo_node*, %struct.vmw_validation_bo_node** %10, align 8
  %17 = icmp ne %struct.vmw_validation_bo_node* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = load %struct.vmw_validation_bo_node*, %struct.vmw_validation_bo_node** %10, align 8
  %20 = getelementptr inbounds %struct.vmw_validation_bo_node, %struct.vmw_validation_bo_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.vmw_validation_bo_node*, %struct.vmw_validation_bo_node** %10, align 8
  %26 = getelementptr inbounds %struct.vmw_validation_bo_node, %struct.vmw_validation_bo_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %18
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %96

34:                                               ; preds = %24
  br label %95

35:                                               ; preds = %4
  %36 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %6, align 8
  %37 = call %struct.vmw_validation_bo_node* @vmw_validation_mem_alloc(%struct.vmw_validation_context* %36, i32 40)
  store %struct.vmw_validation_bo_node* %37, %struct.vmw_validation_bo_node** %10, align 8
  %38 = load %struct.vmw_validation_bo_node*, %struct.vmw_validation_bo_node** %10, align 8
  %39 = icmp ne %struct.vmw_validation_bo_node* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %96

43:                                               ; preds = %35
  %44 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %6, align 8
  %45 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %50 = ptrtoint %struct.vmw_buffer_object* %49 to i64
  %51 = load %struct.vmw_validation_bo_node*, %struct.vmw_validation_bo_node** %10, align 8
  %52 = getelementptr inbounds %struct.vmw_validation_bo_node, %struct.vmw_validation_bo_node* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %6, align 8
  %55 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vmw_validation_bo_node*, %struct.vmw_validation_bo_node** %10, align 8
  %58 = getelementptr inbounds %struct.vmw_validation_bo_node, %struct.vmw_validation_bo_node* %57, i32 0, i32 3
  %59 = call i32 @drm_ht_insert_item(i64 %56, %struct.TYPE_2__* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %96

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.vmw_validation_bo_node*, %struct.vmw_validation_bo_node** %10, align 8
  %68 = getelementptr inbounds %struct.vmw_validation_bo_node, %struct.vmw_validation_bo_node* %67, i32 0, i32 2
  store %struct.ttm_validate_buffer* %68, %struct.ttm_validate_buffer** %11, align 8
  %69 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %7, align 8
  %70 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %69, i32 0, i32 0
  %71 = call i32 @ttm_bo_get_unless_zero(i32* %70)
  %72 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %11, align 8
  %73 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %11, align 8
  %75 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @ESRCH, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %96

81:                                               ; preds = %66
  %82 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %11, align 8
  %83 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.ttm_validate_buffer*, %struct.ttm_validate_buffer** %11, align 8
  %85 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %84, i32 0, i32 0
  %86 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %6, align 8
  %87 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %86, i32 0, i32 0
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.vmw_validation_bo_node*, %struct.vmw_validation_bo_node** %10, align 8
  %91 = getelementptr inbounds %struct.vmw_validation_bo_node, %struct.vmw_validation_bo_node* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.vmw_validation_bo_node*, %struct.vmw_validation_bo_node** %10, align 8
  %94 = getelementptr inbounds %struct.vmw_validation_bo_node, %struct.vmw_validation_bo_node* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %81, %34
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %78, %62, %40, %30
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.vmw_validation_bo_node* @vmw_validation_find_bo_dup(%struct.vmw_validation_context*, %struct.vmw_buffer_object*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.vmw_validation_bo_node* @vmw_validation_mem_alloc(%struct.vmw_validation_context*, i32) #1

declare dso_local i32 @drm_ht_insert_item(i64, %struct.TYPE_2__*) #1

declare dso_local i32 @ttm_bo_get_unless_zero(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
