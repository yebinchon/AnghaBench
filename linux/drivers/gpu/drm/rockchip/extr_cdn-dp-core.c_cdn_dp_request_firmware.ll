; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@CDN_FW_TIMEOUT_MS = common dso_local global i32 0, align 4
@CDN_DP_FIRMWARE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to request firmware: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Timed out trying to load firmware\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_request_firmware(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i32, i32* @CDN_FW_TIMEOUT_MS, align 4
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  %10 = add i64 %7, %9
  store i64 %10, i64* %5, align 8
  store i64 1000, i64* %6, align 8
  %11 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %12 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %11, i32 0, i32 1
  %13 = call i32 @mutex_is_locked(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %19 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

23:                                               ; preds = %1
  %24 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %25 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  br label %27

27:                                               ; preds = %44, %23
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @time_before(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %27
  %33 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %34 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %33, i32 0, i32 3
  %35 = load i32, i32* @CDN_DP_FIRMWARE, align 4
  %36 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %37 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @request_firmware(i32* %34, i32 %35, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @msleep(i64 %45)
  %47 = load i64, i64* %6, align 8
  %48 = mul i64 %47, 2
  store i64 %48, i64* %6, align 8
  br label %27

49:                                               ; preds = %32
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %54 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %69

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %61 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %69

62:                                               ; preds = %27
  %63 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %64 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ETIMEDOUT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %59, %52
  %70 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %71 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %70, i32 0, i32 1
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @request_firmware(i32*, i32, i32) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
