; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_win_set_colkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_win_set_colkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decon_context = type { i64 }

@WxKEYCON0_KEYBL_EN = common dso_local global i32 0, align 4
@WxKEYCON0_KEYEN_F = common dso_local global i32 0, align 4
@WxKEYCON0_DIRCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decon_context*, i32)* @decon_win_set_colkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_win_set_colkey(%struct.decon_context* %0, i32 %1) #0 {
  %3 = alloca %struct.decon_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.decon_context* %0, %struct.decon_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @WxKEYCON0_KEYBL_EN, align 4
  %8 = load i32, i32* @WxKEYCON0_KEYEN_F, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @WxKEYCON0_DIRCON, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = call i32 @WxKEYCON0_COMPKEY(i32 0)
  %14 = or i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = call i32 @WxKEYCON1_COLVAL(i32 -1)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %18 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @WKEYCON0_BASE(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writel(i32 %16, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %26 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @WKEYCON1_BASE(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @writel(i32 %24, i64 %30)
  ret void
}

declare dso_local i32 @WxKEYCON0_COMPKEY(i32) #1

declare dso_local i32 @WxKEYCON1_COLVAL(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @WKEYCON0_BASE(i32) #1

declare dso_local i64 @WKEYCON1_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
