; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_fw.c_intel_guc_fw_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_fw.c_intel_guc_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }
%struct.intel_gt = type { %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@UOS_MOVE = common dso_local global i32 0, align 4
@INTEL_UC_FIRMWARE_RUNNING = common dso_local global i32 0, align 4
@INTEL_UC_FIRMWARE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_fw_upload(%struct.intel_guc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca %struct.intel_uncore*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  %7 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %8 = call %struct.intel_gt* @guc_to_gt(%struct.intel_guc* %7)
  store %struct.intel_gt* %8, %struct.intel_gt** %4, align 8
  %9 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 0
  %11 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  store %struct.intel_uncore* %11, %struct.intel_uncore** %5, align 8
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %13 = call i32 @guc_prepare_xfer(%struct.intel_uncore* %12)
  %14 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %15 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %14, i32 0, i32 0
  %16 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %17 = call i32 @guc_xfer_rsa(i32* %15, %struct.intel_uncore* %16)
  %18 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %19 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %18, i32 0, i32 0
  %20 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %21 = load i32, i32* @UOS_MOVE, align 4
  %22 = call i32 @intel_uc_fw_upload(i32* %19, %struct.intel_gt* %20, i32 8192, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %28 = call i32 @guc_wait_ucode(%struct.intel_uncore* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %34 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %33, i32 0, i32 0
  %35 = load i32, i32* @INTEL_UC_FIRMWARE_RUNNING, align 4
  %36 = call i32 @intel_uc_fw_change_status(i32* %34, i32 %35)
  store i32 0, i32* %2, align 4
  br label %43

37:                                               ; preds = %31, %25
  %38 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %39 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %38, i32 0, i32 0
  %40 = load i32, i32* @INTEL_UC_FIRMWARE_FAIL, align 4
  %41 = call i32 @intel_uc_fw_change_status(i32* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.intel_gt* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @guc_prepare_xfer(%struct.intel_uncore*) #1

declare dso_local i32 @guc_xfer_rsa(i32*, %struct.intel_uncore*) #1

declare dso_local i32 @intel_uc_fw_upload(i32*, %struct.intel_gt*, i32, i32) #1

declare dso_local i32 @guc_wait_ucode(%struct.intel_uncore*) #1

declare dso_local i32 @intel_uc_fw_change_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
