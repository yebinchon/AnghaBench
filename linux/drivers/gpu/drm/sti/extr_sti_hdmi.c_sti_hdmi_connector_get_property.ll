; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_connector_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_sti_hdmi_connector_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_property = type { i32 }
%struct.sti_hdmi_connector = type { %struct.drm_property*, %struct.sti_hdmi* }
%struct.sti_hdmi = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to get hdmi connector property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_connector_state*, %struct.drm_property*, i32*)* @sti_hdmi_connector_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hdmi_connector_get_property(%struct.drm_connector* %0, %struct.drm_connector_state* %1, %struct.drm_property* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sti_hdmi_connector*, align 8
  %11 = alloca %struct.sti_hdmi*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %13 = call %struct.sti_hdmi_connector* @to_sti_hdmi_connector(%struct.drm_connector* %12)
  store %struct.sti_hdmi_connector* %13, %struct.sti_hdmi_connector** %10, align 8
  %14 = load %struct.sti_hdmi_connector*, %struct.sti_hdmi_connector** %10, align 8
  %15 = getelementptr inbounds %struct.sti_hdmi_connector, %struct.sti_hdmi_connector* %14, i32 0, i32 1
  %16 = load %struct.sti_hdmi*, %struct.sti_hdmi** %15, align 8
  store %struct.sti_hdmi* %16, %struct.sti_hdmi** %11, align 8
  %17 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %18 = load %struct.sti_hdmi_connector*, %struct.sti_hdmi_connector** %10, align 8
  %19 = getelementptr inbounds %struct.sti_hdmi_connector, %struct.sti_hdmi_connector* %18, i32 0, i32 0
  %20 = load %struct.drm_property*, %struct.drm_property** %19, align 8
  %21 = icmp eq %struct.drm_property* %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.sti_hdmi*, %struct.sti_hdmi** %11, align 8
  %24 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %31

27:                                               ; preds = %4
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.sti_hdmi_connector* @to_sti_hdmi_connector(%struct.drm_connector*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
