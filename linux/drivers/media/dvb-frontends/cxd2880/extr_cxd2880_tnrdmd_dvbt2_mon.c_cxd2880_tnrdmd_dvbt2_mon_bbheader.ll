; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_bbheader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_bbheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)* }
%struct.cxd2880_dvbt2_bbheader = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@CXD2880_DVBT2_PLP_COMMON = common dso_local global i32 0, align 4
@CXD2880_DVBT2_PLP_MODE_HEM = common dso_local global i64 0, align 8
@CXD2880_DVBT2_PLP_MODE_NM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_bbheader(%struct.cxd2880_tnrdmd* %0, i32 %1, %struct.cxd2880_dvbt2_bbheader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_dvbt2_bbheader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [14 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cxd2880_dvbt2_bbheader* %2, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %17 = icmp ne %struct.cxd2880_tnrdmd* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %20 = icmp ne %struct.cxd2880_dvbt2_bbheader* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %273

24:                                               ; preds = %18
  %25 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %273

33:                                               ; preds = %24
  %34 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %273

42:                                               ; preds = %33
  %43 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %44 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %273

51:                                               ; preds = %42
  %52 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %53 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %4, align 4
  br label %273

58:                                               ; preds = %51
  %59 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %60 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd* %59, i32* %8, i32* %9, i32* %10)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %65 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %64)
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %4, align 4
  br label %273

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %72 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %71)
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %273

75:                                               ; preds = %67
  %76 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %77 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %76, i32 0, i32 3
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %79, align 8
  %81 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %82 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %81, i32 0, i32 3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %85 = call i32 %80(%struct.TYPE_5__* %83, i32 %84, i32 0, i32 11)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %90 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %4, align 4
  br label %273

92:                                               ; preds = %75
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @CXD2880_DVBT2_PLP_COMMON, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %148

96:                                               ; preds = %92
  %97 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %98 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %97, i32 0, i32 3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %100, align 8
  %102 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %103 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %102, i32 0, i32 3
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %106 = call i32 %101(%struct.TYPE_5__* %104, i32 %105, i32 134, i32* %14, i32 1)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %111 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %273

113:                                              ; preds = %96
  %114 = load i32, i32* %14, align 4
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  %118 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %119 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %118)
  %120 = load i32, i32* @EAGAIN, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %273

122:                                              ; preds = %113
  %123 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %124 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %123, i32 0, i32 3
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %126, align 8
  %128 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %129 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %128, i32 0, i32 3
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %132 = call i32 %127(%struct.TYPE_5__* %130, i32 %131, i32 182, i32* %15, i32 1)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %122
  %136 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %137 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %136)
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %4, align 4
  br label %273

139:                                              ; preds = %122
  %140 = load i32, i32* %15, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %144 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %143)
  %145 = load i32, i32* @EAGAIN, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %273

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %92
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @CXD2880_DVBT2_PLP_COMMON, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 81, i32* %12, align 4
  br label %154

153:                                              ; preds = %148
  store i32 66, i32* %12, align 4
  br label %154

154:                                              ; preds = %153, %152
  %155 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %156 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %155, i32 0, i32 3
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %158, align 8
  %160 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %161 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %160, i32 0, i32 3
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %164 = load i32, i32* %12, align 4
  %165 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 0
  %166 = call i32 %159(%struct.TYPE_5__* %162, i32 %163, i32 %164, i32* %165, i32 56)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %154
  %170 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %171 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %170)
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %4, align 4
  br label %273

173:                                              ; preds = %154
  %174 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %175 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %174)
  %176 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 0
  %177 = load i32, i32* %176, align 16
  %178 = ashr i32 %177, 6
  %179 = and i32 %178, 3
  %180 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %181 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 0
  %183 = load i32, i32* %182, align 16
  %184 = ashr i32 %183, 5
  %185 = and i32 %184, 1
  %186 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %187 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 0
  %189 = load i32, i32* %188, align 16
  %190 = ashr i32 %189, 4
  %191 = and i32 %190, 1
  %192 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %193 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 0
  %195 = load i32, i32* %194, align 16
  %196 = ashr i32 %195, 3
  %197 = and i32 %196, 1
  %198 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %199 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 0
  %201 = load i32, i32* %200, align 16
  %202 = ashr i32 %201, 2
  %203 = and i32 %202, 1
  %204 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %205 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  %206 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 0
  %207 = load i32, i32* %206, align 16
  %208 = and i32 %207, 3
  %209 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %210 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 4
  %211 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %214 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %213, i32 0, i32 6
  store i32 %212, i32* %214, align 8
  %215 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 3
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, 1
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %173
  %220 = load i64, i64* @CXD2880_DVBT2_PLP_MODE_HEM, align 8
  br label %223

221:                                              ; preds = %173
  %222 = load i64, i64* @CXD2880_DVBT2_PLP_MODE_NM, align 8
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i64 [ %220, %219 ], [ %222, %221 ]
  %225 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %226 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %225, i32 0, i32 7
  store i64 %224, i64* %226, align 8
  %227 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 4
  %228 = load i32, i32* %227, align 16
  %229 = shl i32 %228, 8
  %230 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 5
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %229, %231
  %233 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %234 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 8
  %235 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %236 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @CXD2880_DVBT2_PLP_MODE_NM, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %255

240:                                              ; preds = %223
  %241 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 6
  %242 = load i32, i32* %241, align 8
  %243 = shl i32 %242, 8
  %244 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 7
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %243, %245
  %247 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %248 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %247, i32 0, i32 9
  store i32 %246, i32* %248, align 4
  %249 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 8
  %250 = load i32, i32* %249, align 16
  %251 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %252 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %251, i32 0, i32 10
  store i32 %250, i32* %252, align 8
  %253 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %254 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %253, i32 0, i32 11
  store i32 0, i32* %254, align 4
  br label %272

255:                                              ; preds = %223
  %256 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %257 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %256, i32 0, i32 9
  store i32 0, i32* %257, align 4
  %258 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %259 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %258, i32 0, i32 10
  store i32 0, i32* %259, align 8
  %260 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 11
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 16
  %263 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 12
  %264 = load i32, i32* %263, align 16
  %265 = shl i32 %264, 8
  %266 = or i32 %262, %265
  %267 = getelementptr inbounds [14 x i32], [14 x i32]* %11, i64 0, i64 13
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %266, %268
  %270 = load %struct.cxd2880_dvbt2_bbheader*, %struct.cxd2880_dvbt2_bbheader** %7, align 8
  %271 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, %struct.cxd2880_dvbt2_bbheader* %270, i32 0, i32 11
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %255, %240
  store i32 0, i32* %4, align 4
  br label %273

273:                                              ; preds = %272, %169, %142, %135, %117, %109, %88, %70, %63, %56, %48, %39, %30, %21
  %274 = load i32, i32* %4, align 4
  ret i32 %274
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd*, i32*, i32*, i32*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
