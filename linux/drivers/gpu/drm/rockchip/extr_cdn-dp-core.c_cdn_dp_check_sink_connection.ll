; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_check_sink_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_check_sink_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i64, i64, i32, %struct.cdn_dp_port** }
%struct.cdn_dp_port = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@CDN_DPCD_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"active_port is wrong!\0A\00", align 1
@EXTCON_DISP_DP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Get sink capability timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_check_sink_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_check_sink_connection(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cdn_dp_port*, align 8
  %6 = alloca i64, align 8
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i32, i32* @CDN_DPCD_TIMEOUT_MS, align 4
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  %10 = add i64 %7, %9
  store i64 %10, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %12 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %17 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %20 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15, %1
  %24 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %25 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @DRM_DEV_ERROR(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %66

28:                                               ; preds = %15
  %29 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %30 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %29, i32 0, i32 3
  %31 = load %struct.cdn_dp_port**, %struct.cdn_dp_port*** %30, align 8
  %32 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %33 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.cdn_dp_port*, %struct.cdn_dp_port** %31, i64 %34
  %36 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %35, align 8
  store %struct.cdn_dp_port* %36, %struct.cdn_dp_port** %5, align 8
  br label %37

37:                                               ; preds = %59, %28
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @time_before(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %5, align 8
  %44 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EXTCON_DISP_DP, align 4
  %47 = call i32 @extcon_get_state(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %66

50:                                               ; preds = %42
  %51 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %52 = call i32 @cdn_dp_get_sink_count(%struct.cdn_dp_device* %51, i64* %6)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %2, align 4
  br label %66

59:                                               ; preds = %50
  %60 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %37

61:                                               ; preds = %37
  %62 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %63 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @DRM_DEV_ERROR(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %54, %49, %23
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @extcon_get_state(i32, i32) #1

declare dso_local i32 @cdn_dp_get_sink_count(%struct.cdn_dp_device*, i64*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
