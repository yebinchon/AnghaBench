; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_dc_assign_shared_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_dc_assign_shared_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { i32 }
%struct.tegra_plane = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DC_WIN_CORE_IHUB_LINEBUF_CONFIG = common dso_local global i32 0, align 4
@MODE_FOUR_LINES = common dso_local global i32 0, align 4
@DC_WIN_CORE_IHUB_WGRP_FETCH_METER = common dso_local global i32 0, align 4
@DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLA = common dso_local global i32 0, align 4
@LATENCY_CTL_MODE_ENABLE = common dso_local global i32 0, align 4
@DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLB = common dso_local global i32 0, align 4
@WATERMARK_MASK = common dso_local global i32 0, align 4
@DC_WIN_CORE_PRECOMP_WGRP_PIPE_METER = common dso_local global i32 0, align 4
@DC_WIN_CORE_IHUB_WGRP_POOL_CONFIG = common dso_local global i32 0, align 4
@DC_WIN_CORE_IHUB_THREAD_GROUP = common dso_local global i32 0, align 4
@THREAD_NUM_MASK = common dso_local global i32 0, align 4
@THREAD_GROUP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dc*, %struct.tegra_plane*)* @tegra_dc_assign_shared_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dc_assign_shared_plane(%struct.tegra_dc* %0, %struct.tegra_plane* %1) #0 {
  %3 = alloca %struct.tegra_dc*, align 8
  %4 = alloca %struct.tegra_plane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_dc* %0, %struct.tegra_dc** %3, align 8
  store %struct.tegra_plane* %1, %struct.tegra_plane** %4, align 8
  %7 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %8 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %9 = call i32 @tegra_dc_owns_shared_plane(%struct.tegra_dc* %7, %struct.tegra_plane* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %13 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %14 = call i32 @tegra_shared_plane_set_owner(%struct.tegra_plane* %12, %struct.tegra_dc* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %102

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %21 = load i32, i32* @DC_WIN_CORE_IHUB_LINEBUF_CONFIG, align 4
  %22 = call i32 @tegra_plane_readl(%struct.tegra_plane* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @MODE_FOUR_LINES, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @DC_WIN_CORE_IHUB_LINEBUF_CONFIG, align 4
  %29 = call i32 @tegra_plane_writel(%struct.tegra_plane* %26, i32 %27, i32 %28)
  %30 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %31 = load i32, i32* @DC_WIN_CORE_IHUB_WGRP_FETCH_METER, align 4
  %32 = call i32 @tegra_plane_readl(%struct.tegra_plane* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = call i32 @SLOTS(i32 1)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @DC_WIN_CORE_IHUB_WGRP_FETCH_METER, align 4
  %37 = call i32 @tegra_plane_writel(%struct.tegra_plane* %34, i32 %35, i32 %36)
  %38 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %39 = load i32, i32* @DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLA, align 4
  %40 = call i32 @tegra_plane_readl(%struct.tegra_plane* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @LATENCY_CTL_MODE_ENABLE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLA, align 4
  %48 = call i32 @tegra_plane_writel(%struct.tegra_plane* %45, i32 %46, i32 %47)
  %49 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %50 = load i32, i32* @DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLB, align 4
  %51 = call i32 @tegra_plane_readl(%struct.tegra_plane* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @WATERMARK_MASK, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DC_WIN_CORE_IHUB_WGRP_LATENCY_CTLB, align 4
  %58 = call i32 @tegra_plane_writel(%struct.tegra_plane* %55, i32 %56, i32 %57)
  %59 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %60 = load i32, i32* @DC_WIN_CORE_PRECOMP_WGRP_PIPE_METER, align 4
  %61 = call i32 @tegra_plane_readl(%struct.tegra_plane* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = call i32 @PIPE_METER_INT(i32 0)
  %63 = call i32 @PIPE_METER_FRAC(i32 0)
  %64 = or i32 %62, %63
  store i32 %64, i32* %5, align 4
  %65 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @DC_WIN_CORE_PRECOMP_WGRP_PIPE_METER, align 4
  %68 = call i32 @tegra_plane_writel(%struct.tegra_plane* %65, i32 %66, i32 %67)
  %69 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %70 = load i32, i32* @DC_WIN_CORE_IHUB_WGRP_POOL_CONFIG, align 4
  %71 = call i32 @tegra_plane_readl(%struct.tegra_plane* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = call i32 @MEMPOOL_ENTRIES(i32 817)
  store i32 %72, i32* %5, align 4
  %73 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @DC_WIN_CORE_IHUB_WGRP_POOL_CONFIG, align 4
  %76 = call i32 @tegra_plane_writel(%struct.tegra_plane* %73, i32 %74, i32 %75)
  %77 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %78 = load i32, i32* @DC_WIN_CORE_IHUB_THREAD_GROUP, align 4
  %79 = call i32 @tegra_plane_readl(%struct.tegra_plane* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* @THREAD_NUM_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %85 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @THREAD_NUM(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @THREAD_GROUP_ENABLE, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @DC_WIN_CORE_IHUB_THREAD_GROUP, align 4
  %97 = call i32 @tegra_plane_writel(%struct.tegra_plane* %94, i32 %95, i32 %96)
  %98 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %99 = call i32 @tegra_shared_plane_update(%struct.tegra_plane* %98)
  %100 = load %struct.tegra_plane*, %struct.tegra_plane** %4, align 8
  %101 = call i32 @tegra_shared_plane_activate(%struct.tegra_plane* %100)
  br label %102

102:                                              ; preds = %19, %17
  ret void
}

declare dso_local i32 @tegra_dc_owns_shared_plane(%struct.tegra_dc*, %struct.tegra_plane*) #1

declare dso_local i32 @tegra_shared_plane_set_owner(%struct.tegra_plane*, %struct.tegra_dc*) #1

declare dso_local i32 @tegra_plane_readl(%struct.tegra_plane*, i32) #1

declare dso_local i32 @tegra_plane_writel(%struct.tegra_plane*, i32, i32) #1

declare dso_local i32 @SLOTS(i32) #1

declare dso_local i32 @PIPE_METER_INT(i32) #1

declare dso_local i32 @PIPE_METER_FRAC(i32) #1

declare dso_local i32 @MEMPOOL_ENTRIES(i32) #1

declare dso_local i32 @THREAD_NUM(i32) #1

declare dso_local i32 @tegra_shared_plane_update(%struct.tegra_plane*) #1

declare dso_local i32 @tegra_shared_plane_activate(%struct.tegra_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
