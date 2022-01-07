; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hdmi_port_clock_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_hdmi_port_clock_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_hdmi = type { i32, %struct.TYPE_5__, %struct.intel_connector* }
%struct.TYPE_5__ = type { i32 }
%struct.intel_connector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.TYPE_6__ = type { %struct.intel_encoder }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_hdmi*, i32, i32)* @hdmi_port_clock_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_port_clock_limit(%struct.intel_hdmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_hdmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_connector*, align 8
  %10 = alloca %struct.drm_display_info*, align 8
  store %struct.intel_hdmi* %0, %struct.intel_hdmi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.intel_hdmi*, %struct.intel_hdmi** %4, align 8
  %12 = call %struct.TYPE_6__* @hdmi_to_dig_port(%struct.intel_hdmi* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.intel_encoder* %13, %struct.intel_encoder** %7, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %15 = call i32 @intel_hdmi_source_max_tmds_clock(%struct.intel_encoder* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %3
  %19 = load %struct.intel_hdmi*, %struct.intel_hdmi** %4, align 8
  %20 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %19, i32 0, i32 2
  %21 = load %struct.intel_connector*, %struct.intel_connector** %20, align 8
  store %struct.intel_connector* %21, %struct.intel_connector** %9, align 8
  %22 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %23 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.drm_display_info* %24, %struct.drm_display_info** %10, align 8
  %25 = load %struct.intel_hdmi*, %struct.intel_hdmi** %4, align 8
  %26 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.intel_hdmi*, %struct.intel_hdmi** %4, align 8
  %33 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @min(i32 %31, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %30, %18
  %38 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %39 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %45 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @min(i32 %43, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %60

48:                                               ; preds = %37
  %49 = load %struct.intel_hdmi*, %struct.intel_hdmi** %4, align 8
  %50 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @min(i32 %57, i32 165000)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %3
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_6__* @hdmi_to_dig_port(%struct.intel_hdmi*) #1

declare dso_local i32 @intel_hdmi_source_max_tmds_clock(%struct.intel_encoder*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
