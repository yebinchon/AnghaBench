; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_phys.c_mock_phys_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_phys.c_mock_phys_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"i915_gem_object_create failed, err=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"i915_gem_object_attach_phys failed, err=%d\0A\00", align 1
@i915_gem_phys_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"i915_gem_object_attach_phys did not create a phys object\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"i915_gem_object_attach_phys did not pin its phys pages\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"i915_gem_object_set_to_gtt_domain failed with err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mock_phys_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mock_phys_object(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = call %struct.drm_i915_gem_object* @i915_gem_object_create_shmem(%struct.drm_i915_private* %8, i32 %9)
  store %struct.drm_i915_gem_object* %10, %struct.drm_i915_gem_object** %4, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %12 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.drm_i915_gem_object* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %71

19:                                               ; preds = %1
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 @i915_gem_object_attach_phys(%struct.drm_i915_gem_object* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %68

36:                                               ; preds = %19
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %38 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, @i915_gem_phys_ops
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %68

45:                                               ; preds = %36
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @atomic_read(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %68

55:                                               ; preds = %45
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %57 = call i32 @i915_gem_object_lock(%struct.drm_i915_gem_object* %56)
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %59 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %58, i32 1)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %61 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %68

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %64, %51, %41, %33
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %70 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %69)
  br label %71

71:                                               ; preds = %68, %14
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_shmem(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_gem_object_attach_phys(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @i915_gem_object_lock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
