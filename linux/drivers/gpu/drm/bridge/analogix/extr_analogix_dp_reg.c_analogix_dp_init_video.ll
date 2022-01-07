; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64 }

@VSYNC_DET = common dso_local global i32 0, align 4
@VID_FORMAT_CHG = common dso_local global i32 0, align 4
@VID_CLK_CHG = common dso_local global i32 0, align 4
@ANALOGIX_DP_COMMON_INT_STA_1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SYS_CTL_1 = common dso_local global i64 0, align 8
@CHA_CTRL = common dso_local global i32 0, align 4
@ANALOGIX_DP_SYS_CTL_2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_SYS_CTL_3 = common dso_local global i64 0, align 8
@ANALOGIX_DP_VIDEO_CTL_8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_init_video(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca %struct.analogix_dp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %2, align 8
  %4 = load i32, i32* @VSYNC_DET, align 4
  %5 = load i32, i32* @VID_FORMAT_CHG, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @VID_CLK_CHG, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %11 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ANALOGIX_DP_COMMON_INT_STA_1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %9, i64 %14)
  store i32 0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %18 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ANALOGIX_DP_SYS_CTL_1, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = call i32 @CHA_CRI(i32 4)
  %24 = load i32, i32* @CHA_CTRL, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %28 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ANALOGIX_DP_SYS_CTL_2, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  store i32 0, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %35 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ANALOGIX_DP_SYS_CTL_3, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = call i32 @VID_HRES_TH(i32 2)
  %41 = call i32 @VID_VRES_TH(i32 0)
  %42 = or i32 %40, %41
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %45 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ANALOGIX_DP_VIDEO_CTL_8, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CHA_CRI(i32) #1

declare dso_local i32 @VID_HRES_TH(i32) #1

declare dso_local i32 @VID_VRES_TH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
