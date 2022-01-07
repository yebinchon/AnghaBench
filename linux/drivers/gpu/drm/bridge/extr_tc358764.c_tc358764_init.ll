; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc358764 = type { i32, i64 }

@SYS_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ID: %#x\0A\00", align 1
@PPI_TX_RX_TA = common dso_local global i32 0, align 4
@TTA_GET = common dso_local global i32 0, align 4
@TTA_SURE = common dso_local global i32 0, align 4
@PPI_LPTXTIMECNT = common dso_local global i32 0, align 4
@LPX_PERIOD = common dso_local global i32 0, align 4
@PPI_D0S_CLRSIPOCOUNT = common dso_local global i32 0, align 4
@PPI_D1S_CLRSIPOCOUNT = common dso_local global i32 0, align 4
@PPI_D2S_CLRSIPOCOUNT = common dso_local global i32 0, align 4
@PPI_D3S_CLRSIPOCOUNT = common dso_local global i32 0, align 4
@PPI_LANEENABLE = common dso_local global i32 0, align 4
@LANEENABLE_L3EN = common dso_local global i32 0, align 4
@LANEENABLE_L2EN = common dso_local global i32 0, align 4
@LANEENABLE_L1EN = common dso_local global i32 0, align 4
@LANEENABLE_L0EN = common dso_local global i32 0, align 4
@LANEENABLE_CLEN = common dso_local global i32 0, align 4
@DSI_LANEENABLE = common dso_local global i32 0, align 4
@PPI_STARTPPI = common dso_local global i32 0, align 4
@PPI_START_FUNCTION = common dso_local global i32 0, align 4
@DSI_STARTDSI = common dso_local global i32 0, align 4
@DSI_RX_START = common dso_local global i32 0, align 4
@VP_CTRL = common dso_local global i32 0, align 4
@VP_CTRL_HSPOL = common dso_local global i32 0, align 4
@VP_CTRL_VSPOL = common dso_local global i32 0, align 4
@LV_PHY0 = common dso_local global i32 0, align 4
@SYS_RST = common dso_local global i32 0, align 4
@SYS_RST_LCD = common dso_local global i32 0, align 4
@LV_MX0003 = common dso_local global i32 0, align 4
@LVI_R0 = common dso_local global i32 0, align 4
@LVI_R1 = common dso_local global i32 0, align 4
@LVI_R2 = common dso_local global i32 0, align 4
@LVI_R3 = common dso_local global i32 0, align 4
@LV_MX0407 = common dso_local global i32 0, align 4
@LVI_R4 = common dso_local global i32 0, align 4
@LVI_R7 = common dso_local global i32 0, align 4
@LVI_R5 = common dso_local global i32 0, align 4
@LVI_G0 = common dso_local global i32 0, align 4
@LV_MX0811 = common dso_local global i32 0, align 4
@LVI_G1 = common dso_local global i32 0, align 4
@LVI_G2 = common dso_local global i32 0, align 4
@LVI_G6 = common dso_local global i32 0, align 4
@LVI_G7 = common dso_local global i32 0, align 4
@LV_MX1215 = common dso_local global i32 0, align 4
@LVI_G3 = common dso_local global i32 0, align 4
@LVI_G4 = common dso_local global i32 0, align 4
@LVI_G5 = common dso_local global i32 0, align 4
@LVI_B0 = common dso_local global i32 0, align 4
@LV_MX1619 = common dso_local global i32 0, align 4
@LVI_B6 = common dso_local global i32 0, align 4
@LVI_B7 = common dso_local global i32 0, align 4
@LVI_B1 = common dso_local global i32 0, align 4
@LVI_B2 = common dso_local global i32 0, align 4
@LV_MX2023 = common dso_local global i32 0, align 4
@LVI_B3 = common dso_local global i32 0, align 4
@LVI_B4 = common dso_local global i32 0, align 4
@LVI_B5 = common dso_local global i32 0, align 4
@LVI_L0 = common dso_local global i32 0, align 4
@LV_MX2427 = common dso_local global i32 0, align 4
@LVI_HS = common dso_local global i32 0, align 4
@LVI_VS = common dso_local global i32 0, align 4
@LVI_DE = common dso_local global i32 0, align 4
@LVI_R6 = common dso_local global i32 0, align 4
@LV_CFG = common dso_local global i32 0, align 4
@LV_CFG_CLKPOL2 = common dso_local global i32 0, align 4
@LV_CFG_CLKPOL1 = common dso_local global i32 0, align 4
@LV_CFG_LVEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc358764*)* @tc358764_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc358764_init(%struct.tc358764* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc358764*, align 8
  %4 = alloca i32, align 4
  store %struct.tc358764* %0, %struct.tc358764** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %6 = load i32, i32* @SYS_ID, align 4
  %7 = call i32 @tc358764_read(%struct.tc358764* %5, i32 %6, i32* %4)
  %8 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %9 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %14 = call i32 @tc358764_clear_error(%struct.tc358764* %13)
  store i32 %14, i32* %2, align 4
  br label %175

15:                                               ; preds = %1
  %16 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %17 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_info(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %22 = load i32, i32* @PPI_TX_RX_TA, align 4
  %23 = load i32, i32* @TTA_GET, align 4
  %24 = load i32, i32* @TTA_SURE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @tc358764_write(%struct.tc358764* %21, i32 %22, i32 %25)
  %27 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %28 = load i32, i32* @PPI_LPTXTIMECNT, align 4
  %29 = load i32, i32* @LPX_PERIOD, align 4
  %30 = call i32 @tc358764_write(%struct.tc358764* %27, i32 %28, i32 %29)
  %31 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %32 = load i32, i32* @PPI_D0S_CLRSIPOCOUNT, align 4
  %33 = call i32 @tc358764_write(%struct.tc358764* %31, i32 %32, i32 5)
  %34 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %35 = load i32, i32* @PPI_D1S_CLRSIPOCOUNT, align 4
  %36 = call i32 @tc358764_write(%struct.tc358764* %34, i32 %35, i32 5)
  %37 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %38 = load i32, i32* @PPI_D2S_CLRSIPOCOUNT, align 4
  %39 = call i32 @tc358764_write(%struct.tc358764* %37, i32 %38, i32 5)
  %40 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %41 = load i32, i32* @PPI_D3S_CLRSIPOCOUNT, align 4
  %42 = call i32 @tc358764_write(%struct.tc358764* %40, i32 %41, i32 5)
  %43 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %44 = load i32, i32* @PPI_LANEENABLE, align 4
  %45 = load i32, i32* @LANEENABLE_L3EN, align 4
  %46 = load i32, i32* @LANEENABLE_L2EN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @LANEENABLE_L1EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @LANEENABLE_L0EN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @LANEENABLE_CLEN, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @tc358764_write(%struct.tc358764* %43, i32 %44, i32 %53)
  %55 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %56 = load i32, i32* @DSI_LANEENABLE, align 4
  %57 = load i32, i32* @LANEENABLE_L3EN, align 4
  %58 = load i32, i32* @LANEENABLE_L2EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @LANEENABLE_L1EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @LANEENABLE_L0EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @LANEENABLE_CLEN, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @tc358764_write(%struct.tc358764* %55, i32 %56, i32 %65)
  %67 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %68 = load i32, i32* @PPI_STARTPPI, align 4
  %69 = load i32, i32* @PPI_START_FUNCTION, align 4
  %70 = call i32 @tc358764_write(%struct.tc358764* %67, i32 %68, i32 %69)
  %71 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %72 = load i32, i32* @DSI_STARTDSI, align 4
  %73 = load i32, i32* @DSI_RX_START, align 4
  %74 = call i32 @tc358764_write(%struct.tc358764* %71, i32 %72, i32 %73)
  %75 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %76 = load i32, i32* @VP_CTRL, align 4
  %77 = call i32 @VP_CTRL_VSDELAY(i32 15)
  %78 = call i32 @VP_CTRL_RGB888(i32 1)
  %79 = or i32 %77, %78
  %80 = call i32 @VP_CTRL_EVTMODE(i32 1)
  %81 = or i32 %79, %80
  %82 = load i32, i32* @VP_CTRL_HSPOL, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @VP_CTRL_VSPOL, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @tc358764_write(%struct.tc358764* %75, i32 %76, i32 %85)
  %87 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %88 = load i32, i32* @LV_PHY0, align 4
  %89 = call i32 @LV_PHY0_RST(i32 1)
  %90 = call i32 @LV_PHY0_PRBS_ON(i32 4)
  %91 = or i32 %89, %90
  %92 = call i32 @LV_PHY0_IS(i32 2)
  %93 = or i32 %91, %92
  %94 = call i32 @LV_PHY0_ND(i32 6)
  %95 = or i32 %93, %94
  %96 = call i32 @tc358764_write(%struct.tc358764* %87, i32 %88, i32 %95)
  %97 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %98 = load i32, i32* @LV_PHY0, align 4
  %99 = call i32 @LV_PHY0_PRBS_ON(i32 4)
  %100 = call i32 @LV_PHY0_IS(i32 2)
  %101 = or i32 %99, %100
  %102 = call i32 @LV_PHY0_ND(i32 6)
  %103 = or i32 %101, %102
  %104 = call i32 @tc358764_write(%struct.tc358764* %97, i32 %98, i32 %103)
  %105 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %106 = load i32, i32* @SYS_RST, align 4
  %107 = load i32, i32* @SYS_RST_LCD, align 4
  %108 = call i32 @tc358764_write(%struct.tc358764* %105, i32 %106, i32 %107)
  %109 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %110 = load i32, i32* @LV_MX0003, align 4
  %111 = load i32, i32* @LVI_R0, align 4
  %112 = load i32, i32* @LVI_R1, align 4
  %113 = load i32, i32* @LVI_R2, align 4
  %114 = load i32, i32* @LVI_R3, align 4
  %115 = call i32 @LV_MX(i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = call i32 @tc358764_write(%struct.tc358764* %109, i32 %110, i32 %115)
  %117 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %118 = load i32, i32* @LV_MX0407, align 4
  %119 = load i32, i32* @LVI_R4, align 4
  %120 = load i32, i32* @LVI_R7, align 4
  %121 = load i32, i32* @LVI_R5, align 4
  %122 = load i32, i32* @LVI_G0, align 4
  %123 = call i32 @LV_MX(i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = call i32 @tc358764_write(%struct.tc358764* %117, i32 %118, i32 %123)
  %125 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %126 = load i32, i32* @LV_MX0811, align 4
  %127 = load i32, i32* @LVI_G1, align 4
  %128 = load i32, i32* @LVI_G2, align 4
  %129 = load i32, i32* @LVI_G6, align 4
  %130 = load i32, i32* @LVI_G7, align 4
  %131 = call i32 @LV_MX(i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = call i32 @tc358764_write(%struct.tc358764* %125, i32 %126, i32 %131)
  %133 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %134 = load i32, i32* @LV_MX1215, align 4
  %135 = load i32, i32* @LVI_G3, align 4
  %136 = load i32, i32* @LVI_G4, align 4
  %137 = load i32, i32* @LVI_G5, align 4
  %138 = load i32, i32* @LVI_B0, align 4
  %139 = call i32 @LV_MX(i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = call i32 @tc358764_write(%struct.tc358764* %133, i32 %134, i32 %139)
  %141 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %142 = load i32, i32* @LV_MX1619, align 4
  %143 = load i32, i32* @LVI_B6, align 4
  %144 = load i32, i32* @LVI_B7, align 4
  %145 = load i32, i32* @LVI_B1, align 4
  %146 = load i32, i32* @LVI_B2, align 4
  %147 = call i32 @LV_MX(i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = call i32 @tc358764_write(%struct.tc358764* %141, i32 %142, i32 %147)
  %149 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %150 = load i32, i32* @LV_MX2023, align 4
  %151 = load i32, i32* @LVI_B3, align 4
  %152 = load i32, i32* @LVI_B4, align 4
  %153 = load i32, i32* @LVI_B5, align 4
  %154 = load i32, i32* @LVI_L0, align 4
  %155 = call i32 @LV_MX(i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = call i32 @tc358764_write(%struct.tc358764* %149, i32 %150, i32 %155)
  %157 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %158 = load i32, i32* @LV_MX2427, align 4
  %159 = load i32, i32* @LVI_HS, align 4
  %160 = load i32, i32* @LVI_VS, align 4
  %161 = load i32, i32* @LVI_DE, align 4
  %162 = load i32, i32* @LVI_R6, align 4
  %163 = call i32 @LV_MX(i32 %159, i32 %160, i32 %161, i32 %162)
  %164 = call i32 @tc358764_write(%struct.tc358764* %157, i32 %158, i32 %163)
  %165 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %166 = load i32, i32* @LV_CFG, align 4
  %167 = load i32, i32* @LV_CFG_CLKPOL2, align 4
  %168 = load i32, i32* @LV_CFG_CLKPOL1, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @LV_CFG_LVEN, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @tc358764_write(%struct.tc358764* %165, i32 %166, i32 %171)
  %173 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %174 = call i32 @tc358764_clear_error(%struct.tc358764* %173)
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %15, %12
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @tc358764_read(%struct.tc358764*, i32, i32*) #1

declare dso_local i32 @tc358764_clear_error(%struct.tc358764*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @tc358764_write(%struct.tc358764*, i32, i32) #1

declare dso_local i32 @VP_CTRL_VSDELAY(i32) #1

declare dso_local i32 @VP_CTRL_RGB888(i32) #1

declare dso_local i32 @VP_CTRL_EVTMODE(i32) #1

declare dso_local i32 @LV_PHY0_RST(i32) #1

declare dso_local i32 @LV_PHY0_PRBS_ON(i32) #1

declare dso_local i32 @LV_PHY0_IS(i32) #1

declare dso_local i32 @LV_PHY0_ND(i32) #1

declare dso_local i32 @LV_MX(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
