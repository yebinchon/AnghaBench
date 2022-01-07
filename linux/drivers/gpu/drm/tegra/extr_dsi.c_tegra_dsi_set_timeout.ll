; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { %struct.tegra_dsi* }

@DSI_TIMEOUT_0 = common dso_local global i32 0, align 4
@DSI_TIMEOUT_1 = common dso_local global i32 0, align 4
@DSI_TO_TALLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dsi*, i64, i32)* @tegra_dsi_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dsi_set_timeout(%struct.tegra_dsi* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_dsi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = udiv i64 %9, %11
  %13 = udiv i64 %12, 512
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = call i32 @DSI_TIMEOUT_LRX(i32 8192)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @DSI_TIMEOUT_HTX(i32 %16)
  %18 = or i32 %15, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @DSI_TIMEOUT_0, align 4
  %22 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %19, i32 %20, i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = mul i64 2, %23
  %25 = udiv i64 %24, 512
  %26 = mul i64 %25, 1000
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DSI_TIMEOUT_PR(i32 %28)
  %30 = call i32 @DSI_TIMEOUT_TA(i32 8192)
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @DSI_TIMEOUT_1, align 4
  %35 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %32, i32 %33, i32 %34)
  %36 = call i32 @DSI_TALLY_TA(i32 0)
  %37 = call i32 @DSI_TALLY_LRX(i32 0)
  %38 = or i32 %36, %37
  %39 = call i32 @DSI_TALLY_HTX(i32 0)
  %40 = or i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DSI_TO_TALLY, align 4
  %44 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %41, i32 %42, i32 %43)
  %45 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %45, i32 0, i32 0
  %47 = load %struct.tegra_dsi*, %struct.tegra_dsi** %46, align 8
  %48 = icmp ne %struct.tegra_dsi* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %3
  %50 = load %struct.tegra_dsi*, %struct.tegra_dsi** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %50, i32 0, i32 0
  %52 = load %struct.tegra_dsi*, %struct.tegra_dsi** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %6, align 4
  call void @tegra_dsi_set_timeout(%struct.tegra_dsi* %52, i64 %53, i32 %54)
  br label %55

55:                                               ; preds = %49, %3
  ret void
}

declare dso_local i32 @DSI_TIMEOUT_LRX(i32) #1

declare dso_local i32 @DSI_TIMEOUT_HTX(i32) #1

declare dso_local i32 @tegra_dsi_writel(%struct.tegra_dsi*, i32, i32) #1

declare dso_local i32 @DSI_TIMEOUT_PR(i32) #1

declare dso_local i32 @DSI_TIMEOUT_TA(i32) #1

declare dso_local i32 @DSI_TALLY_TA(i32) #1

declare dso_local i32 @DSI_TALLY_LRX(i32) #1

declare dso_local i32 @DSI_TALLY_HTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
