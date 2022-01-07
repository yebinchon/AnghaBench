; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_send_pkg_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_send_pkg_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_pkg_sender = type { i32, i32 }

@MIPI_DCS_ENTER_SLEEP_MODE = common dso_local global i32 0, align 4
@MDFLD_DSI_PANEL_MODE_SLEEP = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_SOFT_RESET = common dso_local global i32 0, align 4
@MDFLD_DSI_PKG_SENDER_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdfld_dsi_pkg_sender*, i32, i32*, i32)* @send_pkg_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_pkg_done(%struct.mdfld_dsi_pkg_sender* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mdfld_dsi_pkg_sender* %0, %struct.mdfld_dsi_pkg_sender** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %15 [
    i32 129, label %12
    i32 128, label %12
    i32 130, label %12
  ]

12:                                               ; preds = %4, %4, %4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  br label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

16:                                               ; preds = %12
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @MIPI_DCS_ENTER_SLEEP_MODE, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i32, i32* @MDFLD_DSI_PANEL_MODE_SLEEP, align 4
  %25 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %26 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = call i32 @mdelay(i32 120)
  br label %56

30:                                               ; preds = %16
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* @MDFLD_DSI_PANEL_MODE_SLEEP, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %41 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = call i32 @mdelay(i32 120)
  br label %55

45:                                               ; preds = %30
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MIPI_DCS_SOFT_RESET, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @mdelay(i32 5)
  br label %54

54:                                               ; preds = %52, %45
  br label %55

55:                                               ; preds = %54, %37
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i32, i32* @MDFLD_DSI_PKG_SENDER_FREE, align 4
  %58 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %6, align 8
  %59 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %15
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
