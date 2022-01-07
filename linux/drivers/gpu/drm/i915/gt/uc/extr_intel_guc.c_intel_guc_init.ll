; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32, i32, i32, i32, i32 }
%struct.intel_gt = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"failed with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_init(%struct.intel_guc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  %6 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %7 = call %struct.intel_gt* @guc_to_gt(%struct.intel_guc* %6)
  store %struct.intel_gt* %7, %struct.intel_gt** %4, align 8
  %8 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %9 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %8, i32 0, i32 0
  %10 = call i32 @intel_uc_fw_init(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %16 = call i32 @guc_shared_data_create(%struct.intel_guc* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %86

20:                                               ; preds = %14
  %21 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %22 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @GEM_BUG_ON(i32 %26)
  %28 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %29 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %28, i32 0, i32 1
  %30 = call i32 @intel_guc_log_create(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %83

34:                                               ; preds = %20
  %35 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %36 = call i32 @intel_guc_ads_create(%struct.intel_guc* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %79

40:                                               ; preds = %34
  %41 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %42 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @GEM_BUG_ON(i32 %46)
  %48 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %49 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %48, i32 0, i32 2
  %50 = call i32 @intel_guc_ct_init(i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %76

54:                                               ; preds = %40
  %55 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %56 = call i64 @intel_guc_is_submission_supported(%struct.intel_guc* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %60 = call i32 @intel_guc_submission_init(%struct.intel_guc* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %72

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %54
  %66 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %67 = call i32 @guc_init_params(%struct.intel_guc* %66)
  %68 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %69 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @i915_ggtt_enable_guc(i32 %70)
  store i32 0, i32* %2, align 4
  br label %103

72:                                               ; preds = %63
  %73 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %74 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %73, i32 0, i32 2
  %75 = call i32 @intel_guc_ct_fini(i32* %74)
  br label %76

76:                                               ; preds = %72, %53
  %77 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %78 = call i32 @intel_guc_ads_destroy(%struct.intel_guc* %77)
  br label %79

79:                                               ; preds = %76, %39
  %80 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %81 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %80, i32 0, i32 1
  %82 = call i32 @intel_guc_log_destroy(i32* %81)
  br label %83

83:                                               ; preds = %79, %33
  %84 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %85 = call i32 @guc_shared_data_destroy(%struct.intel_guc* %84)
  br label %86

86:                                               ; preds = %83, %19
  %87 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %88 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %87, i32 0, i32 0
  %89 = call i32 @intel_uc_fw_fini(i32* %88)
  br label %90

90:                                               ; preds = %86, %13
  %91 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %92 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %91, i32 0, i32 0
  %93 = call i32 @intel_uc_fw_cleanup_fetch(i32* %92)
  %94 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %95 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %90, %65
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.intel_gt* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @intel_uc_fw_init(i32*) #1

declare dso_local i32 @guc_shared_data_create(%struct.intel_guc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_guc_log_create(i32*) #1

declare dso_local i32 @intel_guc_ads_create(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_ct_init(i32*) #1

declare dso_local i64 @intel_guc_is_submission_supported(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_submission_init(%struct.intel_guc*) #1

declare dso_local i32 @guc_init_params(%struct.intel_guc*) #1

declare dso_local i32 @i915_ggtt_enable_guc(i32) #1

declare dso_local i32 @intel_guc_ct_fini(i32*) #1

declare dso_local i32 @intel_guc_ads_destroy(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_log_destroy(i32*) #1

declare dso_local i32 @guc_shared_data_destroy(%struct.intel_guc*) #1

declare dso_local i32 @intel_uc_fw_fini(i32*) #1

declare dso_local i32 @intel_uc_fw_cleanup_fetch(i32*) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
