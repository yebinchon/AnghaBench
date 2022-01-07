; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_get_edid_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_get_edid_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32 }

@MB_MODULE_ID_DP_TX = common dso_local global i32 0, align 4
@DPTX_GET_EDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"get block[%d] edid failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_get_edid_block(i8* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.cdn_dp_device*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.cdn_dp_device*
  store %struct.cdn_dp_device* %15, %struct.cdn_dp_device** %9, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %74, %4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %77

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = udiv i32 %20, 2
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = urem i32 %23, 2
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %27 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %28 = load i32, i32* @DPTX_GET_EDID, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %30 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %26, i32 %27, i32 %28, i32 8, i32* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %74

34:                                               ; preds = %19
  %35 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %36 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %37 = load i32, i32* @DPTX_GET_EDID, align 4
  %38 = load i64, i64* %8, align 8
  %39 = add i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device* %35, i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %74

45:                                               ; preds = %34
  %46 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %48 = call i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device* %46, i32* %47, i64 8)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %74

52:                                               ; preds = %45
  %53 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device* %53, i32* %54, i64 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %74

60:                                               ; preds = %52
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = udiv i32 %69, 2
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %77

73:                                               ; preds = %66, %60
  br label %74

74:                                               ; preds = %73, %59, %51, %44, %33
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %16

77:                                               ; preds = %72, %16
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %9, align 8
  %82 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @DRM_DEV_ERROR(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %77
  %88 = load i32, i32* %13, align 4
  ret i32 %88
}

declare dso_local i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device*, i32, i32, i32) #1

declare dso_local i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device*, i32*, i64) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
