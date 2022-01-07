; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_msm_hdmi_pll_8996_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_msm_hdmi_pll_8996_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.hdmi_pll_8996 = type { %struct.TYPE_2__, %struct.clk**, %struct.clk*, %struct.platform_device* }
%struct.TYPE_2__ = type { i32* }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hdmi_pll\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"HDMI_PLL\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to map pll base\0A\00", align 1
@HDMI_NUM_TX_CHANNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"hdmi_tx_l%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"HDMI_TX_L%d\00", align 1
@pll_init = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to register pll clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_hdmi_pll_8996_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hdmi_pll_8996*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hdmi_pll_8996* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.hdmi_pll_8996* %14, %struct.hdmi_pll_8996** %5, align 8
  %15 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %16 = icmp ne %struct.hdmi_pll_8996* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %97

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %23 = getelementptr inbounds %struct.hdmi_pll_8996, %struct.hdmi_pll_8996* %22, i32 0, i32 3
  store %struct.platform_device* %21, %struct.platform_device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i8* @msm_ioremap(%struct.platform_device* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = bitcast i8* %25 to %struct.clk*
  %27 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_pll_8996, %struct.hdmi_pll_8996* %27, i32 0, i32 2
  store %struct.clk* %26, %struct.clk** %28, align 8
  %29 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %30 = getelementptr inbounds %struct.hdmi_pll_8996, %struct.hdmi_pll_8996* %29, i32 0, i32 2
  %31 = load %struct.clk*, %struct.clk** %30, align 8
  %32 = call i64 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @DRM_DEV_ERROR(%struct.device* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %97

39:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %77, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @HDMI_NUM_TX_CHANNEL, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %40
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @snprintf(i8* %45, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @snprintf(i8* %48, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %54 = call i8* @msm_ioremap(%struct.platform_device* %51, i8* %52, i8* %53)
  %55 = bitcast i8* %54 to %struct.clk*
  %56 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %57 = getelementptr inbounds %struct.hdmi_pll_8996, %struct.hdmi_pll_8996* %56, i32 0, i32 1
  %58 = load %struct.clk**, %struct.clk*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.clk*, %struct.clk** %58, i64 %60
  store %struct.clk* %55, %struct.clk** %61, align 8
  %62 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %63 = getelementptr inbounds %struct.hdmi_pll_8996, %struct.hdmi_pll_8996* %62, i32 0, i32 1
  %64 = load %struct.clk**, %struct.clk*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.clk*, %struct.clk** %64, i64 %66
  %68 = load %struct.clk*, %struct.clk** %67, align 8
  %69 = call i64 @IS_ERR(%struct.clk* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %44
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @DRM_DEV_ERROR(%struct.device* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %97

76:                                               ; preds = %44
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %40

80:                                               ; preds = %40
  %81 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %82 = getelementptr inbounds %struct.hdmi_pll_8996, %struct.hdmi_pll_8996* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32* @pll_init, i32** %83, align 8
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %5, align 8
  %86 = getelementptr inbounds %struct.hdmi_pll_8996, %struct.hdmi_pll_8996* %85, i32 0, i32 0
  %87 = call %struct.clk* @devm_clk_register(%struct.device* %84, %struct.TYPE_2__* %86)
  store %struct.clk* %87, %struct.clk** %6, align 8
  %88 = load %struct.clk*, %struct.clk** %6, align 8
  %89 = call i64 @IS_ERR(%struct.clk* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @DRM_DEV_ERROR(%struct.device* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %91, %71, %34, %17
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.hdmi_pll_8996* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @msm_ioremap(%struct.platform_device*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
