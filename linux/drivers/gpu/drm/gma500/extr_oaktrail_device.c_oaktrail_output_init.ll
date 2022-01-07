; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_device.c_oaktrail_output_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_device.c_oaktrail_output_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"DSI is not supported\0A\00", align 1
@SDVOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @oaktrail_output_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oaktrail_output_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 1
  %6 = load %struct.drm_psb_private*, %struct.drm_psb_private** %5, align 8
  store %struct.drm_psb_private* %6, %struct.drm_psb_private** %3, align 8
  %7 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %14 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %13, i32 0, i32 0
  %15 = call i32 @oaktrail_lvds_init(%struct.drm_device* %12, i32* %14)
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %28, i32 0, i32 0
  %30 = call i32 @oaktrail_hdmi_init(%struct.drm_device* %27, i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = load i32, i32* @SDVOB, align 4
  %34 = call i32 @psb_intel_sdvo_init(%struct.drm_device* %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @oaktrail_lvds_init(%struct.drm_device*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @oaktrail_hdmi_init(%struct.drm_device*, i32*) #1

declare dso_local i32 @psb_intel_sdvo_init(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
