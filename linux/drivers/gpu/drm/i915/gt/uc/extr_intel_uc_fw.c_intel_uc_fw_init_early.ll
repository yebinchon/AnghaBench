; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_init_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_intel_uc_fw_init_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { i32, i64*, i64* }

@INTEL_UC_FIRMWARE_UNINITIALIZED = common dso_local global i32 0, align 4
@INTEL_UC_FIRMWARE_SELECTED = common dso_local global i32 0, align 4
@INTEL_UC_FIRMWARE_DISABLED = common dso_local global i32 0, align 4
@INTEL_UC_FIRMWARE_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uc_fw_init_early(%struct.intel_uc_fw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.intel_uc_fw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @INTEL_UC_FIRMWARE_UNINITIALIZED, align 4
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %14 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = call i32 @GEM_BUG_ON(i64* %15)
  %17 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %18 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = call i32 @GEM_BUG_ON(i64* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %23 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @__uc_fw_auto_select(%struct.intel_uc_fw* %27, i32 %28, i32 %29)
  %31 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %32 = call i32 @__uc_fw_user_override(%struct.intel_uc_fw* %31)
  br label %33

33:                                               ; preds = %26, %5
  %34 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %35 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %36 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %41 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @INTEL_UC_FIRMWARE_SELECTED, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @INTEL_UC_FIRMWARE_DISABLED, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  br label %53

51:                                               ; preds = %33
  %52 = load i32, i32* @INTEL_UC_FIRMWARE_NOT_SUPPORTED, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i32 @intel_uc_fw_change_status(%struct.intel_uc_fw* %34, i32 %54)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @GEM_BUG_ON(i64*) #1

declare dso_local i32 @__uc_fw_auto_select(%struct.intel_uc_fw*, i32, i32) #1

declare dso_local i32 @__uc_fw_user_override(%struct.intel_uc_fw*) #1

declare dso_local i32 @intel_uc_fw_change_status(%struct.intel_uc_fw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
