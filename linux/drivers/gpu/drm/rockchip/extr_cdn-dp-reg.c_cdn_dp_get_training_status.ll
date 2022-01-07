; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_get_training_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_get_training_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MB_MODULE_ID_DP_TX = common dso_local global i32 0, align 4
@DPTX_READ_LINK_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"get training status failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_get_training_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_get_training_status(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca %struct.cdn_dp_device*, align 8
  %3 = alloca [10 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %2, align 8
  %5 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %6 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %7 = load i32, i32* @DPTX_READ_LINK_STAT, align 4
  %8 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %5, i32 %6, i32 %7, i32 0, i32* null)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %14 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %15 = load i32, i32* @DPTX_READ_LINK_STAT, align 4
  %16 = call i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device* %13, i32 %14, i32 %15, i32 40)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %39

20:                                               ; preds = %12
  %21 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %23 = call i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device* %21, i32* %22, i32 40)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %39

27:                                               ; preds = %20
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 0
  %29 = load i32, i32* %28, align 16
  %30 = call i32 @drm_dp_bw_code_to_link_rate(i32 %29)
  %31 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %32 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %37 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %27, %26, %19, %11
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %44 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DRM_DEV_ERROR(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device*, i32, i32, i32) #1

declare dso_local i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device*, i32*, i32) #1

declare dso_local i32 @drm_dp_bw_code_to_link_rate(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
