; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { i32, i32 }
%struct.intel_gt = type { i32 }

@ENOEXEC = common dso_local global i32 0, align 4
@INTEL_UC_FIRMWARE_TRANSFERRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to load %s firmware %s (%d)\0A\00", align 1
@INTEL_UC_FIRMWARE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_uc_fw_upload(%struct.intel_uc_fw* %0, %struct.intel_gt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uc_fw*, align 8
  %7 = alloca %struct.intel_gt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %6, align 8
  store %struct.intel_gt* %1, %struct.intel_gt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %12 = call i32 @intel_uc_fw_is_loaded(%struct.intel_uc_fw* %11)
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  %14 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %15 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ENOEXEC, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @i915_inject_load_error(i32 %16, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %67

24:                                               ; preds = %4
  %25 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %26 = call i32 @intel_uc_fw_is_available(%struct.intel_uc_fw* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOEXEC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %33 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %34 = call i32 @intel_uc_fw_ggtt_bind(%struct.intel_uc_fw* %32, %struct.intel_gt* %33)
  %35 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %36 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @uc_fw_xfer(%struct.intel_uc_fw* %35, %struct.intel_gt* %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %41 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %42 = call i32 @intel_uc_fw_ggtt_unbind(%struct.intel_uc_fw* %40, %struct.intel_gt* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %50

46:                                               ; preds = %31
  %47 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %48 = load i32, i32* @INTEL_UC_FIRMWARE_TRANSFERRED, align 4
  %49 = call i32 @intel_uc_fw_change_status(%struct.intel_uc_fw* %47, i32 %48)
  store i32 0, i32* %5, align 4
  br label %67

50:                                               ; preds = %45
  %51 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %52 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %55 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @intel_uc_fw_type_repr(i32 %56)
  %58 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %59 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @i915_probe_error(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 %61)
  %63 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %64 = load i32, i32* @INTEL_UC_FIRMWARE_FAIL, align 4
  %65 = call i32 @intel_uc_fw_change_status(%struct.intel_uc_fw* %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %50, %46, %28, %22
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uc_fw_is_loaded(%struct.intel_uc_fw*) #1

declare dso_local i32 @i915_inject_load_error(i32, i32) #1

declare dso_local i32 @intel_uc_fw_is_available(%struct.intel_uc_fw*) #1

declare dso_local i32 @intel_uc_fw_ggtt_bind(%struct.intel_uc_fw*, %struct.intel_gt*) #1

declare dso_local i32 @uc_fw_xfer(%struct.intel_uc_fw*, %struct.intel_gt*, i32, i32) #1

declare dso_local i32 @intel_uc_fw_ggtt_unbind(%struct.intel_uc_fw*, %struct.intel_gt*) #1

declare dso_local i32 @intel_uc_fw_change_status(%struct.intel_uc_fw*, i32) #1

declare dso_local i32 @i915_probe_error(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @intel_uc_fw_type_repr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
