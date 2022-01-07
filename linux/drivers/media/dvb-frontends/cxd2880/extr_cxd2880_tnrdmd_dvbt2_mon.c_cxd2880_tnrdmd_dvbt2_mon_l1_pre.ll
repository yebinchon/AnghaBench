; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_l1_pre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_l1_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)* }
%struct.cxd2880_dvbt2_l1pre = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@CXD2880_DVBT2_PROFILE_BASE = common dso_local global i32 0, align 4
@CXD2880_DVBT2_M1K = common dso_local global i8* null, align 8
@CXD2880_DVBT2_M2K = common dso_local global i8* null, align 8
@CXD2880_DVBT2_M4K = common dso_local global i8* null, align 8
@CXD2880_DVBT2_M8K = common dso_local global i8* null, align 8
@CXD2880_DVBT2_M16K = common dso_local global i8* null, align 8
@CXD2880_DVBT2_M32K = common dso_local global i8* null, align 8
@CXD2880_DVBT2_PROFILE_LITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_dvbt2_l1pre* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca %struct.cxd2880_dvbt2_l1pre*, align 8
  %6 = alloca [37 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store %struct.cxd2880_dvbt2_l1pre* %1, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %14 = icmp ne %struct.cxd2880_tnrdmd* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %17 = icmp ne %struct.cxd2880_dvbt2_l1pre* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %436

21:                                               ; preds = %15
  %22 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %436

30:                                               ; preds = %21
  %31 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %436

39:                                               ; preds = %30
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %436

48:                                               ; preds = %39
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %50 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %3, align 4
  br label %436

55:                                               ; preds = %48
  %56 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %57 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd* %56, i32* %7, i32* %8, i32* %9)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %62 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %61)
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %436

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 5
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %69 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %75 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(%struct.cxd2880_tnrdmd* %74, i32* %7, i32* %9)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %80 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %3, align 4
  br label %436

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 5
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %87 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %86)
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %436

90:                                               ; preds = %82
  br label %96

91:                                               ; preds = %67
  %92 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %93 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %92)
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %436

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %64
  %98 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %99 = call i32 @cxd2880_tnrdmd_dvbt2_mon_profile(%struct.cxd2880_tnrdmd* %98, i32* %11)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %104 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %103)
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %3, align 4
  br label %436

106:                                              ; preds = %97
  %107 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %108 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %110, align 8
  %112 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %113 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %112, i32 0, i32 3
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %116 = call i32 %111(%struct.TYPE_3__* %114, i32 %115, i32 0, i32 11)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %106
  %120 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %121 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %3, align 4
  br label %436

123:                                              ; preds = %106
  %124 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %125 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %124, i32 0, i32 3
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)** %127, align 8
  %129 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %130 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %129, i32 0, i32 3
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %133 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 0
  %134 = call i32 %128(%struct.TYPE_3__* %131, i32 %132, i32 97, i32* %133, i32 148)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %123
  %138 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %139 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %138)
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %3, align 4
  br label %436

141:                                              ; preds = %123
  %142 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %143 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %142)
  %144 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %147 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 1
  %151 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %152 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, 7
  %156 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %157 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 15
  %161 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %162 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 4
  %164 = load i32, i32* %163, align 16
  %165 = and i32 %164, 1
  %166 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %167 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 5
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 7
  %171 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %172 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 6
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, 15
  %176 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %177 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  %178 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 7
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 15
  %181 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %182 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %181, i32 0, i32 7
  store i32 %180, i32* %182, align 4
  %183 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 8
  %184 = load i32, i32* %183, align 16
  %185 = and i32 %184, 3
  %186 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %187 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 8
  %188 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 9
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 3
  %191 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %192 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %191, i32 0, i32 9
  store i32 %190, i32* %192, align 4
  %193 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 10
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, 3
  %196 = shl i32 %195, 16
  %197 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %198 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %197, i32 0, i32 10
  store i32 %196, i32* %198, align 8
  %199 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 11
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 8
  %202 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %203 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 12
  %207 = load i32, i32* %206, align 16
  %208 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %209 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %208, i32 0, i32 10
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 13
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 3
  %215 = shl i32 %214, 16
  %216 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %217 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %216, i32 0, i32 11
  store i32 %215, i32* %217, align 4
  %218 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 14
  %219 = load i32, i32* %218, align 8
  %220 = shl i32 %219, 8
  %221 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %222 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %221, i32 0, i32 11
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  %225 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 15
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %228 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %227, i32 0, i32 11
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 16
  %232 = load i32, i32* %231, align 16
  %233 = and i32 %232, 15
  %234 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %235 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %234, i32 0, i32 12
  store i32 %233, i32* %235, align 8
  %236 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 17
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %239 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %238, i32 0, i32 13
  store i32 %237, i32* %239, align 4
  %240 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 18
  %241 = load i32, i32* %240, align 8
  %242 = shl i32 %241, 8
  %243 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %244 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %243, i32 0, i32 14
  store i32 %242, i32* %244, align 8
  %245 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 19
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %248 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  %251 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 20
  %252 = load i32, i32* %251, align 16
  %253 = shl i32 %252, 8
  %254 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %255 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %254, i32 0, i32 15
  store i32 %253, i32* %255, align 4
  %256 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 21
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %259 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %258, i32 0, i32 15
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 22
  %263 = load i32, i32* %262, align 8
  %264 = shl i32 %263, 8
  %265 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %266 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %265, i32 0, i32 16
  store i32 %264, i32* %266, align 8
  %267 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 23
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %270 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %269, i32 0, i32 16
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  %273 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 24
  %274 = load i32, i32* %273, align 16
  %275 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %276 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %275, i32 0, i32 17
  store i32 %274, i32* %276, align 4
  %277 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 25
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 15
  %280 = shl i32 %279, 8
  %281 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %282 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %281, i32 0, i32 18
  store i32 %280, i32* %282, align 8
  %283 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 26
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %286 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %285, i32 0, i32 18
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 27
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, 7
  %292 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %293 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %292, i32 0, i32 19
  store i32 %291, i32* %293, align 4
  %294 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 28
  %295 = load i32, i32* %294, align 16
  %296 = and i32 %295, 1
  %297 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %298 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %297, i32 0, i32 20
  store i32 %296, i32* %298, align 8
  %299 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 29
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 7
  %302 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %303 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %302, i32 0, i32 21
  store i32 %301, i32* %303, align 4
  %304 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 30
  %305 = load i32, i32* %304, align 8
  %306 = and i32 %305, 7
  %307 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %308 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %307, i32 0, i32 22
  store i32 %306, i32* %308, align 8
  %309 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 31
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, 3
  %312 = shl i32 %311, 2
  store i32 %312, i32* %10, align 4
  %313 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 32
  %314 = load i32, i32* %313, align 16
  %315 = and i32 %314, 192
  %316 = ashr i32 %315, 6
  %317 = load i32, i32* %10, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %10, align 4
  %319 = load i32, i32* %10, align 4
  %320 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %321 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %320, i32 0, i32 23
  store i32 %319, i32* %321, align 4
  %322 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 32
  %323 = load i32, i32* %322, align 16
  %324 = and i32 %323, 32
  %325 = ashr i32 %324, 5
  %326 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %327 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %326, i32 0, i32 24
  store i32 %325, i32* %327, align 8
  %328 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 32
  %329 = load i32, i32* %328, align 16
  %330 = and i32 %329, 16
  %331 = ashr i32 %330, 4
  %332 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %333 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %332, i32 0, i32 25
  store i32 %331, i32* %333, align 4
  %334 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 33
  %335 = load i32, i32* %334, align 4
  %336 = shl i32 %335, 24
  %337 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %338 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %337, i32 0, i32 26
  store i32 %336, i32* %338, align 8
  %339 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 34
  %340 = load i32, i32* %339, align 8
  %341 = shl i32 %340, 16
  %342 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %343 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %342, i32 0, i32 26
  %344 = load i32, i32* %343, align 8
  %345 = or i32 %344, %341
  store i32 %345, i32* %343, align 8
  %346 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 35
  %347 = load i32, i32* %346, align 4
  %348 = shl i32 %347, 8
  %349 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %350 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %349, i32 0, i32 26
  %351 = load i32, i32* %350, align 8
  %352 = or i32 %351, %348
  store i32 %352, i32* %350, align 8
  %353 = getelementptr inbounds [37 x i32], [37 x i32]* %6, i64 0, i64 36
  %354 = load i32, i32* %353, align 16
  %355 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %356 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %355, i32 0, i32 26
  %357 = load i32, i32* %356, align 8
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 8
  %359 = load i32, i32* %11, align 4
  %360 = load i32, i32* @CXD2880_DVBT2_PROFILE_BASE, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %395

362:                                              ; preds = %141
  %363 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %364 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = ashr i32 %365, 1
  switch i32 %366, label %391 [
    i32 140, label %367
    i32 139, label %371
    i32 136, label %375
    i32 135, label %379
    i32 134, label %379
    i32 141, label %383
    i32 138, label %387
    i32 137, label %387
  ]

367:                                              ; preds = %362
  %368 = load i8*, i8** @CXD2880_DVBT2_M1K, align 8
  %369 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %370 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %369, i32 0, i32 28
  store i8* %368, i8** %370, align 8
  br label %394

371:                                              ; preds = %362
  %372 = load i8*, i8** @CXD2880_DVBT2_M2K, align 8
  %373 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %374 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %373, i32 0, i32 28
  store i8* %372, i8** %374, align 8
  br label %394

375:                                              ; preds = %362
  %376 = load i8*, i8** @CXD2880_DVBT2_M4K, align 8
  %377 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %378 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %377, i32 0, i32 28
  store i8* %376, i8** %378, align 8
  br label %394

379:                                              ; preds = %362, %362
  %380 = load i8*, i8** @CXD2880_DVBT2_M8K, align 8
  %381 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %382 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %381, i32 0, i32 28
  store i8* %380, i8** %382, align 8
  br label %394

383:                                              ; preds = %362
  %384 = load i8*, i8** @CXD2880_DVBT2_M16K, align 8
  %385 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %386 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %385, i32 0, i32 28
  store i8* %384, i8** %386, align 8
  br label %394

387:                                              ; preds = %362, %362
  %388 = load i8*, i8** @CXD2880_DVBT2_M32K, align 8
  %389 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %390 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %389, i32 0, i32 28
  store i8* %388, i8** %390, align 8
  br label %394

391:                                              ; preds = %362
  %392 = load i32, i32* @EAGAIN, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %3, align 4
  br label %436

394:                                              ; preds = %387, %383, %379, %375, %371, %367
  br label %428

395:                                              ; preds = %141
  %396 = load i32, i32* %11, align 4
  %397 = load i32, i32* @CXD2880_DVBT2_PROFILE_LITE, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %424

399:                                              ; preds = %395
  %400 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %401 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = ashr i32 %402, 1
  switch i32 %403, label %420 [
    i32 131, label %404
    i32 130, label %408
    i32 129, label %412
    i32 128, label %412
    i32 133, label %416
    i32 132, label %416
  ]

404:                                              ; preds = %399
  %405 = load i8*, i8** @CXD2880_DVBT2_M2K, align 8
  %406 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %407 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %406, i32 0, i32 28
  store i8* %405, i8** %407, align 8
  br label %423

408:                                              ; preds = %399
  %409 = load i8*, i8** @CXD2880_DVBT2_M4K, align 8
  %410 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %411 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %410, i32 0, i32 28
  store i8* %409, i8** %411, align 8
  br label %423

412:                                              ; preds = %399, %399
  %413 = load i8*, i8** @CXD2880_DVBT2_M8K, align 8
  %414 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %415 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %414, i32 0, i32 28
  store i8* %413, i8** %415, align 8
  br label %423

416:                                              ; preds = %399, %399
  %417 = load i8*, i8** @CXD2880_DVBT2_M16K, align 8
  %418 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %419 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %418, i32 0, i32 28
  store i8* %417, i8** %419, align 8
  br label %423

420:                                              ; preds = %399
  %421 = load i32, i32* @EAGAIN, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %3, align 4
  br label %436

423:                                              ; preds = %416, %412, %408, %404
  br label %427

424:                                              ; preds = %395
  %425 = load i32, i32* @EAGAIN, align 4
  %426 = sub nsw i32 0, %425
  store i32 %426, i32* %3, align 4
  br label %436

427:                                              ; preds = %423
  br label %428

428:                                              ; preds = %427, %394
  %429 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %430 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 4
  %432 = and i32 %431, 1
  %433 = load %struct.cxd2880_dvbt2_l1pre*, %struct.cxd2880_dvbt2_l1pre** %5, align 8
  %434 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %433, i32 0, i32 27
  store i32 %432, i32* %434, align 4
  %435 = load i32, i32* %12, align 4
  store i32 %435, i32* %3, align 4
  br label %436

436:                                              ; preds = %428, %424, %420, %391, %137, %119, %102, %91, %85, %78, %60, %53, %45, %36, %27, %18
  %437 = load i32, i32* %3, align 4
  ret i32 %437
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd*, i32*, i32*, i32*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(%struct.cxd2880_tnrdmd*, i32*, i32*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_profile(%struct.cxd2880_tnrdmd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
