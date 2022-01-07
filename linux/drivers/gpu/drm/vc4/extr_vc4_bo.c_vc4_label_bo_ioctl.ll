; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_label_bo_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_label_bo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.drm_vc4_label_bo = type { i32, i64, i32 }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_label_bo_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vc4_dev*, align 8
  %9 = alloca %struct.drm_vc4_label_bo*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %14)
  store %struct.vc4_dev* %15, %struct.vc4_dev** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_vc4_label_bo*
  store %struct.drm_vc4_label_bo* %17, %struct.drm_vc4_label_bo** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.drm_vc4_label_bo*, %struct.drm_vc4_label_bo** %9, align 8
  %19 = getelementptr inbounds %struct.drm_vc4_label_bo, %struct.drm_vc4_label_bo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  %26 = load %struct.drm_vc4_label_bo*, %struct.drm_vc4_label_bo** %9, align 8
  %27 = getelementptr inbounds %struct.drm_vc4_label_bo, %struct.drm_vc4_label_bo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @u64_to_user_ptr(i32 %28)
  %30 = load %struct.drm_vc4_label_bo*, %struct.drm_vc4_label_bo** %9, align 8
  %31 = getelementptr inbounds %struct.drm_vc4_label_bo, %struct.drm_vc4_label_bo* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i8* @strndup_user(i32 %29, i64 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %4, align 4
  br label %81

41:                                               ; preds = %25
  %42 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %43 = load %struct.drm_vc4_label_bo*, %struct.drm_vc4_label_bo** %9, align 8
  %44 = getelementptr inbounds %struct.drm_vc4_label_bo, %struct.drm_vc4_label_bo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %42, i32 %45)
  store %struct.drm_gem_object* %46, %struct.drm_gem_object** %11, align 8
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %48 = icmp ne %struct.drm_gem_object* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %41
  %50 = load %struct.drm_vc4_label_bo*, %struct.drm_vc4_label_bo** %9, align 8
  %51 = getelementptr inbounds %struct.drm_vc4_label_bo, %struct.drm_vc4_label_bo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %81

58:                                               ; preds = %41
  %59 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %60 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @vc4_get_user_label(%struct.vc4_dev* %62, i8* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @vc4_bo_set_label(%struct.drm_gem_object* %68, i32 %69)
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %76 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %79 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %49, %38, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i8* @strndup_user(i32, i64) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vc4_get_user_label(%struct.vc4_dev*, i8*) #1

declare dso_local i32 @vc4_bo_set_label(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
