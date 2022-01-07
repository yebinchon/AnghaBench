; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { i32 }
%struct.aspeed_gfx = type { i64 }

@CRT_CTRL1 = common dso_local global i64 0, align 8
@CRT_CTRL_VERTICAL_INTR_STS = common dso_local global i32 0, align 4
@CRT_CTRL_VERTICAL_INTR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_simple_display_pipe*)* @aspeed_gfx_enable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_gfx_enable_vblank(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.aspeed_gfx*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %5 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %6 = call %struct.aspeed_gfx* @drm_pipe_to_aspeed_gfx(%struct.drm_simple_display_pipe* %5)
  store %struct.aspeed_gfx* %6, %struct.aspeed_gfx** %3, align 8
  %7 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %3, align 8
  %8 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CRT_CTRL1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CRT_CTRL_VERTICAL_INTR_STS, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %3, align 8
  %17 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CRT_CTRL1, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load i32, i32* @CRT_CTRL_VERTICAL_INTR_EN, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %3, align 8
  %27 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CRT_CTRL1, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  ret i32 0
}

declare dso_local %struct.aspeed_gfx* @drm_pipe_to_aspeed_gfx(%struct.drm_simple_display_pipe*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
