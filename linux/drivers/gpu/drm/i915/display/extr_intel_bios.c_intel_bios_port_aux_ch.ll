; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_intel_bios_port_aux_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_intel_bios_port_aux_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ddi_vbt_port_info* }
%struct.ddi_vbt_port_info = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"using AUX %c for port %c (platform default)\0A\00", align 1
@AUX_CH_A = common dso_local global i32 0, align 4
@AUX_CH_B = common dso_local global i32 0, align 4
@AUX_CH_C = common dso_local global i32 0, align 4
@AUX_CH_D = common dso_local global i32 0, align 4
@AUX_CH_E = common dso_local global i32 0, align 4
@AUX_CH_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"using AUX %c for port %c (VBT)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_bios_port_aux_ch(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddi_vbt_port_info*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %11, i64 %13
  store %struct.ddi_vbt_port_info* %14, %struct.ddi_vbt_port_info** %6, align 8
  %15 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %6, align 8
  %16 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @aux_ch_name(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @port_name(i32 %23)
  %25 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %6, align 8
  %29 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %43 [
    i32 133, label %31
    i32 132, label %33
    i32 131, label %35
    i32 130, label %37
    i32 129, label %39
    i32 128, label %41
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* @AUX_CH_A, align 4
  store i32 %32, i32* %7, align 4
  br label %49

33:                                               ; preds = %27
  %34 = load i32, i32* @AUX_CH_B, align 4
  store i32 %34, i32* %7, align 4
  br label %49

35:                                               ; preds = %27
  %36 = load i32, i32* @AUX_CH_C, align 4
  store i32 %36, i32* %7, align 4
  br label %49

37:                                               ; preds = %27
  %38 = load i32, i32* @AUX_CH_D, align 4
  store i32 %38, i32* %7, align 4
  br label %49

39:                                               ; preds = %27
  %40 = load i32, i32* @AUX_CH_E, align 4
  store i32 %40, i32* %7, align 4
  br label %49

41:                                               ; preds = %27
  %42 = load i32, i32* @AUX_CH_F, align 4
  store i32 %42, i32* %7, align 4
  br label %49

43:                                               ; preds = %27
  %44 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %6, align 8
  %45 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MISSING_CASE(i32 %46)
  %48 = load i32, i32* @AUX_CH_A, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %43, %41, %39, %37, %35, %33, %31
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @aux_ch_name(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @port_name(i32 %52)
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @aux_ch_name(i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
