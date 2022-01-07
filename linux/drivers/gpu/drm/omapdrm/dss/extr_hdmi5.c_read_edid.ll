; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_read_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_read_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@HDMI_WP_SYSCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hdmi*, i32*, i32)* @read_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_edid(%struct.omap_hdmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.omap_hdmi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_hdmi* %0, %struct.omap_hdmi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %10 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %13 = call i32 @hdmi_runtime_get(%struct.omap_hdmi* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %17 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HDMI_WP_SYSCONFIG, align 4
  %21 = call i32 @REG_GET(i32 %19, i32 %20, i32 3, i32 2)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %23 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HDMI_WP_SYSCONFIG, align 4
  %27 = call i32 @REG_FLD_MOD(i32 %25, i32 %26, i32 1, i32 3, i32 2)
  %28 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %29 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %28, i32 0, i32 2
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @hdmi5_read_edid(i32* %29, i32* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %34 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HDMI_WP_SYSCONFIG, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @REG_FLD_MOD(i32 %36, i32 %37, i32 %38, i32 3, i32 2)
  %40 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %41 = call i32 @hdmi_runtime_put(%struct.omap_hdmi* %40)
  %42 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %43 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdmi_runtime_get(%struct.omap_hdmi*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi5_read_edid(i32*, i32*, i32) #1

declare dso_local i32 @hdmi_runtime_put(%struct.omap_hdmi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
