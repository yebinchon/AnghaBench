; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp_toggle_signalling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp_toggle_signalling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, %struct.intel_hdmi }
%struct.intel_hdmi = type { %struct.intel_connector* }
%struct.intel_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s HDCP signalling failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32)* @intel_hdmi_hdcp_toggle_signalling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_hdcp_toggle_signalling(%struct.intel_digital_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_hdmi*, align 8
  %7 = alloca %struct.intel_connector*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %11 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %10, i32 0, i32 1
  store %struct.intel_hdmi* %11, %struct.intel_hdmi** %6, align 8
  %12 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %13 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %12, i32 0, i32 0
  %14 = load %struct.intel_connector*, %struct.intel_connector** %13, align 8
  store %struct.intel_connector* %14, %struct.intel_connector** %7, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 @usleep_range(i32 6, i32 60)
  br label %24

24:                                               ; preds = %22, %2
  %25 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %26 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @intel_ddi_toggle_hdcp_signalling(i32* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %24
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %41 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %48 = call i32 @kbl_repositioning_enc_en_signal(%struct.intel_connector* %47)
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %43, %39
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %31
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @intel_ddi_toggle_hdcp_signalling(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*, i32) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @kbl_repositioning_enc_en_signal(%struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
