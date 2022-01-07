; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_huc.c_intel_huc_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_huc.c_intel_huc_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_huc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.intel_gt = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_guc }
%struct.intel_guc = type { i32 }

@ENOEXEC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HuC: GuC did not ack Auth request %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"HuC: Firmware not verified %d\0A\00", align 1
@INTEL_UC_FIRMWARE_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"HuC: Authentication failed %d\0A\00", align 1
@INTEL_UC_FIRMWARE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_huc_auth(%struct.intel_huc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_huc*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca %struct.intel_guc*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_huc* %0, %struct.intel_huc** %3, align 8
  %7 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %8 = call %struct.intel_gt* @huc_to_gt(%struct.intel_huc* %7)
  store %struct.intel_gt* %8, %struct.intel_gt** %4, align 8
  %9 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.intel_guc* %11, %struct.intel_guc** %5, align 8
  %12 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %13 = call i32 @intel_huc_is_authenticated(%struct.intel_huc* %12)
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %16 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %15, i32 0, i32 0
  %17 = call i32 @intel_uc_fw_is_loaded(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOEXEC, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %83

22:                                               ; preds = %1
  %23 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %24 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @i915_inject_load_error(i32 %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %72

32:                                               ; preds = %22
  %33 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %34 = load %struct.intel_guc*, %struct.intel_guc** %5, align 8
  %35 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %36 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @intel_guc_ggtt_offset(%struct.intel_guc* %34, i32 %37)
  %39 = call i32 @intel_guc_auth_huc(%struct.intel_guc* %33, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %72

45:                                               ; preds = %32
  %46 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %47 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %50 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %54 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %58 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @__intel_wait_for_register(i32 %48, i32 %52, i32 %56, i32 %60, i32 2, i32 50, i32* null)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %45
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %72

67:                                               ; preds = %45
  %68 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %69 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %68, i32 0, i32 0
  %70 = load i32, i32* @INTEL_UC_FIRMWARE_RUNNING, align 4
  %71 = call i32 @intel_uc_fw_change_status(i32* %69, i32 %70)
  store i32 0, i32* %2, align 4
  br label %83

72:                                               ; preds = %64, %42, %31
  %73 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %74 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @i915_probe_error(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.intel_huc*, %struct.intel_huc** %3, align 8
  %79 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %78, i32 0, i32 0
  %80 = load i32, i32* @INTEL_UC_FIRMWARE_FAIL, align 4
  %81 = call i32 @intel_uc_fw_change_status(i32* %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %72, %67, %19
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.intel_gt* @huc_to_gt(%struct.intel_huc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_huc_is_authenticated(%struct.intel_huc*) #1

declare dso_local i32 @intel_uc_fw_is_loaded(i32*) #1

declare dso_local i32 @i915_inject_load_error(i32, i32) #1

declare dso_local i32 @intel_guc_auth_huc(%struct.intel_guc*, i32) #1

declare dso_local i32 @intel_guc_ggtt_offset(%struct.intel_guc*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @__intel_wait_for_register(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @intel_uc_fw_change_status(i32*, i32) #1

declare dso_local i32 @i915_probe_error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
