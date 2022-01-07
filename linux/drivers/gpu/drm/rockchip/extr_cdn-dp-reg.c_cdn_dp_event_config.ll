; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32 }

@DPTX_EVENT_ENABLE_HPD = common dso_local global i32 0, align 4
@DPTX_EVENT_ENABLE_TRAINING = common dso_local global i32 0, align 4
@MB_MODULE_ID_DP_TX = common dso_local global i32 0, align 4
@DPTX_ENABLE_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"set event config failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_event_config(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca %struct.cdn_dp_device*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %2, align 8
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %6 = call i32 @memset(i32* %5, i32 0, i32 20)
  %7 = load i32, i32* @DPTX_EVENT_ENABLE_HPD, align 4
  %8 = load i32, i32* @DPTX_EVENT_ENABLE_TRAINING, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %12 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %13 = load i32, i32* @DPTX_ENABLE_EVENT, align 4
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %15 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %11, i32 %12, i32 %13, i32 20, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %20 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @DRM_DEV_ERROR(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
