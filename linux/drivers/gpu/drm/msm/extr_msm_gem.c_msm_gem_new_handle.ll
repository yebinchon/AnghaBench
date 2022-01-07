; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_new_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_new_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gem_new_handle(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.drm_gem_object*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store %struct.drm_file* %1, %struct.drm_file** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call %struct.drm_gem_object* @msm_gem_new(%struct.drm_device* %16, i32 %17, i32 %18)
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %14, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %21 = call i64 @IS_ERR(%struct.drm_gem_object* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %25 = call i32 @PTR_ERR(%struct.drm_gem_object* %24)
  store i32 %25, i32* %7, align 4
  br label %41

26:                                               ; preds = %6
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @msm_gem_object_set_name(%struct.drm_gem_object* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @drm_gem_handle_create(%struct.drm_file* %34, %struct.drm_gem_object* %35, i32* %36)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %39 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %38)
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %33, %23
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local %struct.drm_gem_object* @msm_gem_new(%struct.drm_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @msm_gem_object_set_name(%struct.drm_gem_object*, i8*, i8*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
