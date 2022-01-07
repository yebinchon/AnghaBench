; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt.c_x_tune_dvbt_demod_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt.c_x_tune_dvbt_demod_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)* }

@x_tune_dvbt_demod_setting.clk_mode_ckffrq_a = internal constant [2 x i32] [i32 82, i32 73], align 4
@x_tune_dvbt_demod_setting.clk_mode_ckffrq_b = internal constant [2 x i32] [i32 93, i32 85], align 4
@x_tune_dvbt_demod_setting.clk_mode_ckffrq_c = internal constant [2 x i32] [i32 96, i32 0], align 4
@x_tune_dvbt_demod_setting.ratectl_margin = internal constant [2 x i32] [i32 1, i32 240], align 4
@x_tune_dvbt_demod_setting.maxclkcnt_a = internal constant [3 x i32] [i32 115, i32 202, i32 73], align 4
@x_tune_dvbt_demod_setting.maxclkcnt_b = internal constant [3 x i32] [i32 200, i32 19, i32 170], align 4
@x_tune_dvbt_demod_setting.maxclkcnt_c = internal constant [3 x i32] [i32 220, i32 108, i32 0], align 4
@x_tune_dvbt_demod_setting.bw8_nomi_ac = internal constant [5 x i32] [i32 21, i32 0, i32 0, i32 0, i32 0], align 16
@x_tune_dvbt_demod_setting.bw8_nomi_b = internal constant [5 x i32] [i32 20, i32 106, i32 170, i32 170, i32 170], align 16
@x_tune_dvbt_demod_setting.bw8_gtdofst_a = internal constant [2 x i32] [i32 1, i32 40], align 4
@x_tune_dvbt_demod_setting.bw8_gtdofst_b = internal constant [2 x i32] [i32 17, i32 68], align 4
@x_tune_dvbt_demod_setting.bw8_gtdofst_c = internal constant [2 x i32] [i32 21, i32 40], align 4
@x_tune_dvbt_demod_setting.bw8_mrc_a = internal constant [5 x i32] [i32 48, i32 0, i32 0, i32 144, i32 0], align 16
@x_tune_dvbt_demod_setting.bw8_mrc_b = internal constant [5 x i32] [i32 54, i32 113, i32 0, i32 163, i32 85], align 16
@x_tune_dvbt_demod_setting.bw8_mrc_c = internal constant [5 x i32] [i32 56, i32 0, i32 0, i32 168, i32 0], align 16
@x_tune_dvbt_demod_setting.bw8_notch = internal constant [4 x i32] [i32 179, i32 0, i32 1, i32 2], align 16
@x_tune_dvbt_demod_setting.bw7_nomi_ac = internal constant [5 x i32] [i32 24, i32 0, i32 0, i32 0, i32 0], align 16
@x_tune_dvbt_demod_setting.bw7_nomi_b = internal constant [5 x i32] [i32 23, i32 85, i32 85, i32 85, i32 85], align 16
@x_tune_dvbt_demod_setting.bw7_gtdofst_a = internal constant [2 x i32] [i32 18, i32 76], align 4
@x_tune_dvbt_demod_setting.bw7_gtdofst_b = internal constant [2 x i32] [i32 31, i32 21], align 4
@x_tune_dvbt_demod_setting.bw7_gtdofst_c = internal constant [2 x i32] [i32 31, i32 248], align 4
@x_tune_dvbt_demod_setting.bw7_mrc_a = internal constant [5 x i32] [i32 54, i32 219, i32 0, i32 164, i32 146], align 16
@x_tune_dvbt_demod_setting.bw7_mrc_b = internal constant [5 x i32] [i32 62, i32 56, i32 0, i32 186, i32 170], align 16
@x_tune_dvbt_demod_setting.bw7_mrc_c = internal constant [5 x i32] [i32 64, i32 0, i32 0, i32 192, i32 0], align 16
@x_tune_dvbt_demod_setting.bw7_notch = internal constant [4 x i32] [i32 184, i32 0, i32 0, i32 3], align 16
@x_tune_dvbt_demod_setting.bw6_nomi_ac = internal constant [5 x i32] [i32 28, i32 0, i32 0, i32 0, i32 0], align 16
@x_tune_dvbt_demod_setting.bw6_nomi_b = internal constant [5 x i32] [i32 27, i32 56, i32 227, i32 142, i32 56], align 16
@x_tune_dvbt_demod_setting.bw6_gtdofst_a = internal constant [2 x i32] [i32 31, i32 248], align 4
@x_tune_dvbt_demod_setting.bw6_gtdofst_b = internal constant [2 x i32] [i32 36, i32 67], align 4
@x_tune_dvbt_demod_setting.bw6_gtdofst_c = internal constant [2 x i32] [i32 37, i32 76], align 4
@x_tune_dvbt_demod_setting.bw6_mrc_a = internal constant [5 x i32] [i32 64, i32 0, i32 0, i32 192, i32 0], align 16
@x_tune_dvbt_demod_setting.bw6_mrc_b = internal constant [5 x i32] [i32 72, i32 151, i32 0, i32 217, i32 199], align 16
@x_tune_dvbt_demod_setting.bw6_mrc_c = internal constant [5 x i32] [i32 74, i32 170, i32 0, i32 223, i32 255], align 16
@x_tune_dvbt_demod_setting.bw6_notch = internal constant [4 x i32] [i32 190, i32 171, i32 0, i32 3], align 16
@x_tune_dvbt_demod_setting.bw5_nomi_ac = internal constant [5 x i32] [i32 33, i32 153, i32 153, i32 153, i32 153], align 16
@x_tune_dvbt_demod_setting.bw5_nomi_b = internal constant [5 x i32] [i32 32, i32 170, i32 170, i32 170, i32 170], align 16
@x_tune_dvbt_demod_setting.bw5_gtdofst_a = internal constant [2 x i32] [i32 38, i32 93], align 4
@x_tune_dvbt_demod_setting.bw5_gtdofst_b = internal constant [2 x i32] [i32 43, i32 132], align 4
@x_tune_dvbt_demod_setting.bw5_gtdofst_c = internal constant [2 x i32] [i32 44, i32 194], align 4
@x_tune_dvbt_demod_setting.bw5_mrc_a = internal constant [5 x i32] [i32 76, i32 204, i32 0, i32 230, i32 102], align 16
@x_tune_dvbt_demod_setting.bw5_mrc_b = internal constant [5 x i32] [i32 87, i32 28, i32 1, i32 5, i32 85], align 16
@x_tune_dvbt_demod_setting.bw5_mrc_c = internal constant [5 x i32] [i32 89, i32 153, i32 1, i32 12, i32 204], align 16
@x_tune_dvbt_demod_setting.bw5_notch = internal constant [4 x i32] [i32 200, i32 1, i32 0, i32 3], align 16
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@tune_dmd_setting_seq1 = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@__const.x_tune_dvbt_demod_setting.data = private unnamed_addr constant [2 x i32] [i32 1, i32 1], align 4
@tune_dmd_setting_seq2 = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@tune_dmd_setting_seq3 = common dso_local global i32 0, align 4
@tune_dmd_setting_seq4 = common dso_local global i32 0, align 4
@tune_dmd_setting_seq5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32, i32)* @x_tune_dvbt_demod_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x_tune_dvbt_demod_setting(%struct.cxd2880_tnrdmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %12 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %13 = icmp ne %struct.cxd2880_tnrdmd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %932

17:                                               ; preds = %3
  %18 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_43__*, %struct.TYPE_43__** %19, align 8
  %21 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %22 = load i32, i32* @tune_dmd_setting_seq1, align 4
  %23 = load i32, i32* @tune_dmd_setting_seq1, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_43__* %20, i32 %21, i32 %22, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %932

30:                                               ; preds = %17
  %31 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %31, i32 0, i32 1
  %33 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %34, align 8
  %36 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %37 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %36, i32 0, i32 1
  %38 = load %struct.TYPE_43__*, %struct.TYPE_43__** %37, align 8
  %39 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %40 = call i32 %35(%struct.TYPE_43__* %38, i32 %39, i32 0, i32 4)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %932

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %50 [
    i32 130, label %47
    i32 129, label %48
    i32 128, label %49
  ]

47:                                               ; preds = %45
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.clk_mode_ckffrq_a, i64 0, i64 0), i32** %8, align 8
  br label %53

48:                                               ; preds = %45
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.clk_mode_ckffrq_b, i64 0, i64 0), i32** %8, align 8
  br label %53

49:                                               ; preds = %45
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.clk_mode_ckffrq_c, i64 0, i64 0), i32** %8, align 8
  br label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %932

53:                                               ; preds = %49, %48, %47
  %54 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %54, i32 0, i32 1
  %56 = load %struct.TYPE_43__*, %struct.TYPE_43__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %56, i32 0, i32 1
  %58 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %57, align 8
  %59 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %60 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %59, i32 0, i32 1
  %61 = load %struct.TYPE_43__*, %struct.TYPE_43__** %60, align 8
  %62 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 %58(%struct.TYPE_43__* %61, i32 %62, i32 101, i32* %63, i32 2)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %932

69:                                               ; preds = %53
  %70 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %71 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %70, i32 0, i32 1
  %72 = load %struct.TYPE_43__*, %struct.TYPE_43__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %73, align 8
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %76 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %75, i32 0, i32 1
  %77 = load %struct.TYPE_43__*, %struct.TYPE_43__** %76, align 8
  %78 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %79 = call i32 %74(%struct.TYPE_43__* %77, i32 %78, i32 93, i32 7)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %932

84:                                               ; preds = %69
  %85 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %86 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %84
  %91 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 bitcast ([2 x i32]* @__const.x_tune_dvbt_demod_setting.data to i8*), i64 8, i1 false)
  %92 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %93 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %92, i32 0, i32 1
  %94 = load %struct.TYPE_43__*, %struct.TYPE_43__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %95, align 8
  %97 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %98 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %97, i32 0, i32 1
  %99 = load %struct.TYPE_43__*, %struct.TYPE_43__** %98, align 8
  %100 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %101 = call i32 %96(%struct.TYPE_43__* %99, i32 %100, i32 0, i32 0)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %932

106:                                              ; preds = %90
  %107 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %108 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %107, i32 0, i32 1
  %109 = load %struct.TYPE_43__*, %struct.TYPE_43__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %109, i32 0, i32 1
  %111 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %110, align 8
  %112 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %113 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %112, i32 0, i32 1
  %114 = load %struct.TYPE_43__*, %struct.TYPE_43__** %113, align 8
  %115 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %117 = call i32 %111(%struct.TYPE_43__* %114, i32 %115, i32 206, i32* %116, i32 2)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %106
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %4, align 4
  br label %932

122:                                              ; preds = %106
  br label %123

123:                                              ; preds = %122, %84
  %124 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %125 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %124, i32 0, i32 1
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** %125, align 8
  %127 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %128 = load i32, i32* @tune_dmd_setting_seq2, align 4
  %129 = load i32, i32* @tune_dmd_setting_seq2, align 4
  %130 = call i32 @ARRAY_SIZE(i32 %129)
  %131 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_43__* %126, i32 %127, i32 %128, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %4, align 4
  br label %932

136:                                              ; preds = %123
  %137 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %138 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %137, i32 0, i32 1
  %139 = load %struct.TYPE_43__*, %struct.TYPE_43__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %139, i32 0, i32 1
  %141 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %140, align 8
  %142 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %143 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %142, i32 0, i32 1
  %144 = load %struct.TYPE_43__*, %struct.TYPE_43__** %143, align 8
  %145 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %146 = call i32 %141(%struct.TYPE_43__* %144, i32 %145, i32 240, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.ratectl_margin, i64 0, i64 0), i32 2)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %136
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %4, align 4
  br label %932

151:                                              ; preds = %136
  %152 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %153 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %159 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %157, %151
  %164 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %165 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %164, i32 0, i32 1
  %166 = load %struct.TYPE_43__*, %struct.TYPE_43__** %165, align 8
  %167 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %168 = load i32, i32* @tune_dmd_setting_seq3, align 4
  %169 = load i32, i32* @tune_dmd_setting_seq3, align 4
  %170 = call i32 @ARRAY_SIZE(i32 %169)
  %171 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_43__* %166, i32 %167, i32 %168, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %4, align 4
  br label %932

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176, %157
  %178 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %179 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %177
  %184 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %185 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %184, i32 0, i32 1
  %186 = load %struct.TYPE_43__*, %struct.TYPE_43__** %185, align 8
  %187 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %188 = load i32, i32* @tune_dmd_setting_seq4, align 4
  %189 = load i32, i32* @tune_dmd_setting_seq4, align 4
  %190 = call i32 @ARRAY_SIZE(i32 %189)
  %191 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_43__* %186, i32 %187, i32 %188, i32 %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %4, align 4
  br label %932

196:                                              ; preds = %183
  br label %197

197:                                              ; preds = %196, %177
  %198 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %199 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %243

203:                                              ; preds = %197
  %204 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %205 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %204, i32 0, i32 1
  %206 = load %struct.TYPE_43__*, %struct.TYPE_43__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %206, i32 0, i32 0
  %208 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %207, align 8
  %209 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %210 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %209, i32 0, i32 1
  %211 = load %struct.TYPE_43__*, %struct.TYPE_43__** %210, align 8
  %212 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %213 = call i32 %208(%struct.TYPE_43__* %211, i32 %212, i32 0, i32 4)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %203
  %217 = load i32, i32* %10, align 4
  store i32 %217, i32* %4, align 4
  br label %932

218:                                              ; preds = %203
  %219 = load i32, i32* %7, align 4
  switch i32 %219, label %223 [
    i32 130, label %220
    i32 129, label %221
    i32 128, label %222
  ]

220:                                              ; preds = %218
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @x_tune_dvbt_demod_setting.maxclkcnt_a, i64 0, i64 0), i32** %8, align 8
  br label %226

221:                                              ; preds = %218
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @x_tune_dvbt_demod_setting.maxclkcnt_b, i64 0, i64 0), i32** %8, align 8
  br label %226

222:                                              ; preds = %218
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @x_tune_dvbt_demod_setting.maxclkcnt_c, i64 0, i64 0), i32** %8, align 8
  br label %226

223:                                              ; preds = %218
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %4, align 4
  br label %932

226:                                              ; preds = %222, %221, %220
  %227 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %228 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %227, i32 0, i32 1
  %229 = load %struct.TYPE_43__*, %struct.TYPE_43__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %229, i32 0, i32 1
  %231 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %230, align 8
  %232 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %233 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %232, i32 0, i32 1
  %234 = load %struct.TYPE_43__*, %struct.TYPE_43__** %233, align 8
  %235 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %236 = load i32*, i32** %8, align 8
  %237 = call i32 %231(%struct.TYPE_43__* %234, i32 %235, i32 104, i32* %236, i32 3)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %226
  %241 = load i32, i32* %10, align 4
  store i32 %241, i32* %4, align 4
  br label %932

242:                                              ; preds = %226
  br label %243

243:                                              ; preds = %242, %197
  %244 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %245 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %244, i32 0, i32 1
  %246 = load %struct.TYPE_43__*, %struct.TYPE_43__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %246, i32 0, i32 0
  %248 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %247, align 8
  %249 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %250 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %249, i32 0, i32 1
  %251 = load %struct.TYPE_43__*, %struct.TYPE_43__** %250, align 8
  %252 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %253 = call i32 %248(%struct.TYPE_43__* %251, i32 %252, i32 0, i32 4)
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %243
  %257 = load i32, i32* %10, align 4
  store i32 %257, i32* %4, align 4
  br label %932

258:                                              ; preds = %243
  %259 = load i32, i32* %6, align 4
  switch i32 %259, label %920 [
    i32 131, label %260
    i32 132, label %425
    i32 133, label %590
    i32 134, label %755
  ]

260:                                              ; preds = %258
  %261 = load i32, i32* %7, align 4
  switch i32 %261, label %264 [
    i32 130, label %262
    i32 128, label %262
    i32 129, label %263
  ]

262:                                              ; preds = %260, %260
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw8_nomi_ac, i64 0, i64 0), i32** %8, align 8
  br label %267

263:                                              ; preds = %260
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw8_nomi_b, i64 0, i64 0), i32** %8, align 8
  br label %267

264:                                              ; preds = %260
  %265 = load i32, i32* @EINVAL, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %4, align 4
  br label %932

267:                                              ; preds = %263, %262
  %268 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %269 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %268, i32 0, i32 1
  %270 = load %struct.TYPE_43__*, %struct.TYPE_43__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %270, i32 0, i32 1
  %272 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %271, align 8
  %273 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %274 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %273, i32 0, i32 1
  %275 = load %struct.TYPE_43__*, %struct.TYPE_43__** %274, align 8
  %276 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %277 = load i32*, i32** %8, align 8
  %278 = call i32 %272(%struct.TYPE_43__* %275, i32 %276, i32 96, i32* %277, i32 5)
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %10, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %267
  %282 = load i32, i32* %10, align 4
  store i32 %282, i32* %4, align 4
  br label %932

283:                                              ; preds = %267
  %284 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %285 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %284, i32 0, i32 1
  %286 = load %struct.TYPE_43__*, %struct.TYPE_43__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %286, i32 0, i32 0
  %288 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %287, align 8
  %289 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %290 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %289, i32 0, i32 1
  %291 = load %struct.TYPE_43__*, %struct.TYPE_43__** %290, align 8
  %292 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %293 = call i32 %288(%struct.TYPE_43__* %291, i32 %292, i32 74, i32 0)
  store i32 %293, i32* %10, align 4
  %294 = load i32, i32* %10, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %283
  %297 = load i32, i32* %10, align 4
  store i32 %297, i32* %4, align 4
  br label %932

298:                                              ; preds = %283
  %299 = load i32, i32* %7, align 4
  switch i32 %299, label %303 [
    i32 130, label %300
    i32 129, label %301
    i32 128, label %302
  ]

300:                                              ; preds = %298
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw8_gtdofst_a, i64 0, i64 0), i32** %8, align 8
  br label %306

301:                                              ; preds = %298
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw8_gtdofst_b, i64 0, i64 0), i32** %8, align 8
  br label %306

302:                                              ; preds = %298
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw8_gtdofst_c, i64 0, i64 0), i32** %8, align 8
  br label %306

303:                                              ; preds = %298
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %4, align 4
  br label %932

306:                                              ; preds = %302, %301, %300
  %307 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %308 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %307, i32 0, i32 1
  %309 = load %struct.TYPE_43__*, %struct.TYPE_43__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %309, i32 0, i32 1
  %311 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %310, align 8
  %312 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %313 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %312, i32 0, i32 1
  %314 = load %struct.TYPE_43__*, %struct.TYPE_43__** %313, align 8
  %315 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %316 = load i32*, i32** %8, align 8
  %317 = call i32 %311(%struct.TYPE_43__* %314, i32 %315, i32 125, i32* %316, i32 2)
  store i32 %317, i32* %10, align 4
  %318 = load i32, i32* %10, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %306
  %321 = load i32, i32* %10, align 4
  store i32 %321, i32* %4, align 4
  br label %932

322:                                              ; preds = %306
  %323 = load i32, i32* %7, align 4
  switch i32 %323, label %326 [
    i32 130, label %324
    i32 129, label %324
    i32 128, label %325
  ]

324:                                              ; preds = %322, %322
  store i32 53, i32* %9, align 4
  br label %329

325:                                              ; preds = %322
  store i32 52, i32* %9, align 4
  br label %329

326:                                              ; preds = %322
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %4, align 4
  br label %932

329:                                              ; preds = %325, %324
  %330 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %331 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %330, i32 0, i32 1
  %332 = load %struct.TYPE_43__*, %struct.TYPE_43__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %332, i32 0, i32 0
  %334 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %333, align 8
  %335 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %336 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %335, i32 0, i32 1
  %337 = load %struct.TYPE_43__*, %struct.TYPE_43__** %336, align 8
  %338 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %339 = load i32, i32* %9, align 4
  %340 = call i32 %334(%struct.TYPE_43__* %337, i32 %338, i32 113, i32 %339)
  store i32 %340, i32* %10, align 4
  %341 = load i32, i32* %10, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %329
  %344 = load i32, i32* %10, align 4
  store i32 %344, i32* %4, align 4
  br label %932

345:                                              ; preds = %329
  %346 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %347 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %394

351:                                              ; preds = %345
  %352 = load i32, i32* %7, align 4
  switch i32 %352, label %356 [
    i32 130, label %353
    i32 129, label %354
    i32 128, label %355
  ]

353:                                              ; preds = %351
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw8_mrc_a, i64 0, i64 0), i32** %8, align 8
  br label %359

354:                                              ; preds = %351
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw8_mrc_b, i64 0, i64 0), i32** %8, align 8
  br label %359

355:                                              ; preds = %351
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw8_mrc_c, i64 0, i64 0), i32** %8, align 8
  br label %359

356:                                              ; preds = %351
  %357 = load i32, i32* @EINVAL, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %4, align 4
  br label %932

359:                                              ; preds = %355, %354, %353
  %360 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %361 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %360, i32 0, i32 1
  %362 = load %struct.TYPE_43__*, %struct.TYPE_43__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %362, i32 0, i32 1
  %364 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %363, align 8
  %365 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %366 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %365, i32 0, i32 1
  %367 = load %struct.TYPE_43__*, %struct.TYPE_43__** %366, align 8
  %368 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %369 = load i32*, i32** %8, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = call i32 %364(%struct.TYPE_43__* %367, i32 %368, i32 75, i32* %370, i32 2)
  store i32 %371, i32* %10, align 4
  %372 = load i32, i32* %10, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %359
  %375 = load i32, i32* %10, align 4
  store i32 %375, i32* %4, align 4
  br label %932

376:                                              ; preds = %359
  %377 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %378 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %377, i32 0, i32 1
  %379 = load %struct.TYPE_43__*, %struct.TYPE_43__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %379, i32 0, i32 1
  %381 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %380, align 8
  %382 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %383 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %382, i32 0, i32 1
  %384 = load %struct.TYPE_43__*, %struct.TYPE_43__** %383, align 8
  %385 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %386 = load i32*, i32** %8, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 2
  %388 = call i32 %381(%struct.TYPE_43__* %384, i32 %385, i32 81, i32* %387, i32 3)
  store i32 %388, i32* %10, align 4
  %389 = load i32, i32* %10, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %376
  %392 = load i32, i32* %10, align 4
  store i32 %392, i32* %4, align 4
  br label %932

393:                                              ; preds = %376
  br label %394

394:                                              ; preds = %393, %345
  %395 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %396 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %395, i32 0, i32 1
  %397 = load %struct.TYPE_43__*, %struct.TYPE_43__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %397, i32 0, i32 1
  %399 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %398, align 8
  %400 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %401 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %400, i32 0, i32 1
  %402 = load %struct.TYPE_43__*, %struct.TYPE_43__** %401, align 8
  %403 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %404 = call i32 %399(%struct.TYPE_43__* %402, i32 %403, i32 114, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @x_tune_dvbt_demod_setting.bw8_notch, i64 0, i64 0), i32 2)
  store i32 %404, i32* %10, align 4
  %405 = load i32, i32* %10, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %394
  %408 = load i32, i32* %10, align 4
  store i32 %408, i32* %4, align 4
  br label %932

409:                                              ; preds = %394
  %410 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %411 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %410, i32 0, i32 1
  %412 = load %struct.TYPE_43__*, %struct.TYPE_43__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %412, i32 0, i32 1
  %414 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %413, align 8
  %415 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %416 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %415, i32 0, i32 1
  %417 = load %struct.TYPE_43__*, %struct.TYPE_43__** %416, align 8
  %418 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %419 = call i32 %414(%struct.TYPE_43__* %417, i32 %418, i32 107, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @x_tune_dvbt_demod_setting.bw8_notch, i64 0, i64 2), i32 2)
  store i32 %419, i32* %10, align 4
  %420 = load i32, i32* %10, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %409
  %423 = load i32, i32* %10, align 4
  store i32 %423, i32* %4, align 4
  br label %932

424:                                              ; preds = %409
  br label %923

425:                                              ; preds = %258
  %426 = load i32, i32* %7, align 4
  switch i32 %426, label %429 [
    i32 130, label %427
    i32 128, label %427
    i32 129, label %428
  ]

427:                                              ; preds = %425, %425
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw7_nomi_ac, i64 0, i64 0), i32** %8, align 8
  br label %432

428:                                              ; preds = %425
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw7_nomi_b, i64 0, i64 0), i32** %8, align 8
  br label %432

429:                                              ; preds = %425
  %430 = load i32, i32* @EINVAL, align 4
  %431 = sub nsw i32 0, %430
  store i32 %431, i32* %4, align 4
  br label %932

432:                                              ; preds = %428, %427
  %433 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %434 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %433, i32 0, i32 1
  %435 = load %struct.TYPE_43__*, %struct.TYPE_43__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %435, i32 0, i32 1
  %437 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %436, align 8
  %438 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %439 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %438, i32 0, i32 1
  %440 = load %struct.TYPE_43__*, %struct.TYPE_43__** %439, align 8
  %441 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %442 = load i32*, i32** %8, align 8
  %443 = call i32 %437(%struct.TYPE_43__* %440, i32 %441, i32 96, i32* %442, i32 5)
  store i32 %443, i32* %10, align 4
  %444 = load i32, i32* %10, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %448

446:                                              ; preds = %432
  %447 = load i32, i32* %10, align 4
  store i32 %447, i32* %4, align 4
  br label %932

448:                                              ; preds = %432
  %449 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %450 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %449, i32 0, i32 1
  %451 = load %struct.TYPE_43__*, %struct.TYPE_43__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %451, i32 0, i32 0
  %453 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %452, align 8
  %454 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %455 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %454, i32 0, i32 1
  %456 = load %struct.TYPE_43__*, %struct.TYPE_43__** %455, align 8
  %457 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %458 = call i32 %453(%struct.TYPE_43__* %456, i32 %457, i32 74, i32 2)
  store i32 %458, i32* %10, align 4
  %459 = load i32, i32* %10, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %463

461:                                              ; preds = %448
  %462 = load i32, i32* %10, align 4
  store i32 %462, i32* %4, align 4
  br label %932

463:                                              ; preds = %448
  %464 = load i32, i32* %7, align 4
  switch i32 %464, label %468 [
    i32 130, label %465
    i32 129, label %466
    i32 128, label %467
  ]

465:                                              ; preds = %463
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw7_gtdofst_a, i64 0, i64 0), i32** %8, align 8
  br label %471

466:                                              ; preds = %463
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw7_gtdofst_b, i64 0, i64 0), i32** %8, align 8
  br label %471

467:                                              ; preds = %463
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw7_gtdofst_c, i64 0, i64 0), i32** %8, align 8
  br label %471

468:                                              ; preds = %463
  %469 = load i32, i32* @EINVAL, align 4
  %470 = sub nsw i32 0, %469
  store i32 %470, i32* %4, align 4
  br label %932

471:                                              ; preds = %467, %466, %465
  %472 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %473 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %472, i32 0, i32 1
  %474 = load %struct.TYPE_43__*, %struct.TYPE_43__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %474, i32 0, i32 1
  %476 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %475, align 8
  %477 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %478 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %477, i32 0, i32 1
  %479 = load %struct.TYPE_43__*, %struct.TYPE_43__** %478, align 8
  %480 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %481 = load i32*, i32** %8, align 8
  %482 = call i32 %476(%struct.TYPE_43__* %479, i32 %480, i32 125, i32* %481, i32 2)
  store i32 %482, i32* %10, align 4
  %483 = load i32, i32* %10, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %471
  %486 = load i32, i32* %10, align 4
  store i32 %486, i32* %4, align 4
  br label %932

487:                                              ; preds = %471
  %488 = load i32, i32* %7, align 4
  switch i32 %488, label %491 [
    i32 130, label %489
    i32 129, label %489
    i32 128, label %490
  ]

489:                                              ; preds = %487, %487
  store i32 47, i32* %9, align 4
  br label %494

490:                                              ; preds = %487
  store i32 46, i32* %9, align 4
  br label %494

491:                                              ; preds = %487
  %492 = load i32, i32* @EINVAL, align 4
  %493 = sub nsw i32 0, %492
  store i32 %493, i32* %4, align 4
  br label %932

494:                                              ; preds = %490, %489
  %495 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %496 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %495, i32 0, i32 1
  %497 = load %struct.TYPE_43__*, %struct.TYPE_43__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %497, i32 0, i32 0
  %499 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %498, align 8
  %500 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %501 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %500, i32 0, i32 1
  %502 = load %struct.TYPE_43__*, %struct.TYPE_43__** %501, align 8
  %503 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %504 = load i32, i32* %9, align 4
  %505 = call i32 %499(%struct.TYPE_43__* %502, i32 %503, i32 113, i32 %504)
  store i32 %505, i32* %10, align 4
  %506 = load i32, i32* %10, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %494
  %509 = load i32, i32* %10, align 4
  store i32 %509, i32* %4, align 4
  br label %932

510:                                              ; preds = %494
  %511 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %512 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %515 = icmp eq i64 %513, %514
  br i1 %515, label %516, label %559

516:                                              ; preds = %510
  %517 = load i32, i32* %7, align 4
  switch i32 %517, label %521 [
    i32 130, label %518
    i32 129, label %519
    i32 128, label %520
  ]

518:                                              ; preds = %516
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw7_mrc_a, i64 0, i64 0), i32** %8, align 8
  br label %524

519:                                              ; preds = %516
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw7_mrc_b, i64 0, i64 0), i32** %8, align 8
  br label %524

520:                                              ; preds = %516
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw7_mrc_c, i64 0, i64 0), i32** %8, align 8
  br label %524

521:                                              ; preds = %516
  %522 = load i32, i32* @EINVAL, align 4
  %523 = sub nsw i32 0, %522
  store i32 %523, i32* %4, align 4
  br label %932

524:                                              ; preds = %520, %519, %518
  %525 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %526 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %525, i32 0, i32 1
  %527 = load %struct.TYPE_43__*, %struct.TYPE_43__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %527, i32 0, i32 1
  %529 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %528, align 8
  %530 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %531 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %530, i32 0, i32 1
  %532 = load %struct.TYPE_43__*, %struct.TYPE_43__** %531, align 8
  %533 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %534 = load i32*, i32** %8, align 8
  %535 = getelementptr inbounds i32, i32* %534, i64 0
  %536 = call i32 %529(%struct.TYPE_43__* %532, i32 %533, i32 75, i32* %535, i32 2)
  store i32 %536, i32* %10, align 4
  %537 = load i32, i32* %10, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %541

539:                                              ; preds = %524
  %540 = load i32, i32* %10, align 4
  store i32 %540, i32* %4, align 4
  br label %932

541:                                              ; preds = %524
  %542 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %543 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %542, i32 0, i32 1
  %544 = load %struct.TYPE_43__*, %struct.TYPE_43__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %544, i32 0, i32 1
  %546 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %545, align 8
  %547 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %548 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %547, i32 0, i32 1
  %549 = load %struct.TYPE_43__*, %struct.TYPE_43__** %548, align 8
  %550 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %551 = load i32*, i32** %8, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 2
  %553 = call i32 %546(%struct.TYPE_43__* %549, i32 %550, i32 81, i32* %552, i32 3)
  store i32 %553, i32* %10, align 4
  %554 = load i32, i32* %10, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %558

556:                                              ; preds = %541
  %557 = load i32, i32* %10, align 4
  store i32 %557, i32* %4, align 4
  br label %932

558:                                              ; preds = %541
  br label %559

559:                                              ; preds = %558, %510
  %560 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %561 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %560, i32 0, i32 1
  %562 = load %struct.TYPE_43__*, %struct.TYPE_43__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %562, i32 0, i32 1
  %564 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %563, align 8
  %565 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %566 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %565, i32 0, i32 1
  %567 = load %struct.TYPE_43__*, %struct.TYPE_43__** %566, align 8
  %568 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %569 = call i32 %564(%struct.TYPE_43__* %567, i32 %568, i32 114, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @x_tune_dvbt_demod_setting.bw7_notch, i64 0, i64 0), i32 2)
  store i32 %569, i32* %10, align 4
  %570 = load i32, i32* %10, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %559
  %573 = load i32, i32* %10, align 4
  store i32 %573, i32* %4, align 4
  br label %932

574:                                              ; preds = %559
  %575 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %576 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %575, i32 0, i32 1
  %577 = load %struct.TYPE_43__*, %struct.TYPE_43__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %577, i32 0, i32 1
  %579 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %578, align 8
  %580 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %581 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %580, i32 0, i32 1
  %582 = load %struct.TYPE_43__*, %struct.TYPE_43__** %581, align 8
  %583 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %584 = call i32 %579(%struct.TYPE_43__* %582, i32 %583, i32 107, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @x_tune_dvbt_demod_setting.bw7_notch, i64 0, i64 2), i32 2)
  store i32 %584, i32* %10, align 4
  %585 = load i32, i32* %10, align 4
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %574
  %588 = load i32, i32* %10, align 4
  store i32 %588, i32* %4, align 4
  br label %932

589:                                              ; preds = %574
  br label %923

590:                                              ; preds = %258
  %591 = load i32, i32* %7, align 4
  switch i32 %591, label %594 [
    i32 130, label %592
    i32 128, label %592
    i32 129, label %593
  ]

592:                                              ; preds = %590, %590
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw6_nomi_ac, i64 0, i64 0), i32** %8, align 8
  br label %597

593:                                              ; preds = %590
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw6_nomi_b, i64 0, i64 0), i32** %8, align 8
  br label %597

594:                                              ; preds = %590
  %595 = load i32, i32* @EINVAL, align 4
  %596 = sub nsw i32 0, %595
  store i32 %596, i32* %4, align 4
  br label %932

597:                                              ; preds = %593, %592
  %598 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %599 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %598, i32 0, i32 1
  %600 = load %struct.TYPE_43__*, %struct.TYPE_43__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %600, i32 0, i32 1
  %602 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %601, align 8
  %603 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %604 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %603, i32 0, i32 1
  %605 = load %struct.TYPE_43__*, %struct.TYPE_43__** %604, align 8
  %606 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %607 = load i32*, i32** %8, align 8
  %608 = call i32 %602(%struct.TYPE_43__* %605, i32 %606, i32 96, i32* %607, i32 5)
  store i32 %608, i32* %10, align 4
  %609 = load i32, i32* %10, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %613

611:                                              ; preds = %597
  %612 = load i32, i32* %10, align 4
  store i32 %612, i32* %4, align 4
  br label %932

613:                                              ; preds = %597
  %614 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %615 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %614, i32 0, i32 1
  %616 = load %struct.TYPE_43__*, %struct.TYPE_43__** %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %616, i32 0, i32 0
  %618 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %617, align 8
  %619 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %620 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %619, i32 0, i32 1
  %621 = load %struct.TYPE_43__*, %struct.TYPE_43__** %620, align 8
  %622 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %623 = call i32 %618(%struct.TYPE_43__* %621, i32 %622, i32 74, i32 4)
  store i32 %623, i32* %10, align 4
  %624 = load i32, i32* %10, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %628

626:                                              ; preds = %613
  %627 = load i32, i32* %10, align 4
  store i32 %627, i32* %4, align 4
  br label %932

628:                                              ; preds = %613
  %629 = load i32, i32* %7, align 4
  switch i32 %629, label %633 [
    i32 130, label %630
    i32 129, label %631
    i32 128, label %632
  ]

630:                                              ; preds = %628
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw6_gtdofst_a, i64 0, i64 0), i32** %8, align 8
  br label %636

631:                                              ; preds = %628
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw6_gtdofst_b, i64 0, i64 0), i32** %8, align 8
  br label %636

632:                                              ; preds = %628
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw6_gtdofst_c, i64 0, i64 0), i32** %8, align 8
  br label %636

633:                                              ; preds = %628
  %634 = load i32, i32* @EINVAL, align 4
  %635 = sub nsw i32 0, %634
  store i32 %635, i32* %4, align 4
  br label %932

636:                                              ; preds = %632, %631, %630
  %637 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %638 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %637, i32 0, i32 1
  %639 = load %struct.TYPE_43__*, %struct.TYPE_43__** %638, align 8
  %640 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %639, i32 0, i32 1
  %641 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %640, align 8
  %642 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %643 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %642, i32 0, i32 1
  %644 = load %struct.TYPE_43__*, %struct.TYPE_43__** %643, align 8
  %645 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %646 = load i32*, i32** %8, align 8
  %647 = call i32 %641(%struct.TYPE_43__* %644, i32 %645, i32 125, i32* %646, i32 2)
  store i32 %647, i32* %10, align 4
  %648 = load i32, i32* %10, align 4
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %652

650:                                              ; preds = %636
  %651 = load i32, i32* %10, align 4
  store i32 %651, i32* %4, align 4
  br label %932

652:                                              ; preds = %636
  %653 = load i32, i32* %7, align 4
  switch i32 %653, label %656 [
    i32 130, label %654
    i32 128, label %654
    i32 129, label %655
  ]

654:                                              ; preds = %652, %652
  store i32 41, i32* %9, align 4
  br label %659

655:                                              ; preds = %652
  store i32 42, i32* %9, align 4
  br label %659

656:                                              ; preds = %652
  %657 = load i32, i32* @EINVAL, align 4
  %658 = sub nsw i32 0, %657
  store i32 %658, i32* %4, align 4
  br label %932

659:                                              ; preds = %655, %654
  %660 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %661 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %660, i32 0, i32 1
  %662 = load %struct.TYPE_43__*, %struct.TYPE_43__** %661, align 8
  %663 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %662, i32 0, i32 0
  %664 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %663, align 8
  %665 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %666 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %665, i32 0, i32 1
  %667 = load %struct.TYPE_43__*, %struct.TYPE_43__** %666, align 8
  %668 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %669 = load i32, i32* %9, align 4
  %670 = call i32 %664(%struct.TYPE_43__* %667, i32 %668, i32 113, i32 %669)
  store i32 %670, i32* %10, align 4
  %671 = load i32, i32* %10, align 4
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %675

673:                                              ; preds = %659
  %674 = load i32, i32* %10, align 4
  store i32 %674, i32* %4, align 4
  br label %932

675:                                              ; preds = %659
  %676 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %677 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %676, i32 0, i32 0
  %678 = load i64, i64* %677, align 8
  %679 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %680 = icmp eq i64 %678, %679
  br i1 %680, label %681, label %724

681:                                              ; preds = %675
  %682 = load i32, i32* %7, align 4
  switch i32 %682, label %686 [
    i32 130, label %683
    i32 129, label %684
    i32 128, label %685
  ]

683:                                              ; preds = %681
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw6_mrc_a, i64 0, i64 0), i32** %8, align 8
  br label %689

684:                                              ; preds = %681
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw6_mrc_b, i64 0, i64 0), i32** %8, align 8
  br label %689

685:                                              ; preds = %681
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw6_mrc_c, i64 0, i64 0), i32** %8, align 8
  br label %689

686:                                              ; preds = %681
  %687 = load i32, i32* @EINVAL, align 4
  %688 = sub nsw i32 0, %687
  store i32 %688, i32* %4, align 4
  br label %932

689:                                              ; preds = %685, %684, %683
  %690 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %691 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %690, i32 0, i32 1
  %692 = load %struct.TYPE_43__*, %struct.TYPE_43__** %691, align 8
  %693 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %692, i32 0, i32 1
  %694 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %693, align 8
  %695 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %696 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %695, i32 0, i32 1
  %697 = load %struct.TYPE_43__*, %struct.TYPE_43__** %696, align 8
  %698 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %699 = load i32*, i32** %8, align 8
  %700 = getelementptr inbounds i32, i32* %699, i64 0
  %701 = call i32 %694(%struct.TYPE_43__* %697, i32 %698, i32 75, i32* %700, i32 2)
  store i32 %701, i32* %10, align 4
  %702 = load i32, i32* %10, align 4
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %706

704:                                              ; preds = %689
  %705 = load i32, i32* %10, align 4
  store i32 %705, i32* %4, align 4
  br label %932

706:                                              ; preds = %689
  %707 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %708 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %707, i32 0, i32 1
  %709 = load %struct.TYPE_43__*, %struct.TYPE_43__** %708, align 8
  %710 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %709, i32 0, i32 1
  %711 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %710, align 8
  %712 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %713 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %712, i32 0, i32 1
  %714 = load %struct.TYPE_43__*, %struct.TYPE_43__** %713, align 8
  %715 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %716 = load i32*, i32** %8, align 8
  %717 = getelementptr inbounds i32, i32* %716, i64 2
  %718 = call i32 %711(%struct.TYPE_43__* %714, i32 %715, i32 81, i32* %717, i32 3)
  store i32 %718, i32* %10, align 4
  %719 = load i32, i32* %10, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %723

721:                                              ; preds = %706
  %722 = load i32, i32* %10, align 4
  store i32 %722, i32* %4, align 4
  br label %932

723:                                              ; preds = %706
  br label %724

724:                                              ; preds = %723, %675
  %725 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %726 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %725, i32 0, i32 1
  %727 = load %struct.TYPE_43__*, %struct.TYPE_43__** %726, align 8
  %728 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %727, i32 0, i32 1
  %729 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %728, align 8
  %730 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %731 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %730, i32 0, i32 1
  %732 = load %struct.TYPE_43__*, %struct.TYPE_43__** %731, align 8
  %733 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %734 = call i32 %729(%struct.TYPE_43__* %732, i32 %733, i32 114, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @x_tune_dvbt_demod_setting.bw6_notch, i64 0, i64 0), i32 2)
  store i32 %734, i32* %10, align 4
  %735 = load i32, i32* %10, align 4
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %739

737:                                              ; preds = %724
  %738 = load i32, i32* %10, align 4
  store i32 %738, i32* %4, align 4
  br label %932

739:                                              ; preds = %724
  %740 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %741 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %740, i32 0, i32 1
  %742 = load %struct.TYPE_43__*, %struct.TYPE_43__** %741, align 8
  %743 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %742, i32 0, i32 1
  %744 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %743, align 8
  %745 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %746 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %745, i32 0, i32 1
  %747 = load %struct.TYPE_43__*, %struct.TYPE_43__** %746, align 8
  %748 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %749 = call i32 %744(%struct.TYPE_43__* %747, i32 %748, i32 107, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @x_tune_dvbt_demod_setting.bw6_notch, i64 0, i64 2), i32 2)
  store i32 %749, i32* %10, align 4
  %750 = load i32, i32* %10, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %754

752:                                              ; preds = %739
  %753 = load i32, i32* %10, align 4
  store i32 %753, i32* %4, align 4
  br label %932

754:                                              ; preds = %739
  br label %923

755:                                              ; preds = %258
  %756 = load i32, i32* %7, align 4
  switch i32 %756, label %759 [
    i32 130, label %757
    i32 128, label %757
    i32 129, label %758
  ]

757:                                              ; preds = %755, %755
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw5_nomi_ac, i64 0, i64 0), i32** %8, align 8
  br label %762

758:                                              ; preds = %755
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw5_nomi_b, i64 0, i64 0), i32** %8, align 8
  br label %762

759:                                              ; preds = %755
  %760 = load i32, i32* @EINVAL, align 4
  %761 = sub nsw i32 0, %760
  store i32 %761, i32* %4, align 4
  br label %932

762:                                              ; preds = %758, %757
  %763 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %764 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %763, i32 0, i32 1
  %765 = load %struct.TYPE_43__*, %struct.TYPE_43__** %764, align 8
  %766 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %765, i32 0, i32 1
  %767 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %766, align 8
  %768 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %769 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %768, i32 0, i32 1
  %770 = load %struct.TYPE_43__*, %struct.TYPE_43__** %769, align 8
  %771 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %772 = load i32*, i32** %8, align 8
  %773 = call i32 %767(%struct.TYPE_43__* %770, i32 %771, i32 96, i32* %772, i32 5)
  store i32 %773, i32* %10, align 4
  %774 = load i32, i32* %10, align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %778

776:                                              ; preds = %762
  %777 = load i32, i32* %10, align 4
  store i32 %777, i32* %4, align 4
  br label %932

778:                                              ; preds = %762
  %779 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %780 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %779, i32 0, i32 1
  %781 = load %struct.TYPE_43__*, %struct.TYPE_43__** %780, align 8
  %782 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %781, i32 0, i32 0
  %783 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %782, align 8
  %784 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %785 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %784, i32 0, i32 1
  %786 = load %struct.TYPE_43__*, %struct.TYPE_43__** %785, align 8
  %787 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %788 = call i32 %783(%struct.TYPE_43__* %786, i32 %787, i32 74, i32 6)
  store i32 %788, i32* %10, align 4
  %789 = load i32, i32* %10, align 4
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %791, label %793

791:                                              ; preds = %778
  %792 = load i32, i32* %10, align 4
  store i32 %792, i32* %4, align 4
  br label %932

793:                                              ; preds = %778
  %794 = load i32, i32* %7, align 4
  switch i32 %794, label %798 [
    i32 130, label %795
    i32 129, label %796
    i32 128, label %797
  ]

795:                                              ; preds = %793
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw5_gtdofst_a, i64 0, i64 0), i32** %8, align 8
  br label %801

796:                                              ; preds = %793
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw5_gtdofst_b, i64 0, i64 0), i32** %8, align 8
  br label %801

797:                                              ; preds = %793
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @x_tune_dvbt_demod_setting.bw5_gtdofst_c, i64 0, i64 0), i32** %8, align 8
  br label %801

798:                                              ; preds = %793
  %799 = load i32, i32* @EINVAL, align 4
  %800 = sub nsw i32 0, %799
  store i32 %800, i32* %4, align 4
  br label %932

801:                                              ; preds = %797, %796, %795
  %802 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %803 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %802, i32 0, i32 1
  %804 = load %struct.TYPE_43__*, %struct.TYPE_43__** %803, align 8
  %805 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %804, i32 0, i32 1
  %806 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %805, align 8
  %807 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %808 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %807, i32 0, i32 1
  %809 = load %struct.TYPE_43__*, %struct.TYPE_43__** %808, align 8
  %810 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %811 = load i32*, i32** %8, align 8
  %812 = call i32 %806(%struct.TYPE_43__* %809, i32 %810, i32 125, i32* %811, i32 2)
  store i32 %812, i32* %10, align 4
  %813 = load i32, i32* %10, align 4
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %815, label %817

815:                                              ; preds = %801
  %816 = load i32, i32* %10, align 4
  store i32 %816, i32* %4, align 4
  br label %932

817:                                              ; preds = %801
  %818 = load i32, i32* %7, align 4
  switch i32 %818, label %821 [
    i32 130, label %819
    i32 129, label %819
    i32 128, label %820
  ]

819:                                              ; preds = %817, %817
  store i32 36, i32* %9, align 4
  br label %824

820:                                              ; preds = %817
  store i32 35, i32* %9, align 4
  br label %824

821:                                              ; preds = %817
  %822 = load i32, i32* @EINVAL, align 4
  %823 = sub nsw i32 0, %822
  store i32 %823, i32* %4, align 4
  br label %932

824:                                              ; preds = %820, %819
  %825 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %826 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %825, i32 0, i32 1
  %827 = load %struct.TYPE_43__*, %struct.TYPE_43__** %826, align 8
  %828 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %827, i32 0, i32 0
  %829 = load i32 (%struct.TYPE_43__*, i32, i32, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32)** %828, align 8
  %830 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %831 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %830, i32 0, i32 1
  %832 = load %struct.TYPE_43__*, %struct.TYPE_43__** %831, align 8
  %833 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %834 = load i32, i32* %9, align 4
  %835 = call i32 %829(%struct.TYPE_43__* %832, i32 %833, i32 113, i32 %834)
  store i32 %835, i32* %10, align 4
  %836 = load i32, i32* %10, align 4
  %837 = icmp ne i32 %836, 0
  br i1 %837, label %838, label %840

838:                                              ; preds = %824
  %839 = load i32, i32* %10, align 4
  store i32 %839, i32* %4, align 4
  br label %932

840:                                              ; preds = %824
  %841 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %842 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %841, i32 0, i32 0
  %843 = load i64, i64* %842, align 8
  %844 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %845 = icmp eq i64 %843, %844
  br i1 %845, label %846, label %889

846:                                              ; preds = %840
  %847 = load i32, i32* %7, align 4
  switch i32 %847, label %851 [
    i32 130, label %848
    i32 129, label %849
    i32 128, label %850
  ]

848:                                              ; preds = %846
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw5_mrc_a, i64 0, i64 0), i32** %8, align 8
  br label %854

849:                                              ; preds = %846
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw5_mrc_b, i64 0, i64 0), i32** %8, align 8
  br label %854

850:                                              ; preds = %846
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @x_tune_dvbt_demod_setting.bw5_mrc_c, i64 0, i64 0), i32** %8, align 8
  br label %854

851:                                              ; preds = %846
  %852 = load i32, i32* @EINVAL, align 4
  %853 = sub nsw i32 0, %852
  store i32 %853, i32* %4, align 4
  br label %932

854:                                              ; preds = %850, %849, %848
  %855 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %856 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %855, i32 0, i32 1
  %857 = load %struct.TYPE_43__*, %struct.TYPE_43__** %856, align 8
  %858 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %857, i32 0, i32 1
  %859 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %858, align 8
  %860 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %861 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %860, i32 0, i32 1
  %862 = load %struct.TYPE_43__*, %struct.TYPE_43__** %861, align 8
  %863 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %864 = load i32*, i32** %8, align 8
  %865 = getelementptr inbounds i32, i32* %864, i64 0
  %866 = call i32 %859(%struct.TYPE_43__* %862, i32 %863, i32 75, i32* %865, i32 2)
  store i32 %866, i32* %10, align 4
  %867 = load i32, i32* %10, align 4
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %869, label %871

869:                                              ; preds = %854
  %870 = load i32, i32* %10, align 4
  store i32 %870, i32* %4, align 4
  br label %932

871:                                              ; preds = %854
  %872 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %873 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %872, i32 0, i32 1
  %874 = load %struct.TYPE_43__*, %struct.TYPE_43__** %873, align 8
  %875 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %874, i32 0, i32 1
  %876 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %875, align 8
  %877 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %878 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %877, i32 0, i32 1
  %879 = load %struct.TYPE_43__*, %struct.TYPE_43__** %878, align 8
  %880 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %881 = load i32*, i32** %8, align 8
  %882 = getelementptr inbounds i32, i32* %881, i64 2
  %883 = call i32 %876(%struct.TYPE_43__* %879, i32 %880, i32 81, i32* %882, i32 3)
  store i32 %883, i32* %10, align 4
  %884 = load i32, i32* %10, align 4
  %885 = icmp ne i32 %884, 0
  br i1 %885, label %886, label %888

886:                                              ; preds = %871
  %887 = load i32, i32* %10, align 4
  store i32 %887, i32* %4, align 4
  br label %932

888:                                              ; preds = %871
  br label %889

889:                                              ; preds = %888, %840
  %890 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %891 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %890, i32 0, i32 1
  %892 = load %struct.TYPE_43__*, %struct.TYPE_43__** %891, align 8
  %893 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %892, i32 0, i32 1
  %894 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %893, align 8
  %895 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %896 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %895, i32 0, i32 1
  %897 = load %struct.TYPE_43__*, %struct.TYPE_43__** %896, align 8
  %898 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %899 = call i32 %894(%struct.TYPE_43__* %897, i32 %898, i32 114, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @x_tune_dvbt_demod_setting.bw5_notch, i64 0, i64 0), i32 2)
  store i32 %899, i32* %10, align 4
  %900 = load i32, i32* %10, align 4
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %904

902:                                              ; preds = %889
  %903 = load i32, i32* %10, align 4
  store i32 %903, i32* %4, align 4
  br label %932

904:                                              ; preds = %889
  %905 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %906 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %905, i32 0, i32 1
  %907 = load %struct.TYPE_43__*, %struct.TYPE_43__** %906, align 8
  %908 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %907, i32 0, i32 1
  %909 = load i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_43__*, i32, i32, i32*, i32)** %908, align 8
  %910 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %911 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %910, i32 0, i32 1
  %912 = load %struct.TYPE_43__*, %struct.TYPE_43__** %911, align 8
  %913 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %914 = call i32 %909(%struct.TYPE_43__* %912, i32 %913, i32 107, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @x_tune_dvbt_demod_setting.bw5_notch, i64 0, i64 2), i32 2)
  store i32 %914, i32* %10, align 4
  %915 = load i32, i32* %10, align 4
  %916 = icmp ne i32 %915, 0
  br i1 %916, label %917, label %919

917:                                              ; preds = %904
  %918 = load i32, i32* %10, align 4
  store i32 %918, i32* %4, align 4
  br label %932

919:                                              ; preds = %904
  br label %923

920:                                              ; preds = %258
  %921 = load i32, i32* @EINVAL, align 4
  %922 = sub nsw i32 0, %921
  store i32 %922, i32* %4, align 4
  br label %932

923:                                              ; preds = %919, %754, %589, %424
  %924 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %925 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %924, i32 0, i32 1
  %926 = load %struct.TYPE_43__*, %struct.TYPE_43__** %925, align 8
  %927 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %928 = load i32, i32* @tune_dmd_setting_seq5, align 4
  %929 = load i32, i32* @tune_dmd_setting_seq5, align 4
  %930 = call i32 @ARRAY_SIZE(i32 %929)
  %931 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_43__* %926, i32 %927, i32 %928, i32 %930)
  store i32 %931, i32* %4, align 4
  br label %932

932:                                              ; preds = %923, %920, %917, %902, %886, %869, %851, %838, %821, %815, %798, %791, %776, %759, %752, %737, %721, %704, %686, %673, %656, %650, %633, %626, %611, %594, %587, %572, %556, %539, %521, %508, %491, %485, %468, %461, %446, %429, %422, %407, %391, %374, %356, %343, %326, %320, %303, %296, %281, %264, %256, %240, %223, %216, %194, %174, %149, %134, %120, %104, %82, %67, %50, %43, %28, %14
  %933 = load i32, i32* %4, align 4
  ret i32 %933
}

declare dso_local i32 @cxd2880_io_write_multi_regs(%struct.TYPE_43__*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
