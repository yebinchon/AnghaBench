; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_audio_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_audio_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, i64, i32 }
%struct.audio_info = type { i64 }

@AUDIO_PACK_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"audio stop failed: %d\0A\00", align 1
@SPDIF_CTRL_ADDR = common dso_local global i64 0, align 8
@AUDIO_SRC_CNTL = common dso_local global i64 0, align 8
@AUDIO_SRC_CNFG = common dso_local global i64 0, align 8
@AUDIO_SW_RST = common dso_local global i32 0, align 4
@SMPL2PKT_CNTL = common dso_local global i64 0, align 8
@FIFO_CNTL = common dso_local global i64 0, align 8
@AFMT_SPDIF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_audio_stop(%struct.cdn_dp_device* %0, %struct.audio_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdn_dp_device*, align 8
  %5 = alloca %struct.audio_info*, align 8
  %6 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %4, align 8
  store %struct.audio_info* %1, %struct.audio_info** %5, align 8
  %7 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %8 = load i32, i32* @AUDIO_PACK_CONTROL, align 4
  %9 = call i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %14 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @DRM_DEV_ERROR(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %21 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPDIF_CTRL_ADDR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %27 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AUDIO_SRC_CNTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  %32 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %33 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AUDIO_SRC_CNFG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  %38 = load i32, i32* @AUDIO_SW_RST, align 4
  %39 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %40 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AUDIO_SRC_CNTL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %46 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AUDIO_SRC_CNTL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 0, i64 %49)
  %51 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %52 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SMPL2PKT_CNTL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 0, i64 %55)
  %57 = load i32, i32* @AUDIO_SW_RST, align 4
  %58 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %59 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SMPL2PKT_CNTL, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %65 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SMPL2PKT_CNTL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 0, i64 %68)
  %70 = load i32, i32* @AUDIO_SW_RST, align 4
  %71 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %72 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FIFO_CNTL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %78 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FIFO_CNTL, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 0, i64 %81)
  %83 = load %struct.audio_info*, %struct.audio_info** %5, align 8
  %84 = getelementptr inbounds %struct.audio_info, %struct.audio_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AFMT_SPDIF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %19
  %89 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %90 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @clk_disable_unprepare(i32 %91)
  br label %93

93:                                               ; preds = %88, %19
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %12
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @cdn_dp_reg_write(%struct.cdn_dp_device*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
