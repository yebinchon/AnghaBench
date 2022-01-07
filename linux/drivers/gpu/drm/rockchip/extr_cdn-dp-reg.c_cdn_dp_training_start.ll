; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_training_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_training_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32 }

@LINK_TRAINING_RUN = common dso_local global i32 0, align 4
@MB_MODULE_ID_DP_TX = common dso_local global i32 0, align 4
@DPTX_TRAINING_CONTROL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LINK_TRAINING_TIMEOUT_MS = common dso_local global i32 0, align 4
@LINK_TRAINING_RETRY_MS = common dso_local global i32 0, align 4
@DPTX_READ_EVENT = common dso_local global i32 0, align 4
@EQ_PHASE_FINISHED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"training failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_training_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_training_start(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %8 = load i32, i32* @LINK_TRAINING_RUN, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %10 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %11 = load i32, i32* @DPTX_TRAINING_CONTROL, align 4
  %12 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %9, i32 %10, i32 %11, i32 4, i32* %5)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %62

16:                                               ; preds = %1
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i32, i32* @LINK_TRAINING_TIMEOUT_MS, align 4
  %19 = call i64 @msecs_to_jiffies(i32 %18)
  %20 = add i64 %17, %19
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %58, %16
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @time_before(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load i32, i32* @LINK_TRAINING_RETRY_MS, align 4
  %28 = call i32 @msleep(i32 %27)
  %29 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %30 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %31 = load i32, i32* @DPTX_READ_EVENT, align 4
  %32 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %29, i32 %30, i32 %31, i32 0, i32* null)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %62

36:                                               ; preds = %26
  %37 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %38 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %39 = load i32, i32* @DPTX_READ_EVENT, align 4
  %40 = call i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device* %37, i32 %38, i32 %39, i32 8)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %62

44:                                               ; preds = %36
  %45 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %47 = call i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device* %45, i32* %46, i32 8)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %62

51:                                               ; preds = %44
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EQ_PHASE_FINISHED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %69

58:                                               ; preds = %51
  br label %21

59:                                               ; preds = %21
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %50, %43, %35, %15
  %63 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %64 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @DRM_DEV_ERROR(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device*, i32, i32, i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device*, i32, i32, i32) #1

declare dso_local i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device*, i32*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
