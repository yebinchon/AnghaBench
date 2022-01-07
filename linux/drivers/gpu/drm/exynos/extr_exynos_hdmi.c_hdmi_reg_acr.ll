; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_reg_acr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_reg_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i32 }

@HDMI_ACR_N0 = common dso_local global i32 0, align 4
@HDMI_ACR_MCTS0 = common dso_local global i32 0, align 4
@HDMI_ACR_CTS0 = common dso_local global i32 0, align 4
@HDMI_ACR_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*, i32)* @hdmi_reg_acr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_reg_acr(%struct.hdmi_context* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = srem i32 %7, 9
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 27000, i32 30000
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 128, %12
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 27000000, %14
  %16 = sdiv i32 %13, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %18 = load i32, i32* @HDMI_ACR_N0, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %17, i32 %18, i32 3, i32 %19)
  %21 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %22 = load i32, i32* @HDMI_ACR_MCTS0, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %21, i32 %22, i32 3, i32 %23)
  %25 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %26 = load i32, i32* @HDMI_ACR_CTS0, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @hdmi_reg_writev(%struct.hdmi_context* %25, i32 %26, i32 3, i32 %27)
  %29 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %30 = load i32, i32* @HDMI_ACR_CON, align 4
  %31 = call i32 @hdmi_reg_writeb(%struct.hdmi_context* %29, i32 %30, i32 4)
  ret void
}

declare dso_local i32 @hdmi_reg_writev(%struct.hdmi_context*, i32, i32, i32) #1

declare dso_local i32 @hdmi_reg_writeb(%struct.hdmi_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
