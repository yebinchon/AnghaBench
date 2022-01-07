; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_detect_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_detect_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i32 }

@DP_TIMEOUT_LOOP_COUNT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed to get hpd plug status, try to force hpd\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get hpd plug in status\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"success to get plug in status after force hpd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_detect_hpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_detect_hpd(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DP_TIMEOUT_LOOP_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %11 = call i64 @analogix_dp_get_plug_in_status(%struct.analogix_dp_device* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %5

18:                                               ; preds = %5
  %19 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %20 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %18
  %27 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %28 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %32 = call i32 @analogix_dp_force_hpd(%struct.analogix_dp_device* %31)
  %33 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %34 = call i64 @analogix_dp_get_plug_in_status(%struct.analogix_dp_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %38 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %26
  %44 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %45 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %36, %23, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @analogix_dp_get_plug_in_status(%struct.analogix_dp_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @analogix_dp_force_hpd(%struct.analogix_dp_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
