; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32 }

@MB_MODULE_ID_DP_TX = common dso_local global i32 0, align 4
@DPTX_WRITE_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*, i32, i32)* @cdn_dp_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_reg_write(%struct.cdn_dp_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cdn_dp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = ashr i32 %8, 8
  %10 = and i32 %9, 255
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  store i32 %10, i32* %11, align 16
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  store i32 %28, i32* %29, align 4
  %30 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %4, align 8
  %31 = load i32, i32* @MB_MODULE_ID_DP_TX, align 4
  %32 = load i32, i32* @DPTX_WRITE_REGISTER, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %34 = call i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device* %30, i32 %31, i32 %32, i32 24, i32* %33)
  ret i32 %34
}

declare dso_local i32 @cdn_dp_mailbox_send(%struct.cdn_dp_device*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
