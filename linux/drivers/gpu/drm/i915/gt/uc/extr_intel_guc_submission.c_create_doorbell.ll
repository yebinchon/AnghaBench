; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_create_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_create_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_client = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GUC_DOORBELL_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Couldn't create client %u doorbell: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc_client*)* @create_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_doorbell(%struct.intel_guc_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc_client*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_guc_client* %0, %struct.intel_guc_client** %3, align 8
  %5 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %6 = call i32 @has_doorbell(%struct.intel_guc_client* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %17 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %18 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__update_doorbell_desc(%struct.intel_guc_client* %16, i32 %19)
  %21 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %22 = call i32 @__init_doorbell(%struct.intel_guc_client* %21)
  %23 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %24 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %27 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__guc_allocate_doorbell(i32 %25, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %15
  %33 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %34 = call i32 @__fini_doorbell(%struct.intel_guc_client* %33)
  %35 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %36 = load i32, i32* @GUC_DOORBELL_INVALID, align 4
  %37 = call i32 @__update_doorbell_desc(%struct.intel_guc_client* %35, i32 %36)
  %38 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %39 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %32, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @has_doorbell(%struct.intel_guc_client*) #1

declare dso_local i32 @__update_doorbell_desc(%struct.intel_guc_client*, i32) #1

declare dso_local i32 @__init_doorbell(%struct.intel_guc_client*) #1

declare dso_local i32 @__guc_allocate_doorbell(i32, i32) #1

declare dso_local i32 @__fini_doorbell(%struct.intel_guc_client*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
