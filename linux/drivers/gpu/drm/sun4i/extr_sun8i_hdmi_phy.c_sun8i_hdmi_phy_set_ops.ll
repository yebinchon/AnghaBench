; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_set_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_set_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_hdmi_phy = type { %struct.sun8i_hdmi_phy_variant* }
%struct.sun8i_hdmi_phy_variant = type { i32, i32, i32, i64 }
%struct.dw_hdmi_plat_data = type { i8*, i32, i32, i32, %struct.sun8i_hdmi_phy*, i32* }

@sun8i_hdmi_phy_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sun8i_dw_hdmi_phy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun8i_hdmi_phy_set_ops(%struct.sun8i_hdmi_phy* %0, %struct.dw_hdmi_plat_data* %1) #0 {
  %3 = alloca %struct.sun8i_hdmi_phy*, align 8
  %4 = alloca %struct.dw_hdmi_plat_data*, align 8
  %5 = alloca %struct.sun8i_hdmi_phy_variant*, align 8
  store %struct.sun8i_hdmi_phy* %0, %struct.sun8i_hdmi_phy** %3, align 8
  store %struct.dw_hdmi_plat_data* %1, %struct.dw_hdmi_plat_data** %4, align 8
  %6 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %7 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %6, i32 0, i32 0
  %8 = load %struct.sun8i_hdmi_phy_variant*, %struct.sun8i_hdmi_phy_variant** %7, align 8
  store %struct.sun8i_hdmi_phy_variant* %8, %struct.sun8i_hdmi_phy_variant** %5, align 8
  %9 = load %struct.sun8i_hdmi_phy_variant*, %struct.sun8i_hdmi_phy_variant** %5, align 8
  %10 = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, %struct.sun8i_hdmi_phy_variant* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %4, align 8
  %15 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %14, i32 0, i32 5
  store i32* @sun8i_hdmi_phy_ops, i32** %15, align 8
  %16 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %4, align 8
  %17 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %3, align 8
  %19 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %4, align 8
  %20 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %19, i32 0, i32 4
  store %struct.sun8i_hdmi_phy* %18, %struct.sun8i_hdmi_phy** %20, align 8
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.sun8i_hdmi_phy_variant*, %struct.sun8i_hdmi_phy_variant** %5, align 8
  %23 = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, %struct.sun8i_hdmi_phy_variant* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %4, align 8
  %26 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sun8i_hdmi_phy_variant*, %struct.sun8i_hdmi_phy_variant** %5, align 8
  %28 = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, %struct.sun8i_hdmi_phy_variant* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %4, align 8
  %31 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sun8i_hdmi_phy_variant*, %struct.sun8i_hdmi_phy_variant** %5, align 8
  %33 = getelementptr inbounds %struct.sun8i_hdmi_phy_variant, %struct.sun8i_hdmi_phy_variant* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %4, align 8
  %36 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %21, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
