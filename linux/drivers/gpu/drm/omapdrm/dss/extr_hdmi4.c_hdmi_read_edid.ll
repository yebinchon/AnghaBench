; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_read_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_read_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_hdmi = type { i32, i32 }

@CEC_PHYS_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32*, i32)* @hdmi_read_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_read_edid(%struct.omap_dss_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_hdmi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %12 = call %struct.omap_hdmi* @dssdev_to_hdmi(%struct.omap_dss_device* %11)
  store %struct.omap_hdmi* %12, %struct.omap_hdmi** %8, align 8
  %13 = load %struct.omap_hdmi*, %struct.omap_hdmi** %8, align 8
  %14 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.omap_hdmi*, %struct.omap_hdmi** %8, align 8
  %22 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %21, i32 0, i32 1
  %23 = call i32 @hdmi4_core_enable(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.omap_hdmi*, %struct.omap_hdmi** %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @read_edid(%struct.omap_hdmi* %30, i32* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 256
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.omap_hdmi*, %struct.omap_hdmi** %8, align 8
  %38 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %37, i32 0, i32 1
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @cec_get_edid_phys_addr(i32* %39, i32 %40, i32* null)
  %42 = call i32 @hdmi4_cec_set_phys_addr(i32* %38, i32 %41)
  br label %48

43:                                               ; preds = %29
  %44 = load %struct.omap_hdmi*, %struct.omap_hdmi** %8, align 8
  %45 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %44, i32 0, i32 1
  %46 = load i32, i32* @CEC_PHYS_ADDR_INVALID, align 4
  %47 = call i32 @hdmi4_cec_set_phys_addr(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %36
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.omap_hdmi*, %struct.omap_hdmi** %8, align 8
  %53 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %52, i32 0, i32 1
  %54 = call i32 @hdmi4_core_disable(i32* %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.omap_hdmi* @dssdev_to_hdmi(%struct.omap_dss_device*) #1

declare dso_local i32 @hdmi4_core_enable(i32*) #1

declare dso_local i32 @read_edid(%struct.omap_hdmi*, i32*, i32) #1

declare dso_local i32 @hdmi4_cec_set_phys_addr(i32*, i32) #1

declare dso_local i32 @cec_get_edid_phys_addr(i32*, i32, i32*) #1

declare dso_local i32 @hdmi4_core_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
