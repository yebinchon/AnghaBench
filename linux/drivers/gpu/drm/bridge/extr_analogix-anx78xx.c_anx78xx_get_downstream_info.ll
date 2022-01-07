; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_get_downstream_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_get_downstream_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32 }

@DP_SINK_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Get sink count failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Downstream disconnected\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*)* @anx78xx_get_downstream_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_get_downstream_info(%struct.anx78xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anx78xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %3, align 8
  %6 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %7 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %6, i32 0, i32 0
  %8 = load i32, i32* @DP_SINK_COUNT, align 4
  %9 = call i32 @drm_dp_dpcd_readb(i32* %7, i32 %8, i32* %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DP_GET_SINK_COUNT(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %20, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DP_GET_SINK_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
