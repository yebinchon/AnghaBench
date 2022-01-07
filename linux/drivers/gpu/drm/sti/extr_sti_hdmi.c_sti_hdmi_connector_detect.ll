; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.sti_hdmi_connector = type { %struct.sti_hdmi* }
%struct.sti_hdmi = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"hdmi cable connected\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"hdmi cable disconnected\0A\00", align 1
@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @sti_hdmi_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hdmi_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sti_hdmi_connector*, align 8
  %7 = alloca %struct.sti_hdmi*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call %struct.sti_hdmi_connector* @to_sti_hdmi_connector(%struct.drm_connector* %8)
  store %struct.sti_hdmi_connector* %9, %struct.sti_hdmi_connector** %6, align 8
  %10 = load %struct.sti_hdmi_connector*, %struct.sti_hdmi_connector** %6, align 8
  %11 = getelementptr inbounds %struct.sti_hdmi_connector, %struct.sti_hdmi_connector* %10, i32 0, i32 0
  %12 = load %struct.sti_hdmi*, %struct.sti_hdmi** %11, align 8
  store %struct.sti_hdmi* %12, %struct.sti_hdmi** %7, align 8
  %13 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sti_hdmi*, %struct.sti_hdmi** %7, align 8
  %15 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @connector_status_connected, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.sti_hdmi*, %struct.sti_hdmi** %7, align 8
  %24 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %27 = call i32 @cec_notifier_set_phys_addr(i32 %25, i32 %26)
  %28 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.sti_hdmi_connector* @to_sti_hdmi_connector(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @cec_notifier_set_phys_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
