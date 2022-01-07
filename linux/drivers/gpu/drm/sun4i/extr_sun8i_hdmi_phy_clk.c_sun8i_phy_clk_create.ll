; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy_clk.c_sun8i_phy_clk_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy_clk.c_sun8i_phy_clk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_hdmi_phy = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.clk_init_data = type { i8*, i8**, i32, i32, i32* }
%struct.sun8i_phy_clk = type { %struct.TYPE_2__, %struct.sun8i_hdmi_phy* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"hdmi-phy-clk\00", align 1
@sun8i_phy_clk_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun8i_phy_clk_create(%struct.sun8i_hdmi_phy* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun8i_hdmi_phy*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_init_data, align 8
  %9 = alloca %struct.sun8i_phy_clk*, align 8
  %10 = alloca [2 x i8*], align 16
  store %struct.sun8i_hdmi_phy* %0, %struct.sun8i_hdmi_phy** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %5, align 8
  %12 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @__clk_get_name(i32 %13)
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* %14, i8** %15, align 16
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %17 = load i8*, i8** %16, align 16
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %82

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %5, align 8
  %27 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @__clk_get_name(i32 %28)
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %82

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.sun8i_phy_clk* @devm_kzalloc(%struct.device* %39, i32 16, i32 %40)
  store %struct.sun8i_phy_clk* %41, %struct.sun8i_phy_clk** %9, align 8
  %42 = load %struct.sun8i_phy_clk*, %struct.sun8i_phy_clk** %9, align 8
  %43 = icmp ne %struct.sun8i_phy_clk* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %82

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 4
  store i32* @sun8i_phy_clk_ops, i32** %49, align 8
  %50 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %51 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 1
  store i8** %50, i8*** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 2, i32 1
  %56 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %58 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %5, align 8
  %60 = load %struct.sun8i_phy_clk*, %struct.sun8i_phy_clk** %9, align 8
  %61 = getelementptr inbounds %struct.sun8i_phy_clk, %struct.sun8i_phy_clk* %60, i32 0, i32 1
  store %struct.sun8i_hdmi_phy* %59, %struct.sun8i_hdmi_phy** %61, align 8
  %62 = load %struct.sun8i_phy_clk*, %struct.sun8i_phy_clk** %9, align 8
  %63 = getelementptr inbounds %struct.sun8i_phy_clk, %struct.sun8i_phy_clk* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.clk_init_data* %8, %struct.clk_init_data** %64, align 8
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load %struct.sun8i_phy_clk*, %struct.sun8i_phy_clk** %9, align 8
  %67 = getelementptr inbounds %struct.sun8i_phy_clk, %struct.sun8i_phy_clk* %66, i32 0, i32 0
  %68 = call i32 @devm_clk_register(%struct.device* %65, %struct.TYPE_2__* %67)
  %69 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %5, align 8
  %70 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %5, align 8
  %72 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %47
  %77 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %5, align 8
  %78 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %76, %44, %34, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i8* @__clk_get_name(i32) #1

declare dso_local %struct.sun8i_phy_clk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
