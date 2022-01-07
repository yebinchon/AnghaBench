; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/phy/extr_dsi_phy.c_msm_dsi_phy_set_src_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/phy/extr_dsi_phy.c_msm_dsi_phy_set_src_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_phy = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64** }

@DSI_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_dsi_phy_set_src_pll(%struct.msm_dsi_phy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.msm_dsi_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.msm_dsi_phy* %0, %struct.msm_dsi_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %5, align 8
  %12 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @DSI_MAX, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DSI_MAX, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %4
  br label %64

22:                                               ; preds = %17
  %23 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %5, align 8
  %24 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @dsi_phy_read(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %5, align 8
  %30 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64**, i64*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64*, i64** %33, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %22
  %44 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %5, align 8
  %45 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @dsi_phy_write(i32 %48, i32 %51)
  br label %64

53:                                               ; preds = %22
  %54 = load %struct.msm_dsi_phy*, %struct.msm_dsi_phy** %5, align 8
  %55 = getelementptr inbounds %struct.msm_dsi_phy, %struct.msm_dsi_phy* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = call i32 @dsi_phy_write(i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %21, %53, %43
  ret void
}

declare dso_local i32 @dsi_phy_read(i32) #1

declare dso_local i32 @dsi_phy_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
