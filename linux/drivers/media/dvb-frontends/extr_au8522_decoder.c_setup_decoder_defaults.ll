; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_setup_decoder_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_au8522_decoder.c_setup_decoder_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.au8522_state = type { i64 }

@AU8522_TVDEC_SHARPNESSREG009H = common dso_local global i32 0, align 4
@AU8522_TVDEC_BRIGHTNESS_REG00AH = common dso_local global i32 0, align 4
@AU8522_TVDEC_CONTRAST_REG00BH = common dso_local global i32 0, align 4
@AU8522_TVDEC_SATURATION_CB_REG00CH = common dso_local global i32 0, align 4
@AU8522_TVDEC_SATURATION_CR_REG00DH = common dso_local global i32 0, align 4
@AU8522_TVDEC_HUE_H_REG00EH = common dso_local global i32 0, align 4
@AU8522_TVDEC_HUE_L_REG00FH = common dso_local global i32 0, align 4
@AU8522_TVDEC_INT_MASK_REG010H = common dso_local global i32 0, align 4
@AU8522_VIDEO_MODE_REG011H = common dso_local global i32 0, align 4
@AU8522_TVDEC_PGA_REG012H = common dso_local global i32 0, align 4
@AU8522_TVDEC_PGA_REG012H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_MODE_REG015H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_MODE_REG015H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDED_DBG_MODE_REG060H = common dso_local global i32 0, align 4
@AU8522_TVDED_DBG_MODE_REG060H_CVBS = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i64 0, align 8
@AU8522_TVDEC_FORMAT_CTRL1_REG061H = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL1_REG061H_FIELD_LEN_525 = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL1_REG061H_LINE_LEN_63_492 = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL1_REG061H_SUBCARRIER_NTSC_AUTO = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL2_REG062H = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL2_REG062H_STD_PAL_M = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL1_REG061H_SUBCARRIER_NTSC_MN = common dso_local global i32 0, align 4
@AU8522_TVDEC_FORMAT_CTRL2_REG062H_STD_NTSC = common dso_local global i32 0, align 4
@AU8522_TVDEC_VCR_DET_LLIM_REG063H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VCR_DET_LLIM_REG063H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_VCR_DET_HLIM_REG064H = common dso_local global i32 0, align 4
@AU8522_TVDEC_VCR_DET_HLIM_REG064H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR1_REG065H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR1_REG065H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR2_REG066H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR2_REG066H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR3_REG067H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_VDIF_THR3_REG067H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_NOTCH_THR_REG068H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_NOTCH_THR_REG068H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR1_REG069H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR1_REG069H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR2_REG06AH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR2_REG06AH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR3_REG06BH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_HDIF_THR3_REG06BH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH_SVIDEO = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH_SVIDEO = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR3_REG06EH = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DCDIF_THR3_REG06EH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_UV_SEP_THR_REG06FH = common dso_local global i32 0, align 4
@AU8522_TVDEC_UV_SEP_THR_REG06FH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DC_THR1_NTSC_REG070H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DC_THR1_NTSC_REG070H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG071H = common dso_local global i32 0, align 4
@AU8522_REG071H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG072H = common dso_local global i32 0, align 4
@AU8522_REG072H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DC_THR2_NTSC_REG073H = common dso_local global i32 0, align 4
@AU8522_TVDEC_COMB_DC_THR2_NTSC_REG073H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG074H = common dso_local global i32 0, align 4
@AU8522_REG074H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG075H = common dso_local global i32 0, align 4
@AU8522_REG075H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_DCAGC_CTRL_REG077H = common dso_local global i32 0, align 4
@AU8522_TVDEC_DCAGC_CTRL_REG077H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_PIC_START_ADJ_REG078H = common dso_local global i32 0, align 4
@AU8522_TVDEC_PIC_START_ADJ_REG078H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_AGC_HIGH_LIMIT_REG079H = common dso_local global i32 0, align 4
@AU8522_TVDEC_AGC_HIGH_LIMIT_REG079H_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_MACROVISION_SYNC_THR_REG07AH = common dso_local global i32 0, align 4
@AU8522_TVDEC_MACROVISION_SYNC_THR_REG07AH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_INTRP_CTRL_REG07BH = common dso_local global i32 0, align 4
@AU8522_TVDEC_INTRP_CTRL_REG07BH_CVBS = common dso_local global i32 0, align 4
@AU8522_TVDEC_AGC_LOW_LIMIT_REG0E4H = common dso_local global i32 0, align 4
@AU8522_TVDEC_AGC_LOW_LIMIT_REG0E4H_CVBS = common dso_local global i32 0, align 4
@AU8522_TOREGAAGC_REG0E5H = common dso_local global i32 0, align 4
@AU8522_TOREGAAGC_REG0E5H_CVBS = common dso_local global i32 0, align 4
@AU8522_REG016H = common dso_local global i32 0, align 4
@AU8522_REG016H_CVBS = common dso_local global i32 0, align 4
@NUM_FILTER_COEF = common dso_local global i32 0, align 4
@filter_coef = common dso_local global %struct.TYPE_2__* null, align 8
@AU8522_REG42EH = common dso_local global i32 0, align 4
@AU8522_REG42FH = common dso_local global i32 0, align 4
@AU8522_REG430H = common dso_local global i32 0, align 4
@AU8522_REG431H = common dso_local global i32 0, align 4
@AU8522_REG432H = common dso_local global i32 0, align 4
@AU8522_REG433H = common dso_local global i32 0, align 4
@AU8522_REG434H = common dso_local global i32 0, align 4
@AU8522_REG435H = common dso_local global i32 0, align 4
@AU8522_REG436H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au8522_state*, i32)* @setup_decoder_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_decoder_defaults(%struct.au8522_state* %0, i32 %1) #0 {
  %3 = alloca %struct.au8522_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.au8522_state* %0, %struct.au8522_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %8 = load i32, i32* @AU8522_TVDEC_SHARPNESSREG009H, align 4
  %9 = call i32 @au8522_writereg(%struct.au8522_state* %7, i32 %8, i32 7)
  %10 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %11 = load i32, i32* @AU8522_TVDEC_BRIGHTNESS_REG00AH, align 4
  %12 = call i32 @au8522_writereg(%struct.au8522_state* %10, i32 %11, i32 237)
  %13 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %14 = load i32, i32* @AU8522_TVDEC_CONTRAST_REG00BH, align 4
  %15 = call i32 @au8522_writereg(%struct.au8522_state* %13, i32 %14, i32 121)
  %16 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %17 = load i32, i32* @AU8522_TVDEC_SATURATION_CB_REG00CH, align 4
  %18 = call i32 @au8522_writereg(%struct.au8522_state* %16, i32 %17, i32 128)
  %19 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %20 = load i32, i32* @AU8522_TVDEC_SATURATION_CR_REG00DH, align 4
  %21 = call i32 @au8522_writereg(%struct.au8522_state* %19, i32 %20, i32 128)
  %22 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %23 = load i32, i32* @AU8522_TVDEC_HUE_H_REG00EH, align 4
  %24 = call i32 @au8522_writereg(%struct.au8522_state* %22, i32 %23, i32 0)
  %25 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %26 = load i32, i32* @AU8522_TVDEC_HUE_L_REG00FH, align 4
  %27 = call i32 @au8522_writereg(%struct.au8522_state* %25, i32 %26, i32 0)
  %28 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %29 = load i32, i32* @AU8522_TVDEC_INT_MASK_REG010H, align 4
  %30 = call i32 @au8522_writereg(%struct.au8522_state* %28, i32 %29, i32 0)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %35 = load i32, i32* @AU8522_VIDEO_MODE_REG011H, align 4
  %36 = call i32 @au8522_writereg(%struct.au8522_state* %34, i32 %35, i32 4)
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %39 = load i32, i32* @AU8522_VIDEO_MODE_REG011H, align 4
  %40 = call i32 @au8522_writereg(%struct.au8522_state* %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %43 = load i32, i32* @AU8522_TVDEC_PGA_REG012H, align 4
  %44 = load i32, i32* @AU8522_TVDEC_PGA_REG012H_CVBS, align 4
  %45 = call i32 @au8522_writereg(%struct.au8522_state* %42, i32 %43, i32 %44)
  %46 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %47 = load i32, i32* @AU8522_TVDEC_COMB_MODE_REG015H, align 4
  %48 = load i32, i32* @AU8522_TVDEC_COMB_MODE_REG015H_CVBS, align 4
  %49 = call i32 @au8522_writereg(%struct.au8522_state* %46, i32 %47, i32 %48)
  %50 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %51 = load i32, i32* @AU8522_TVDED_DBG_MODE_REG060H, align 4
  %52 = load i32, i32* @AU8522_TVDED_DBG_MODE_REG060H_CVBS, align 4
  %53 = call i32 @au8522_writereg(%struct.au8522_state* %50, i32 %51, i32 %52)
  %54 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %55 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @V4L2_STD_PAL_M, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %41
  %60 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %61 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H, align 4
  %62 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H_FIELD_LEN_525, align 4
  %63 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H_LINE_LEN_63_492, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H_SUBCARRIER_NTSC_AUTO, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @au8522_writereg(%struct.au8522_state* %60, i32 %61, i32 %66)
  %68 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %69 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL2_REG062H, align 4
  %70 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL2_REG062H_STD_PAL_M, align 4
  %71 = call i32 @au8522_writereg(%struct.au8522_state* %68, i32 %69, i32 %70)
  br label %85

72:                                               ; preds = %41
  %73 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %74 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H, align 4
  %75 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H_FIELD_LEN_525, align 4
  %76 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H_LINE_LEN_63_492, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL1_REG061H_SUBCARRIER_NTSC_MN, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @au8522_writereg(%struct.au8522_state* %73, i32 %74, i32 %79)
  %81 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %82 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL2_REG062H, align 4
  %83 = load i32, i32* @AU8522_TVDEC_FORMAT_CTRL2_REG062H_STD_NTSC, align 4
  %84 = call i32 @au8522_writereg(%struct.au8522_state* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %72, %59
  %86 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %87 = load i32, i32* @AU8522_TVDEC_VCR_DET_LLIM_REG063H, align 4
  %88 = load i32, i32* @AU8522_TVDEC_VCR_DET_LLIM_REG063H_CVBS, align 4
  %89 = call i32 @au8522_writereg(%struct.au8522_state* %86, i32 %87, i32 %88)
  %90 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %91 = load i32, i32* @AU8522_TVDEC_VCR_DET_HLIM_REG064H, align 4
  %92 = load i32, i32* @AU8522_TVDEC_VCR_DET_HLIM_REG064H_CVBS, align 4
  %93 = call i32 @au8522_writereg(%struct.au8522_state* %90, i32 %91, i32 %92)
  %94 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %95 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR1_REG065H, align 4
  %96 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR1_REG065H_CVBS, align 4
  %97 = call i32 @au8522_writereg(%struct.au8522_state* %94, i32 %95, i32 %96)
  %98 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %99 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR2_REG066H, align 4
  %100 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR2_REG066H_CVBS, align 4
  %101 = call i32 @au8522_writereg(%struct.au8522_state* %98, i32 %99, i32 %100)
  %102 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %103 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR3_REG067H, align 4
  %104 = load i32, i32* @AU8522_TVDEC_COMB_VDIF_THR3_REG067H_CVBS, align 4
  %105 = call i32 @au8522_writereg(%struct.au8522_state* %102, i32 %103, i32 %104)
  %106 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %107 = load i32, i32* @AU8522_TVDEC_COMB_NOTCH_THR_REG068H, align 4
  %108 = load i32, i32* @AU8522_TVDEC_COMB_NOTCH_THR_REG068H_CVBS, align 4
  %109 = call i32 @au8522_writereg(%struct.au8522_state* %106, i32 %107, i32 %108)
  %110 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %111 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR1_REG069H, align 4
  %112 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR1_REG069H_CVBS, align 4
  %113 = call i32 @au8522_writereg(%struct.au8522_state* %110, i32 %111, i32 %112)
  %114 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %115 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR2_REG06AH, align 4
  %116 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR2_REG06AH_CVBS, align 4
  %117 = call i32 @au8522_writereg(%struct.au8522_state* %114, i32 %115, i32 %116)
  %118 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %119 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR3_REG06BH, align 4
  %120 = load i32, i32* @AU8522_TVDEC_COMB_HDIF_THR3_REG06BH_CVBS, align 4
  %121 = call i32 @au8522_writereg(%struct.au8522_state* %118, i32 %119, i32 %120)
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %85
  %125 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %126 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH, align 4
  %127 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH_SVIDEO, align 4
  %128 = call i32 @au8522_writereg(%struct.au8522_state* %125, i32 %126, i32 %127)
  %129 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %130 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH, align 4
  %131 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH_SVIDEO, align 4
  %132 = call i32 @au8522_writereg(%struct.au8522_state* %129, i32 %130, i32 %131)
  br label %142

133:                                              ; preds = %85
  %134 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %135 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH, align 4
  %136 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR1_REG06CH_CVBS, align 4
  %137 = call i32 @au8522_writereg(%struct.au8522_state* %134, i32 %135, i32 %136)
  %138 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %139 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH, align 4
  %140 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR2_REG06DH_CVBS, align 4
  %141 = call i32 @au8522_writereg(%struct.au8522_state* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %133, %124
  %143 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %144 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR3_REG06EH, align 4
  %145 = load i32, i32* @AU8522_TVDEC_COMB_DCDIF_THR3_REG06EH_CVBS, align 4
  %146 = call i32 @au8522_writereg(%struct.au8522_state* %143, i32 %144, i32 %145)
  %147 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %148 = load i32, i32* @AU8522_TVDEC_UV_SEP_THR_REG06FH, align 4
  %149 = load i32, i32* @AU8522_TVDEC_UV_SEP_THR_REG06FH_CVBS, align 4
  %150 = call i32 @au8522_writereg(%struct.au8522_state* %147, i32 %148, i32 %149)
  %151 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %152 = load i32, i32* @AU8522_TVDEC_COMB_DC_THR1_NTSC_REG070H, align 4
  %153 = load i32, i32* @AU8522_TVDEC_COMB_DC_THR1_NTSC_REG070H_CVBS, align 4
  %154 = call i32 @au8522_writereg(%struct.au8522_state* %151, i32 %152, i32 %153)
  %155 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %156 = load i32, i32* @AU8522_REG071H, align 4
  %157 = load i32, i32* @AU8522_REG071H_CVBS, align 4
  %158 = call i32 @au8522_writereg(%struct.au8522_state* %155, i32 %156, i32 %157)
  %159 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %160 = load i32, i32* @AU8522_REG072H, align 4
  %161 = load i32, i32* @AU8522_REG072H_CVBS, align 4
  %162 = call i32 @au8522_writereg(%struct.au8522_state* %159, i32 %160, i32 %161)
  %163 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %164 = load i32, i32* @AU8522_TVDEC_COMB_DC_THR2_NTSC_REG073H, align 4
  %165 = load i32, i32* @AU8522_TVDEC_COMB_DC_THR2_NTSC_REG073H_CVBS, align 4
  %166 = call i32 @au8522_writereg(%struct.au8522_state* %163, i32 %164, i32 %165)
  %167 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %168 = load i32, i32* @AU8522_REG074H, align 4
  %169 = load i32, i32* @AU8522_REG074H_CVBS, align 4
  %170 = call i32 @au8522_writereg(%struct.au8522_state* %167, i32 %168, i32 %169)
  %171 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %172 = load i32, i32* @AU8522_REG075H, align 4
  %173 = load i32, i32* @AU8522_REG075H_CVBS, align 4
  %174 = call i32 @au8522_writereg(%struct.au8522_state* %171, i32 %172, i32 %173)
  %175 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %176 = load i32, i32* @AU8522_TVDEC_DCAGC_CTRL_REG077H, align 4
  %177 = load i32, i32* @AU8522_TVDEC_DCAGC_CTRL_REG077H_CVBS, align 4
  %178 = call i32 @au8522_writereg(%struct.au8522_state* %175, i32 %176, i32 %177)
  %179 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %180 = load i32, i32* @AU8522_TVDEC_PIC_START_ADJ_REG078H, align 4
  %181 = load i32, i32* @AU8522_TVDEC_PIC_START_ADJ_REG078H_CVBS, align 4
  %182 = call i32 @au8522_writereg(%struct.au8522_state* %179, i32 %180, i32 %181)
  %183 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %184 = load i32, i32* @AU8522_TVDEC_AGC_HIGH_LIMIT_REG079H, align 4
  %185 = load i32, i32* @AU8522_TVDEC_AGC_HIGH_LIMIT_REG079H_CVBS, align 4
  %186 = call i32 @au8522_writereg(%struct.au8522_state* %183, i32 %184, i32 %185)
  %187 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %188 = load i32, i32* @AU8522_TVDEC_MACROVISION_SYNC_THR_REG07AH, align 4
  %189 = load i32, i32* @AU8522_TVDEC_MACROVISION_SYNC_THR_REG07AH_CVBS, align 4
  %190 = call i32 @au8522_writereg(%struct.au8522_state* %187, i32 %188, i32 %189)
  %191 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %192 = load i32, i32* @AU8522_TVDEC_INTRP_CTRL_REG07BH, align 4
  %193 = load i32, i32* @AU8522_TVDEC_INTRP_CTRL_REG07BH_CVBS, align 4
  %194 = call i32 @au8522_writereg(%struct.au8522_state* %191, i32 %192, i32 %193)
  %195 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %196 = load i32, i32* @AU8522_TVDEC_AGC_LOW_LIMIT_REG0E4H, align 4
  %197 = load i32, i32* @AU8522_TVDEC_AGC_LOW_LIMIT_REG0E4H_CVBS, align 4
  %198 = call i32 @au8522_writereg(%struct.au8522_state* %195, i32 %196, i32 %197)
  %199 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %200 = load i32, i32* @AU8522_TOREGAAGC_REG0E5H, align 4
  %201 = load i32, i32* @AU8522_TOREGAAGC_REG0E5H_CVBS, align 4
  %202 = call i32 @au8522_writereg(%struct.au8522_state* %199, i32 %200, i32 %201)
  %203 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %204 = load i32, i32* @AU8522_REG016H, align 4
  %205 = load i32, i32* @AU8522_REG016H_CVBS, align 4
  %206 = call i32 @au8522_writereg(%struct.au8522_state* %203, i32 %204, i32 %205)
  store i32 5, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %207

207:                                              ; preds = %230, %142
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @NUM_FILTER_COEF, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %233

211:                                              ; preds = %207
  %212 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** @filter_coef, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** @filter_coef, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @au8522_writereg(%struct.au8522_state* %212, i32 %218, i32 %228)
  br label %230

230:                                              ; preds = %211
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %5, align 4
  br label %207

233:                                              ; preds = %207
  %234 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %235 = load i32, i32* @AU8522_REG42EH, align 4
  %236 = call i32 @au8522_writereg(%struct.au8522_state* %234, i32 %235, i32 135)
  %237 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %238 = load i32, i32* @AU8522_REG42FH, align 4
  %239 = call i32 @au8522_writereg(%struct.au8522_state* %237, i32 %238, i32 162)
  %240 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %241 = load i32, i32* @AU8522_REG430H, align 4
  %242 = call i32 @au8522_writereg(%struct.au8522_state* %240, i32 %241, i32 191)
  %243 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %244 = load i32, i32* @AU8522_REG431H, align 4
  %245 = call i32 @au8522_writereg(%struct.au8522_state* %243, i32 %244, i32 203)
  %246 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %247 = load i32, i32* @AU8522_REG432H, align 4
  %248 = call i32 @au8522_writereg(%struct.au8522_state* %246, i32 %247, i32 161)
  %249 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %250 = load i32, i32* @AU8522_REG433H, align 4
  %251 = call i32 @au8522_writereg(%struct.au8522_state* %249, i32 %250, i32 65)
  %252 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %253 = load i32, i32* @AU8522_REG434H, align 4
  %254 = call i32 @au8522_writereg(%struct.au8522_state* %252, i32 %253, i32 136)
  %255 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %256 = load i32, i32* @AU8522_REG435H, align 4
  %257 = call i32 @au8522_writereg(%struct.au8522_state* %255, i32 %256, i32 194)
  %258 = load %struct.au8522_state*, %struct.au8522_state** %3, align 8
  %259 = load i32, i32* @AU8522_REG436H, align 4
  %260 = call i32 @au8522_writereg(%struct.au8522_state* %258, i32 %259, i32 60)
  ret void
}

declare dso_local i32 @au8522_writereg(%struct.au8522_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
