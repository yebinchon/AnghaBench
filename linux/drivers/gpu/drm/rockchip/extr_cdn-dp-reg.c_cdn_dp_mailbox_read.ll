; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_mailbox_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_mailbox_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i64 }

@MAILBOX_EMPTY_ADDR = common dso_local global i64 0, align 8
@MAILBOX_RETRY_US = common dso_local global i32 0, align 4
@MAILBOX_TIMEOUT_US = common dso_local global i32 0, align 4
@MAILBOX0_RD_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_mailbox_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_mailbox_read(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %6 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %7 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAILBOX_EMPTY_ADDR, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @MAILBOX_RETRY_US, align 4
  %17 = load i32, i32* @MAILBOX_TIMEOUT_US, align 4
  %18 = call i32 @readx_poll_timeout(i32 (i64)* @readl, i64 %10, i32 %11, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %25 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAILBOX0_RD_DATA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = and i32 %29, 255
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @readx_poll_timeout(i32 (i64)*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
