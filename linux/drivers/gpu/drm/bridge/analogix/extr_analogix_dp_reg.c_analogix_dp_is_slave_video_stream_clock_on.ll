; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_is_slave_video_stream_clock_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_is_slave_video_stream_clock_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i64 }

@ANALOGIX_DP_SYS_CTL_1 = common dso_local global i64 0, align 8
@DET_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Input stream clock not detected.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ANALOGIX_DP_SYS_CTL_2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"wait SYS_CTL_2.\0A\00", align 1
@CHA_STA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Input stream clk is changing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @analogix_dp_is_slave_video_stream_clock_on(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %5 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %6 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ANALOGIX_DP_SYS_CTL_1, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %13 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ANALOGIX_DP_SYS_CTL_1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %19 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ANALOGIX_DP_SYS_CTL_1, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DET_STA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %30 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %71

35:                                               ; preds = %1
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %37 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ANALOGIX_DP_SYS_CTL_2, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %44 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ANALOGIX_DP_SYS_CTL_2, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %50 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ANALOGIX_DP_SYS_CTL_2, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %4, align 4
  %55 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %56 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @CHA_STA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %35
  %64 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %65 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %63, %28
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
