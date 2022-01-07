; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_clock_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_clock_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i64 }

@DPTX_FRMR_DATA_CLK_RSTN_EN = common dso_local global i32 0, align 4
@DPTX_FRMR_DATA_CLK_EN = common dso_local global i32 0, align 4
@DPTX_PHY_DATA_RSTN_EN = common dso_local global i32 0, align 4
@DPTX_PHY_DATA_CLK_EN = common dso_local global i32 0, align 4
@DPTX_PHY_CHAR_RSTN_EN = common dso_local global i32 0, align 4
@DPTX_PHY_CHAR_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_AUX_SYS_CLK_RSTN_EN = common dso_local global i32 0, align 4
@SOURCE_AUX_SYS_CLK_EN = common dso_local global i32 0, align 4
@DPTX_SYS_CLK_RSTN_EN = common dso_local global i32 0, align 4
@DPTX_SYS_CLK_EN = common dso_local global i32 0, align 4
@CFG_DPTX_VIF_CLK_RSTN_EN = common dso_local global i32 0, align 4
@CFG_DPTX_VIF_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_DPTX_CAR = common dso_local global i64 0, align 8
@SOURCE_PHY_RSTN_EN = common dso_local global i32 0, align 4
@SOURCE_PHY_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_PHY_CAR = common dso_local global i64 0, align 8
@SOURCE_PKT_SYS_RSTN_EN = common dso_local global i32 0, align 4
@SOURCE_PKT_SYS_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_PKT_DATA_RSTN_EN = common dso_local global i32 0, align 4
@SOURCE_PKT_DATA_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_PKT_CAR = common dso_local global i64 0, align 8
@SPDIF_CDR_CLK_RSTN_EN = common dso_local global i32 0, align 4
@SPDIF_CDR_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_AIF_SYS_RSTN_EN = common dso_local global i32 0, align 4
@SOURCE_AIF_SYS_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_AIF_CLK_RSTN_EN = common dso_local global i32 0, align 4
@SOURCE_AIF_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_AIF_CAR = common dso_local global i64 0, align 8
@SOURCE_CIPHER_SYSTEM_CLK_RSTN_EN = common dso_local global i32 0, align 4
@SOURCE_CIPHER_SYS_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_CIPHER_CHAR_CLK_RSTN_EN = common dso_local global i32 0, align 4
@SOURCE_CIPHER_CHAR_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_CIPHER_CAR = common dso_local global i64 0, align 8
@SOURCE_CRYPTO_SYS_CLK_RSTN_EN = common dso_local global i32 0, align 4
@SOURCE_CRYPTO_SYS_CLK_EN = common dso_local global i32 0, align 4
@SOURCE_CRYPTO_CAR = common dso_local global i64 0, align 8
@APB_INT_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdn_dp_clock_reset(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca %struct.cdn_dp_device*, align 8
  %3 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %2, align 8
  %4 = load i32, i32* @DPTX_FRMR_DATA_CLK_RSTN_EN, align 4
  %5 = load i32, i32* @DPTX_FRMR_DATA_CLK_EN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @DPTX_PHY_DATA_RSTN_EN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DPTX_PHY_DATA_CLK_EN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DPTX_PHY_CHAR_RSTN_EN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DPTX_PHY_CHAR_CLK_EN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SOURCE_AUX_SYS_CLK_RSTN_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SOURCE_AUX_SYS_CLK_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DPTX_SYS_CLK_RSTN_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DPTX_SYS_CLK_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CFG_DPTX_VIF_CLK_RSTN_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CFG_DPTX_VIF_CLK_EN, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %29 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOURCE_DPTX_CAR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i32, i32* @SOURCE_PHY_RSTN_EN, align 4
  %35 = load i32, i32* @SOURCE_PHY_CLK_EN, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %39 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SOURCE_PHY_CAR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* @SOURCE_PKT_SYS_RSTN_EN, align 4
  %45 = load i32, i32* @SOURCE_PKT_SYS_CLK_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SOURCE_PKT_DATA_RSTN_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SOURCE_PKT_DATA_CLK_EN, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %53 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SOURCE_PKT_CAR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load i32, i32* @SPDIF_CDR_CLK_RSTN_EN, align 4
  %59 = load i32, i32* @SPDIF_CDR_CLK_EN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SOURCE_AIF_SYS_RSTN_EN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SOURCE_AIF_SYS_CLK_EN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SOURCE_AIF_CLK_RSTN_EN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SOURCE_AIF_CLK_EN, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %71 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SOURCE_AIF_CAR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load i32, i32* @SOURCE_CIPHER_SYSTEM_CLK_RSTN_EN, align 4
  %77 = load i32, i32* @SOURCE_CIPHER_SYS_CLK_EN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SOURCE_CIPHER_CHAR_CLK_RSTN_EN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SOURCE_CIPHER_CHAR_CLK_EN, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %85 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SOURCE_CIPHER_CAR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 %83, i64 %88)
  %90 = load i32, i32* @SOURCE_CRYPTO_SYS_CLK_RSTN_EN, align 4
  %91 = load i32, i32* @SOURCE_CRYPTO_SYS_CLK_EN, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %95 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SOURCE_CRYPTO_CAR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  %100 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %2, align 8
  %101 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @APB_INT_MASK, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 0, i64 %104)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
