; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_obj_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_obj_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_base_object = type { i64 }
%struct.ttm_object_file = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Invalid fence object handle 0x%08lx.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@vmw_user_fence_base_release = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ttm_base_object* (%struct.ttm_object_file*, i64)* @vmw_fence_obj_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ttm_base_object* @vmw_fence_obj_lookup(%struct.ttm_object_file* %0, i64 %1) #0 {
  %3 = alloca %struct.ttm_base_object*, align 8
  %4 = alloca %struct.ttm_object_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ttm_base_object*, align 8
  store %struct.ttm_object_file* %0, %struct.ttm_object_file** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ttm_object_file*, %struct.ttm_object_file** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.ttm_base_object* @ttm_base_object_lookup(%struct.ttm_object_file* %7, i64 %8)
  store %struct.ttm_base_object* %9, %struct.ttm_base_object** %6, align 8
  %10 = load %struct.ttm_base_object*, %struct.ttm_base_object** %6, align 8
  %11 = icmp ne %struct.ttm_base_object* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ttm_base_object* @ERR_PTR(i32 %16)
  store %struct.ttm_base_object* %17, %struct.ttm_base_object** %3, align 8
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.ttm_base_object*, %struct.ttm_base_object** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @vmw_user_fence_base_release, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = call i32 @ttm_base_object_unref(%struct.ttm_base_object** %6)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.ttm_base_object* @ERR_PTR(i32 %29)
  store %struct.ttm_base_object* %30, %struct.ttm_base_object** %3, align 8
  br label %33

31:                                               ; preds = %18
  %32 = load %struct.ttm_base_object*, %struct.ttm_base_object** %6, align 8
  store %struct.ttm_base_object* %32, %struct.ttm_base_object** %3, align 8
  br label %33

33:                                               ; preds = %31, %24, %12
  %34 = load %struct.ttm_base_object*, %struct.ttm_base_object** %3, align 8
  ret %struct.ttm_base_object* %34
}

declare dso_local %struct.ttm_base_object* @ttm_base_object_lookup(%struct.ttm_object_file*, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local %struct.ttm_base_object* @ERR_PTR(i32) #1

declare dso_local i32 @ttm_base_object_unref(%struct.ttm_base_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
