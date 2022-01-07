; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_map_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_map_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HDMI_MAPPED_BASE = common dso_local global i32 0, align 4
@hdmi_reg_map = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_context*, i32)* @hdmi_map_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_map_reg(%struct.hdmi_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_context*, align 8
  %5 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, -65536
  %8 = load i32, i32* @HDMI_MAPPED_BASE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32**, i32*** @hdmi_reg_map, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 65535
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %11, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.hdmi_context*, %struct.hdmi_context** %4, align 8
  %18 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
