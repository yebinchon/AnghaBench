; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_fw.c_guc_wait_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_fw.c_guc_wait_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"GuC status %#x\0A\00", align 1
@GS_BOOTROM_MASK = common dso_local global i32 0, align 4
@GS_BOOTROM_RSA_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"GuC firmware signature verification failed\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@GS_UKERNEL_MASK = common dso_local global i32 0, align 4
@GS_UKERNEL_EXCEPTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"GuC firmware exception. EIP: %#x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore*)* @guc_wait_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guc_wait_ucode(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %5 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %6 = call i32 @guc_ready(%struct.intel_uncore* %5, i32* %3)
  %7 = call i32 @wait_for(i32 %6, i32 100)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GS_BOOTROM_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @GS_BOOTROM_RSA_FAILED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ENOEXEC, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @GS_UKERNEL_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @GS_UKERNEL_EXCEPTION, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %27 = call i32 @SOFT_SCRATCH(i32 13)
  %28 = call i32 @intel_uncore_read(%struct.intel_uncore* %26, i32 %27)
  %29 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %25, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @guc_ready(%struct.intel_uncore*, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @SOFT_SCRATCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
