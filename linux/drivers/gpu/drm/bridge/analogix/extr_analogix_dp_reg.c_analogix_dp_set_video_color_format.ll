; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_video_color_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_video_color_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@IN_D_RANGE_SHIFT = common dso_local global i32 0, align 4
@IN_BPC_SHIFT = common dso_local global i32 0, align 4
@IN_COLOR_F_SHIFT = common dso_local global i32 0, align 4
@ANALOGIX_DP_VIDEO_CTL_2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_VIDEO_CTL_3 = common dso_local global i64 0, align 8
@IN_YC_COEFFI_MASK = common dso_local global i32 0, align 4
@IN_YC_COEFFI_ITU709 = common dso_local global i32 0, align 4
@IN_YC_COEFFI_ITU601 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_set_video_color_format(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca %struct.analogix_dp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %2, align 8
  %4 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %5 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IN_D_RANGE_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %11 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IN_BPC_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %9, %15
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %18 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IN_COLOR_F_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %16, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %26 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_2, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %32 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_3, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @IN_YC_COEFFI_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %42 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load i32, i32* @IN_YC_COEFFI_ITU709, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %1
  %51 = load i32, i32* @IN_YC_COEFFI_ITU601, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %57 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_3, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
