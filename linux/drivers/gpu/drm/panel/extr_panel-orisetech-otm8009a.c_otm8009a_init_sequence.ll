; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_init_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_init_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.otm8009a = type { i32 }
%struct.mipi_dsi_device = type { i32 }

@MCS_CMD2_ENA1 = common dso_local global i32 0, align 4
@MCS_CMD2_ENA2 = common dso_local global i32 0, align 4
@MCS_SD_PCH_CTRL = common dso_local global i64 0, align 8
@MCS_NO_DOC1 = common dso_local global i32 0, align 4
@MCS_PWR_CTRL4 = common dso_local global i64 0, align 8
@MCS_PWR_CTRL2 = common dso_local global i64 0, align 8
@MCS_P_DRV_M = common dso_local global i32 0, align 4
@MCS_VCOMDC = common dso_local global i32 0, align 4
@MCS_OSC_ADJ = common dso_local global i32 0, align 4
@MCS_GVDDSET = common dso_local global i32 0, align 4
@MCS_SD_CTRL = common dso_local global i64 0, align 8
@MCS_PWR_CTRL1 = common dso_local global i64 0, align 8
@MCS_RGB_VID_SET = common dso_local global i32 0, align 4
@MCS_PANSET = common dso_local global i32 0, align 4
@MCS_GOAVST = common dso_local global i32 0, align 4
@MCS_GOACLKA1 = common dso_local global i32 0, align 4
@MCS_GOACLKA3 = common dso_local global i32 0, align 4
@MCS_GOAECLK = common dso_local global i32 0, align 4
@MCS_NO_DOC2 = common dso_local global i32 0, align 4
@MCS_PANCTRLSET1 = common dso_local global i32 0, align 4
@MCS_PANCTRLSET2 = common dso_local global i32 0, align 4
@MCS_PANCTRLSET3 = common dso_local global i32 0, align 4
@MCS_PANCTRLSET4 = common dso_local global i32 0, align 4
@MCS_PANCTRLSET5 = common dso_local global i32 0, align 4
@MCS_PANCTRLSET6 = common dso_local global i32 0, align 4
@MCS_PANCTRLSET7 = common dso_local global i32 0, align 4
@MCS_PANCTRLSET8 = common dso_local global i32 0, align 4
@MCS_PANU2D1 = common dso_local global i32 0, align 4
@MCS_PANU2D2 = common dso_local global i32 0, align 4
@MCS_PANU2D3 = common dso_local global i32 0, align 4
@MCS_PAND2U1 = common dso_local global i32 0, align 4
@MCS_PAND2U2 = common dso_local global i32 0, align 4
@MCS_PAND2U3 = common dso_local global i32 0, align 4
@MCS_NO_DOC3 = common dso_local global i32 0, align 4
@MCS_GMCT2_2P = common dso_local global i32 0, align 4
@MCS_GMCT2_2N = common dso_local global i32 0, align 4
@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@default_mode = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MIPI_DCS_PIXEL_FMT_24BIT = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_POWER_SAVE = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_MEMORY_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.otm8009a*)* @otm8009a_init_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otm8009a_init_sequence(%struct.otm8009a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.otm8009a*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.otm8009a* %0, %struct.otm8009a** %3, align 8
  %6 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %7 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mipi_dsi_device* @to_mipi_dsi_device(i32 %8)
  store %struct.mipi_dsi_device* %9, %struct.mipi_dsi_device** %4, align 8
  %10 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %11 = load i32, i32* @MCS_CMD2_ENA1, align 4
  %12 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %10, i32 %11, i32 128, i32 9, i32 1)
  %13 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %14 = load i32, i32* @MCS_CMD2_ENA2, align 4
  %15 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %13, i32 %14, i32 128, i32 9)
  %16 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %17 = load i64, i64* @MCS_SD_PCH_CTRL, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %16, i32 %18, i32 48)
  %20 = call i32 @mdelay(i32 10)
  %21 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %22 = load i32, i32* @MCS_NO_DOC1, align 4
  %23 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %21, i32 %22, i32 64)
  %24 = call i32 @mdelay(i32 10)
  %25 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %26 = load i64, i64* @MCS_PWR_CTRL4, align 8
  %27 = add nsw i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %25, i32 %28, i32 169)
  %30 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %31 = load i64, i64* @MCS_PWR_CTRL2, align 8
  %32 = add nsw i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %30, i32 %33, i32 52)
  %35 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %36 = load i32, i32* @MCS_P_DRV_M, align 4
  %37 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %35, i32 %36, i32 80)
  %38 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %39 = load i32, i32* @MCS_VCOMDC, align 4
  %40 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %38, i32 %39, i32 78)
  %41 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %42 = load i32, i32* @MCS_OSC_ADJ, align 4
  %43 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %41, i32 %42, i32 102)
  %44 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %45 = load i64, i64* @MCS_PWR_CTRL2, align 8
  %46 = add nsw i64 %45, 2
  %47 = trunc i64 %46 to i32
  %48 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %44, i32 %47, i32 1)
  %49 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %50 = load i64, i64* @MCS_PWR_CTRL2, align 8
  %51 = add nsw i64 %50, 5
  %52 = trunc i64 %51 to i32
  %53 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %49, i32 %52, i32 52)
  %54 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %55 = load i64, i64* @MCS_PWR_CTRL2, align 8
  %56 = add nsw i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %54, i32 %57, i32 51)
  %59 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %60 = load i32, i32* @MCS_GVDDSET, align 4
  %61 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %59, i32 %60, i32 121, i32 121)
  %62 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %63 = load i64, i64* @MCS_SD_CTRL, align 8
  %64 = add nsw i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %62, i32 %65, i32 27)
  %67 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %68 = load i64, i64* @MCS_PWR_CTRL1, align 8
  %69 = add nsw i64 %68, 2
  %70 = trunc i64 %69 to i32
  %71 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %67, i32 %70, i32 131)
  %72 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %73 = load i64, i64* @MCS_SD_PCH_CTRL, align 8
  %74 = add nsw i64 %73, 1
  %75 = trunc i64 %74 to i32
  %76 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %72, i32 %75, i32 131)
  %77 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %78 = load i32, i32* @MCS_RGB_VID_SET, align 4
  %79 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %77, i32 %78, i32 14)
  %80 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %81 = load i32, i32* @MCS_PANSET, align 4
  %82 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %80, i32 %81, i32 0, i32 1)
  %83 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %84 = load i32, i32* @MCS_GOAVST, align 4
  %85 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %83, i32 %84, i32 133, i32 1, i32 0, i32 132, i32 1, i32 0)
  %86 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %87 = load i32, i32* @MCS_GOACLKA1, align 4
  %88 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %86, i32 %87, i32 24, i32 4, i32 3, i32 57, i32 0, i32 0, i32 0, i32 24, i32 3, i32 3, i32 58, i32 0, i32 0, i32 0)
  %89 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %90 = load i32, i32* @MCS_GOACLKA3, align 4
  %91 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %89, i32 %90, i32 24, i32 2, i32 3, i32 59, i32 0, i32 0, i32 0, i32 24, i32 1, i32 3, i32 60, i32 0, i32 0, i32 0)
  %92 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %93 = load i32, i32* @MCS_GOAECLK, align 4
  %94 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %92, i32 %93, i32 1, i32 1, i32 32, i32 32, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0)
  %95 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %96 = load i32, i32* @MCS_NO_DOC2, align 4
  %97 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %95, i32 %96, i32 0)
  %98 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %99 = load i32, i32* @MCS_PANCTRLSET1, align 4
  %100 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %98, i32 %99, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %101 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %102 = load i32, i32* @MCS_PANCTRLSET2, align 4
  %103 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %101, i32 %102, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %104 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %105 = load i32, i32* @MCS_PANCTRLSET3, align 4
  %106 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %104, i32 %105, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %107 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %108 = load i32, i32* @MCS_PANCTRLSET4, align 4
  %109 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %107, i32 %108, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %110 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %111 = load i32, i32* @MCS_PANCTRLSET5, align 4
  %112 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %110, i32 %111, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %113 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %114 = load i32, i32* @MCS_PANCTRLSET6, align 4
  %115 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %113, i32 %114, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0)
  %116 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %117 = load i32, i32* @MCS_PANCTRLSET7, align 4
  %118 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %116, i32 %117, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %119 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %120 = load i32, i32* @MCS_PANCTRLSET8, align 4
  %121 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %119, i32 %120, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255)
  %122 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %123 = load i32, i32* @MCS_PANU2D1, align 4
  %124 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %122, i32 %123, i32 0, i32 38, i32 9, i32 11, i32 1, i32 37, i32 0, i32 0, i32 0, i32 0)
  %125 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %126 = load i32, i32* @MCS_PANU2D2, align 4
  %127 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %125, i32 %126, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 10, i32 12, i32 2)
  %128 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %129 = load i32, i32* @MCS_PANU2D3, align 4
  %130 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %128, i32 %129, i32 37, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %131 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %132 = load i32, i32* @MCS_PAND2U1, align 4
  %133 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %131, i32 %132, i32 0, i32 37, i32 12, i32 10, i32 2, i32 38, i32 0, i32 0, i32 0, i32 0)
  %134 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %135 = load i32, i32* @MCS_PAND2U2, align 4
  %136 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %134, i32 %135, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 11, i32 9, i32 1)
  %137 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %138 = load i32, i32* @MCS_PAND2U3, align 4
  %139 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %137, i32 %138, i32 38, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %140 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %141 = load i64, i64* @MCS_PWR_CTRL1, align 8
  %142 = add nsw i64 %141, 1
  %143 = trunc i64 %142 to i32
  %144 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %140, i32 %143, i32 102)
  %145 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %146 = load i32, i32* @MCS_NO_DOC3, align 4
  %147 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %145, i32 %146, i32 6)
  %148 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %149 = load i32, i32* @MCS_GMCT2_2P, align 4
  %150 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %148, i32 %149, i32 0, i32 9, i32 15, i32 14, i32 7, i32 16, i32 11, i32 10, i32 4, i32 7, i32 11, i32 8, i32 15, i32 16, i32 10, i32 1)
  %151 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %152 = load i32, i32* @MCS_GMCT2_2N, align 4
  %153 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %151, i32 %152, i32 0, i32 9, i32 15, i32 14, i32 7, i32 16, i32 11, i32 10, i32 4, i32 7, i32 11, i32 8, i32 15, i32 16, i32 10, i32 1)
  %154 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %155 = load i32, i32* @MCS_CMD2_ENA1, align 4
  %156 = call i32 (%struct.otm8009a*, i32, i32, ...) @dcs_write_cmd_at(%struct.otm8009a* %154, i32 %155, i32 255, i32 255, i32 255)
  %157 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %158 = call i32 @mipi_dsi_dcs_nop(%struct.mipi_dsi_device* %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %1
  %162 = load i32, i32* %5, align 4
  store i32 %162, i32* %2, align 4
  br label %225

163:                                              ; preds = %1
  %164 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %165 = call i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device* %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %2, align 4
  br label %225

170:                                              ; preds = %163
  %171 = call i32 @mdelay(i32 120)
  %172 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %173 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %174 = call i32 (%struct.otm8009a*, i32, ...) @dcs_write_seq(%struct.otm8009a* %172, i32 %173, i32 0)
  %175 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_mode, i32 0, i32 1), align 8
  %177 = sub nsw i64 %176, 1
  %178 = call i32 @mipi_dsi_dcs_set_column_address(%struct.mipi_dsi_device* %175, i32 0, i64 %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %170
  %182 = load i32, i32* %5, align 4
  store i32 %182, i32* %2, align 4
  br label %225

183:                                              ; preds = %170
  %184 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_mode, i32 0, i32 0), align 8
  %186 = sub nsw i64 %185, 1
  %187 = call i32 @mipi_dsi_dcs_set_page_address(%struct.mipi_dsi_device* %184, i32 0, i64 %186)
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = load i32, i32* %5, align 4
  store i32 %191, i32* %2, align 4
  br label %225

192:                                              ; preds = %183
  %193 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %194 = load i32, i32* @MIPI_DCS_PIXEL_FMT_24BIT, align 4
  %195 = load i32, i32* @MIPI_DCS_PIXEL_FMT_24BIT, align 4
  %196 = shl i32 %195, 4
  %197 = or i32 %194, %196
  %198 = call i32 @mipi_dsi_dcs_set_pixel_format(%struct.mipi_dsi_device* %193, i32 %197)
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = load i32, i32* %5, align 4
  store i32 %202, i32* %2, align 4
  br label %225

203:                                              ; preds = %192
  %204 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %205 = load i32, i32* @MIPI_DCS_WRITE_POWER_SAVE, align 4
  %206 = call i32 (%struct.otm8009a*, i32, ...) @dcs_write_seq(%struct.otm8009a* %204, i32 %205, i32 0)
  %207 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %208 = call i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device* %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = load i32, i32* %5, align 4
  store i32 %212, i32* %2, align 4
  br label %225

213:                                              ; preds = %203
  %214 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %215 = call i32 @mipi_dsi_dcs_nop(%struct.mipi_dsi_device* %214)
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* %5, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i32, i32* %5, align 4
  store i32 %219, i32* %2, align 4
  br label %225

220:                                              ; preds = %213
  %221 = load %struct.otm8009a*, %struct.otm8009a** %3, align 8
  %222 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_START, align 4
  %223 = call i32 (%struct.otm8009a*, i32, ...) @dcs_write_seq(%struct.otm8009a* %221, i32 %222)
  %224 = call i32 @mdelay(i32 10)
  store i32 0, i32* %2, align 4
  br label %225

225:                                              ; preds = %220, %218, %211, %201, %190, %181, %168, %161
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.mipi_dsi_device* @to_mipi_dsi_device(i32) #1

declare dso_local i32 @dcs_write_cmd_at(%struct.otm8009a*, i32, i32, ...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mipi_dsi_dcs_nop(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(%struct.mipi_dsi_device*) #1

declare dso_local i32 @dcs_write_seq(%struct.otm8009a*, i32, ...) #1

declare dso_local i32 @mipi_dsi_dcs_set_column_address(%struct.mipi_dsi_device*, i32, i64) #1

declare dso_local i32 @mipi_dsi_dcs_set_page_address(%struct.mipi_dsi_device*, i32, i64) #1

declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(%struct.mipi_dsi_device*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_on(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
