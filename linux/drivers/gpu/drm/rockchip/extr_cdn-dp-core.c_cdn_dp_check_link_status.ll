; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_check_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_check_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cdn_dp_port = type { i32 }

@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@DP_LANE0_1_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get link status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_check_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_check_link_status(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cdn_dp_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %9 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %14 = call %struct.cdn_dp_port* @cdn_dp_connected_port(%struct.cdn_dp_device* %13)
  store %struct.cdn_dp_port* %14, %struct.cdn_dp_port** %6, align 8
  %15 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %16 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @drm_dp_max_lane_count(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %6, align 8
  %20 = icmp ne %struct.cdn_dp_port* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %23 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %29 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %21, %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %49

34:                                               ; preds = %27
  %35 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %36 = load i32, i32* @DP_LANE0_1_STATUS, align 4
  %37 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %38 = call i64 @cdn_dp_dpcd_read(%struct.cdn_dp_device* %35, i32 %36, i32* %12, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %49

42:                                               ; preds = %34
  %43 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %6, align 8
  %44 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @min(i32 %45, i32 %46)
  %48 = call i32 @drm_dp_channel_eq_ok(i32* %12, i32 %47)
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %42, %40, %33
  %50 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.cdn_dp_port* @cdn_dp_connected_port(%struct.cdn_dp_device*) #2

declare dso_local i32 @drm_dp_max_lane_count(i32) #2

declare dso_local i64 @cdn_dp_dpcd_read(%struct.cdn_dp_device*, i32, i32*, i32) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

declare dso_local i32 @drm_dp_channel_eq_ok(i32*, i32) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
