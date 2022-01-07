; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_dpcd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_dpcd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32 }

@MB_MODULE_ID_DP_TX = common dso_local global i32 0, align 4
@DPTX_WRITE_DPCD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"dpcd write failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_dpcd_write(%struct.cdn_dp_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cdn_dp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %10, align 16
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 %23, i32* %24, align 4
  %25 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %26 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %27 = load i32, i32* @DPTX_WRITE_DPCD, align 4
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %29 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %25, i32 %26, i32 %27, i32 24, i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %65

33:                                               ; preds = %3
  %34 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %35 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %36 = load i32, i32* @DPTX_WRITE_DPCD, align 4
  %37 = call i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device* %34, i32 %35, i32 %36, i32 20)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %65

41:                                               ; preds = %33
  %42 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %44 = call i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device* %42, i32* %43, i32 20)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %65

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 16
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %52, %55
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  %58 = load i32, i32* %57, align 16
  %59 = or i32 %56, %58
  %60 = icmp ne i32 %49, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %48
  br label %65

65:                                               ; preds = %64, %47, %40, %32
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %70 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @DRM_DEV_ERROR(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device*, i32, i32, i32) #1

declare dso_local i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device*, i32*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
