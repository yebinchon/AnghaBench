; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_enable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_gfx = type { i64, i32 }

@CRT_CTRL1 = common dso_local global i64 0, align 8
@CRT_CTRL2 = common dso_local global i64 0, align 8
@CRT_CTRL_EN = common dso_local global i32 0, align 4
@CRT_CTRL_DAC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_gfx*)* @aspeed_gfx_enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_gfx_enable_controller(%struct.aspeed_gfx* %0) #0 {
  %2 = alloca %struct.aspeed_gfx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aspeed_gfx* %0, %struct.aspeed_gfx** %2, align 8
  %5 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %6 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CRT_CTRL1, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %12 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CRT_CTRL2, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %18 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BIT(i32 16)
  %21 = call i32 @BIT(i32 16)
  %22 = call i32 @regmap_update_bits(i32 %19, i32 44, i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @CRT_CTRL_EN, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %27 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CRT_CTRL1, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CRT_CTRL_DAC_EN, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %36 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CRT_CTRL2, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
