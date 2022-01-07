; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_set_host_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_set_host_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32 }

@CDN_DP_MAX_LINK_RATE = common dso_local global i32 0, align 4
@SCRAMBLER_EN = common dso_local global i32 0, align 4
@VOLTAGE_LEVEL_2 = common dso_local global i32 0, align 4
@PRE_EMPHASIS_LEVEL_3 = common dso_local global i32 0, align 4
@PTS1 = common dso_local global i32 0, align 4
@PTS2 = common dso_local global i32 0, align 4
@PTS3 = common dso_local global i32 0, align 4
@PTS4 = common dso_local global i32 0, align 4
@FAST_LT_NOT_SUPPORT = common dso_local global i32 0, align 4
@LANE_MAPPING_FLIPPED = common dso_local global i32 0, align 4
@LANE_MAPPING_NORMAL = common dso_local global i32 0, align 4
@ENHANCED = common dso_local global i32 0, align 4
@MB_MODULE_ID_DP_TX = common dso_local global i32 0, align 4
@DPTX_SET_HOST_CAPABILITIES = common dso_local global i32 0, align 4
@DP_AUX_SWAP_INVERSION_CONTROL = common dso_local global i32 0, align 4
@AUX_HOST_INVERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set host cap failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_set_host_cap(%struct.cdn_dp_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cdn_dp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @CDN_DP_MAX_LINK_RATE, align 4
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SCRAMBLER_EN, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @VOLTAGE_LEVEL_2, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @PRE_EMPHASIS_LEVEL_3, align 4
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @PTS1, align 4
  %20 = load i32, i32* @PTS2, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PTS3, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PTS4, align 4
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* @FAST_LT_NOT_SUPPORT, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @LANE_MAPPING_FLIPPED, align 4
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @LANE_MAPPING_NORMAL, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @ENHANCED, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  store i32 %38, i32* %39, align 4
  %40 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %41 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %42 = load i32, i32* @DPTX_SET_HOST_CAPABILITIES, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %44 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %40, i32 %41, i32 %42, i32 32, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %50 = load i32, i32* @DP_AUX_SWAP_INVERSION_CONTROL, align 4
  %51 = load i32, i32* @AUX_HOST_INVERT, align 4
  %52 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %58 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @DRM_DEV_ERROR(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @cdn_dp_reg_write(%struct.cdn_dp_device*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
