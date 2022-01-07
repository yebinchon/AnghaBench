; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_dpcd_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_dpcd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32 }

@MB_MODULE_ID_DP_TX = common dso_local global i32 0, align 4
@DPTX_READ_DPCD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdn_dp_dpcd_read(%struct.cdn_dp_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.cdn_dp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 4
  store i32 %28, i32* %29, align 16
  %30 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %5, align 8
  %31 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %32 = load i32, i32* @DPTX_READ_DPCD, align 4
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %34 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %30, i32 %31, i32 %32, i32 20, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  br label %62

38:                                               ; preds = %4
  %39 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %5, align 8
  %40 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %41 = load i32, i32* @DPTX_READ_DPCD, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 20, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device* %39, i32 %40, i32 %41, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %62

50:                                               ; preds = %38
  %51 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %5, align 8
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %53 = call i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device* %51, i32* %52, i32 20)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %62

57:                                               ; preds = %50
  %58 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %5, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device* %58, i32* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %57, %56, %49, %37
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device*, i32, i32, i32) #1

declare dso_local i32 @cdn_dp_mailbox_read_receive(%struct.cdn_dp_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
