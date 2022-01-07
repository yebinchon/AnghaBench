; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_clients_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_clients_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { %struct.intel_guc_client* }
%struct.intel_guc_client = type { i32 }

@GUC_CLIENT_PRIORITY_KMD_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to create GuC client for submission!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc*)* @guc_clients_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guc_clients_create(%struct.intel_guc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.intel_guc_client*, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  %5 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %6 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %5, i32 0, i32 0
  %7 = load %struct.intel_guc_client*, %struct.intel_guc_client** %6, align 8
  %8 = call i32 @GEM_BUG_ON(%struct.intel_guc_client* %7)
  %9 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %10 = load i32, i32* @GUC_CLIENT_PRIORITY_KMD_NORMAL, align 4
  %11 = call %struct.intel_guc_client* @guc_client_alloc(%struct.intel_guc* %9, i32 %10)
  store %struct.intel_guc_client* %11, %struct.intel_guc_client** %4, align 8
  %12 = load %struct.intel_guc_client*, %struct.intel_guc_client** %4, align 8
  %13 = call i64 @IS_ERR(%struct.intel_guc_client* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.intel_guc_client*, %struct.intel_guc_client** %4, align 8
  %18 = call i32 @PTR_ERR(%struct.intel_guc_client* %17)
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.intel_guc_client*, %struct.intel_guc_client** %4, align 8
  %21 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %22 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %21, i32 0, i32 0
  store %struct.intel_guc_client* %20, %struct.intel_guc_client** %22, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @GEM_BUG_ON(%struct.intel_guc_client*) #1

declare dso_local %struct.intel_guc_client* @guc_client_alloc(%struct.intel_guc*, i32) #1

declare dso_local i64 @IS_ERR(%struct.intel_guc_client*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_guc_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
