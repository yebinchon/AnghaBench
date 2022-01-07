; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_fast_link_train_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_fast_link_train_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i32, i32 }

@DP_MAX_DOWNSPREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read downspread %d\0A\00", align 1
@DP_NO_AUX_HANDSHAKE_LINK_TRAINING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fast link training %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"supported\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_device*)* @analogix_dp_fast_link_train_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_fast_link_train_detection(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  %6 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %7 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %6, i32 0, i32 2
  %8 = load i32, i32* @DP_MAX_DOWNSPREAD, align 4
  %9 = call i32 @drm_dp_dpcd_readb(i32* %7, i32 %8, i32* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %14 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DP_NO_AUX_HANDSHAKE_LINK_TRAINING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %28 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %30 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %33 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %19, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
