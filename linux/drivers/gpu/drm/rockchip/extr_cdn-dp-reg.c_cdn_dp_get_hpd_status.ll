; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_get_hpd_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_get_hpd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32 }

@MB_MODULE_ID_DP_TX = common dso_local global i32 0, align 4
@DPTX_HPD_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"get hpd status failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_get_hpd_status(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %6 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %7 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %8 = load i32, i32* @DPTX_HPD_STATE, align 4
  %9 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %6, i32 %7, i32 %8, i32 0, i32* null)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %15 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %16 = load i32, i32* @DPTX_HPD_STATE, align 4
  %17 = call i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device* %14, i32 %15, i32 %16, i32 4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %29

21:                                               ; preds = %13
  %22 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %23 = call i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device* %22, i32* %4, i32 4)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %26, %20, %12
  %30 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %31 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @DRM_DEV_ERROR(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %27
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device*, i32, i32, i32) #1

declare dso_local i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device*, i32*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
