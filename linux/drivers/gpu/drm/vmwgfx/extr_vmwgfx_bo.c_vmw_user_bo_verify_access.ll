; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_user_bo_verify_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_bo.c_vmw_user_bo_verify_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64 }
%struct.ttm_object_file = type { i32 }
%struct.vmw_user_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@vmw_user_bo_destroy = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not grant buffer access.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_user_bo_verify_access(%struct.ttm_buffer_object* %0, %struct.ttm_object_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.ttm_object_file*, align 8
  %6 = alloca %struct.vmw_user_buffer_object*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store %struct.ttm_object_file* %1, %struct.ttm_object_file** %5, align 8
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %8 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @vmw_user_bo_destroy, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %20 = call %struct.vmw_user_buffer_object* @vmw_user_buffer_object(%struct.ttm_buffer_object* %19)
  store %struct.vmw_user_buffer_object* %20, %struct.vmw_user_buffer_object** %6, align 8
  %21 = load %struct.ttm_object_file*, %struct.ttm_object_file** %5, align 8
  %22 = load %struct.vmw_user_buffer_object*, %struct.vmw_user_buffer_object** %6, align 8
  %23 = getelementptr inbounds %struct.vmw_user_buffer_object, %struct.vmw_user_buffer_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @ttm_ref_object_exists(%struct.ttm_object_file* %21, i32* %24)
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %33

29:                                               ; preds = %18
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %28, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vmw_user_buffer_object* @vmw_user_buffer_object(%struct.ttm_buffer_object*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ttm_ref_object_exists(%struct.ttm_object_file*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
