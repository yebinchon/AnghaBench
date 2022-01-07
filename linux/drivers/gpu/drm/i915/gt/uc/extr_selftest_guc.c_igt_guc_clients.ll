; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_selftest_guc.c_igt_guc_clients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_selftest_guc.c_igt_guc_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.intel_guc }
%struct.intel_guc = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"No guc object!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"guc_clients_destroy lied!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to create clients\0A\00", align 1
@GUC_CLIENT_PRIORITY_KMD_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"execbug client validation failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"guc_clients_create didn't reserve doorbells\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to initialize the doorbells\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_guc_clients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_guc_clients(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_guc*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call i32 @HAS_GT_UC(%struct.drm_i915_private* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 1
  %21 = call i32 @intel_runtime_pm_get(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.intel_guc* %25, %struct.intel_guc** %5, align 8
  %26 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %27 = icmp ne %struct.intel_guc* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %111

32:                                               ; preds = %1
  %33 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %34 = call i32 @check_all_doorbells(%struct.intel_guc* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %111

38:                                               ; preds = %32
  %39 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %40 = call i32 @guc_clients_disable(%struct.intel_guc* %39)
  %41 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %42 = call i32 @guc_clients_destroy(%struct.intel_guc* %41)
  %43 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %44 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %111

51:                                               ; preds = %38
  %52 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %53 = call i32 @guc_clients_create(%struct.intel_guc* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %111

58:                                               ; preds = %51
  %59 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %60 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @GEM_BUG_ON(i32 %64)
  %66 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %67 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @GUC_CLIENT_PRIORITY_KMD_NORMAL, align 4
  %70 = call i32 @validate_client(i64 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %102

75:                                               ; preds = %58
  %76 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %77 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @has_doorbell(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %102

85:                                               ; preds = %75
  %86 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %87 = call i32 @guc_clients_enable(%struct.intel_guc* %86)
  %88 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %89 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @client_doorbell_in_sync(i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %102

97:                                               ; preds = %85
  %98 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %99 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @create_doorbell(i64 %100)
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %93, %81, %73
  %103 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %104 = call i32 @guc_clients_disable(%struct.intel_guc* %103)
  %105 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %106 = call i32 @guc_clients_destroy(%struct.intel_guc* %105)
  %107 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %108 = call i32 @guc_clients_create(%struct.intel_guc* %107)
  %109 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %110 = call i32 @guc_clients_enable(%struct.intel_guc* %109)
  br label %111

111:                                              ; preds = %102, %56, %47, %37, %28
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 1
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @intel_runtime_pm_put(i32* %113, i32 %114)
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %117 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @HAS_GT_UC(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @check_all_doorbells(%struct.intel_guc*) #1

declare dso_local i32 @guc_clients_disable(%struct.intel_guc*) #1

declare dso_local i32 @guc_clients_destroy(%struct.intel_guc*) #1

declare dso_local i32 @guc_clients_create(%struct.intel_guc*) #1

declare dso_local i32 @validate_client(i64, i32) #1

declare dso_local i32 @has_doorbell(i64) #1

declare dso_local i32 @guc_clients_enable(%struct.intel_guc*) #1

declare dso_local i32 @client_doorbell_in_sync(i64) #1

declare dso_local i32 @create_doorbell(i64) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
