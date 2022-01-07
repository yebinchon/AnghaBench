; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_make_reg_writable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_make_reg_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i64, i32, i32 }
%struct.arm_smccc_res = type { i32 }
%struct.mtk_hdmi_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HDMI_SYS_CFG20 = common dso_local global i64 0, align 8
@MTK_SIP_SET_AUTHORIZED_SECURE_REG = common dso_local global i32 0, align 4
@HDMI_PCLK_FREE_RUN = common dso_local global i32 0, align 4
@HDMI_SYS_CFG1C = common dso_local global i64 0, align 8
@HDMI_ON = common dso_local global i32 0, align 4
@ANLG_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32)* @mtk_hdmi_hw_make_reg_writable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_make_reg_writable(%struct.mtk_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_smccc_res, align 4
  %6 = alloca %struct.mtk_hdmi_phy*, align 8
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mtk_hdmi_phy* @phy_get_drvdata(i32 %9)
  store %struct.mtk_hdmi_phy* %10, %struct.mtk_hdmi_phy** %6, align 8
  %11 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %6, align 8
  %12 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %24 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HDMI_SYS_CFG20, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 -2147483643, i32 32768
  %35 = call i32 @regmap_update_bits(i32 %25, i64 %30, i32 -2147450875, i32 %34)
  br label %39

36:                                               ; preds = %15, %2
  %37 = load i32, i32* @MTK_SIP_SET_AUTHORIZED_SECURE_REG, align 4
  %38 = call i32 @arm_smccc_smc(i32 %37, i32 335546628, i32 -2147483648, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %5)
  br label %39

39:                                               ; preds = %36, %22
  %40 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %44 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HDMI_SYS_CFG20, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* @HDMI_PCLK_FREE_RUN, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @HDMI_PCLK_FREE_RUN, align 4
  br label %54

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = call i32 @regmap_update_bits(i32 %42, i64 %47, i32 %48, i32 %55)
  %57 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %58 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %61 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HDMI_SYS_CFG1C, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* @HDMI_ON, align 4
  %66 = load i32, i32* @ANLG_ON, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  %71 = load i32, i32* @HDMI_ON, align 4
  %72 = load i32, i32* @ANLG_ON, align 4
  %73 = or i32 %71, %72
  br label %75

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 0, %74 ]
  %77 = call i32 @regmap_update_bits(i32 %59, i64 %64, i32 %67, i32 %76)
  ret void
}

declare dso_local %struct.mtk_hdmi_phy* @phy_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @arm_smccc_smc(i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
