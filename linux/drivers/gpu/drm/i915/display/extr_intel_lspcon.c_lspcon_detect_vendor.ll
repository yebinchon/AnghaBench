; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_detect_vendor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_detect_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lspcon = type { i32 }
%struct.intel_dp = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.drm_dp_dpcd_ident }
%struct.drm_dp_dpcd_ident = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"Can't read description\0A\00", align 1
@LSPCON_VENDOR_MCA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Vendor: Mega Chips\0A\00", align 1
@LSPCON_VENDOR_PARADE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Vendor: Parade Tech\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid/Unknown vendor OUI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lspcon*)* @lspcon_detect_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lspcon_detect_vendor(%struct.intel_lspcon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_lspcon*, align 8
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca %struct.drm_dp_dpcd_ident*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_lspcon* %0, %struct.intel_lspcon** %3, align 8
  %7 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %8 = call %struct.intel_dp* @lspcon_to_intel_dp(%struct.intel_lspcon* %7)
  store %struct.intel_dp* %8, %struct.intel_dp** %4, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %10 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %9, i32 0, i32 2
  %11 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %12 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %11, i32 0, i32 0
  %13 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %14 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @drm_dp_is_branch(i32 %15)
  %17 = call i64 @drm_dp_read_desc(i32* %10, %struct.TYPE_2__* %12, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

21:                                               ; preds = %1
  %22 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %23 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.drm_dp_dpcd_ident* %24, %struct.drm_dp_dpcd_ident** %5, align 8
  %25 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %5, align 8
  %26 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %5, align 8
  %32 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %30, %36
  %38 = load %struct.drm_dp_dpcd_ident*, %struct.drm_dp_dpcd_ident** %5, align 8
  %39 = getelementptr inbounds %struct.drm_dp_dpcd_ident, %struct.drm_dp_dpcd_ident* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %37, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %55 [
    i32 129, label %45
    i32 128, label %50
  ]

45:                                               ; preds = %21
  %46 = load i32, i32* @LSPCON_VENDOR_MCA, align 4
  %47 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %48 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %57

50:                                               ; preds = %21
  %51 = load i32, i32* @LSPCON_VENDOR_PARADE, align 4
  %52 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %53 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %57

55:                                               ; preds = %21
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

57:                                               ; preds = %50, %45
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.intel_dp* @lspcon_to_intel_dp(%struct.intel_lspcon*) #1

declare dso_local i64 @drm_dp_read_desc(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @drm_dp_is_branch(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
