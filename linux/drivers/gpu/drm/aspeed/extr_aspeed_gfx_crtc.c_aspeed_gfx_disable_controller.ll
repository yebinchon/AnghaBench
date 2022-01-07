; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_disable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_disable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_gfx = type { i32, i64 }

@CRT_CTRL1 = common dso_local global i64 0, align 8
@CRT_CTRL2 = common dso_local global i64 0, align 8
@CRT_CTRL_EN = common dso_local global i32 0, align 4
@CRT_CTRL_DAC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_gfx*)* @aspeed_gfx_disable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_gfx_disable_controller(%struct.aspeed_gfx* %0) #0 {
  %2 = alloca %struct.aspeed_gfx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aspeed_gfx* %0, %struct.aspeed_gfx** %2, align 8
  %5 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %6 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CRT_CTRL1, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %12 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CRT_CTRL2, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CRT_CTRL_EN, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %22 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CRT_CTRL1, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CRT_CTRL_DAC_EN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %32 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CRT_CTRL2, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %38 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @BIT(i32 16)
  %41 = call i32 @regmap_update_bits(i32 %39, i32 44, i32 %40, i32 0)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
