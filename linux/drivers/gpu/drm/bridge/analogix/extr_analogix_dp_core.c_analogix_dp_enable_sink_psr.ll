; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_enable_sink_psr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_enable_sink_psr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i32, i32 }

@DP_PSR_EN_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get psr config\0A\00", align 1
@DP_PSR_ENABLE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to disable panel psr\0A\00", align 1
@DP_PSR_CRC_VERIFICATION = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to set panel psr\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"enable psr fail, force to disable psr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_enable_sink_psr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_enable_sink_psr(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %6 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %7 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %6, i32 0, i32 2
  %8 = load i32, i32* @DP_PSR_EN_CFG, align 4
  %9 = call i32 @drm_dp_dpcd_readb(i32* %7, i32 %8, i8* %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %14 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %75

17:                                               ; preds = %1
  %18 = load i8, i8* @DP_PSR_ENABLE, align 1
  %19 = zext i8 %18 to i32
  %20 = xor i32 %19, -1
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %4, align 1
  %25 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %26 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %25, i32 0, i32 2
  %27 = load i32, i32* @DP_PSR_EN_CFG, align 4
  %28 = load i8, i8* %4, align 1
  %29 = call i32 @drm_dp_dpcd_writeb(i32* %26, i32 %27, i8 zeroext %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %34 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %75

37:                                               ; preds = %17
  %38 = load i8, i8* @DP_PSR_CRC_VERIFICATION, align 1
  store i8 %38, i8* %4, align 1
  %39 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %40 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %39, i32 0, i32 2
  %41 = load i32, i32* @DP_PSR_EN_CFG, align 4
  %42 = load i8, i8* %4, align 1
  %43 = call i32 @drm_dp_dpcd_writeb(i32* %40, i32 %41, i8 zeroext %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %48 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %75

51:                                               ; preds = %37
  %52 = load i8, i8* @DP_PSR_ENABLE, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @DP_PSR_CRC_VERIFICATION, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %4, align 1
  %58 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %59 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %58, i32 0, i32 2
  %60 = load i32, i32* @DP_PSR_EN_CFG, align 4
  %61 = load i8, i8* %4, align 1
  %62 = call i32 @drm_dp_dpcd_writeb(i32* %59, i32 %60, i8 zeroext %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %67 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %75

70:                                               ; preds = %51
  %71 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %72 = call i32 @analogix_dp_enable_psr_crc(%struct.analogix_dp_device* %71)
  %73 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %74 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  store i32 0, i32* %2, align 4
  br label %81

75:                                               ; preds = %65, %46, %32, %12
  %76 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %77 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(i32*, i32, i8 zeroext) #1

declare dso_local i32 @analogix_dp_enable_psr_crc(%struct.analogix_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
