; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_active_plp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_active_plp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)* }
%struct.cxd2880_dvbt2_plp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_DVBT2_PLP_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_active_plp(%struct.cxd2880_tnrdmd* %0, i32 %1, %struct.cxd2880_dvbt2_plp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_dvbt2_plp*, align 8
  %8 = alloca [20 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cxd2880_dvbt2_plp* %2, %struct.cxd2880_dvbt2_plp** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %14 = icmp ne %struct.cxd2880_tnrdmd* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %17 = icmp ne %struct.cxd2880_dvbt2_plp* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %320

21:                                               ; preds = %15
  %22 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %320

30:                                               ; preds = %21
  %31 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %320

39:                                               ; preds = %30
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %320

48:                                               ; preds = %39
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %50 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %320

55:                                               ; preds = %48
  %56 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %57 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32)** %59, align 8
  %61 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %62 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %65 = call i32 %60(%struct.TYPE_4__* %63, i32 %64, i32 0, i32 11)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %70 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %320

72:                                               ; preds = %55
  %73 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %74 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)** %76, align 8
  %78 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %79 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %82 = call i32 %77(%struct.TYPE_4__* %80, i32 %81, i32 134, i32* %11, i32 1)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %87 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %320

89:                                               ; preds = %72
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %94 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %93)
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %320

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @CXD2880_DVBT2_PLP_COMMON, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 169, i32* %9, align 4
  br label %103

102:                                              ; preds = %97
  store i32 150, i32* %9, align 4
  br label %103

103:                                              ; preds = %102, %101
  %104 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %105 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)** %107, align 8
  %109 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %110 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %113 = load i32, i32* %9, align 4
  %114 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %115 = call i32 %108(%struct.TYPE_4__* %111, i32 %112, i32 %113, i32* %114, i32 80)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %103
  %119 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %120 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %119)
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %4, align 4
  br label %320

122:                                              ; preds = %103
  %123 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %124 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %123)
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @CXD2880_DVBT2_PLP_COMMON, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 13
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* @EAGAIN, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %320

135:                                              ; preds = %128, %122
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %142 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 7
  %149 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %150 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 31
  %157 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %158 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 1
  %165 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %166 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 7
  %173 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %174 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %181 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %188 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 7
  %195 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %196 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %195, i32 0, i32 7
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 7
  %203 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %204 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %203, i32 0, i32 8
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 1
  %211 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %212 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 3
  %219 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %220 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %219, i32 0, i32 10
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 3
  %227 = shl i32 %226, 8
  %228 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %229 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %228, i32 0, i32 11
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %236 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %235, i32 0, i32 11
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %245 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %244, i32 0, i32 12
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %10, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %252 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %251, i32 0, i32 13
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %10, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %10, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 1
  %259 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %260 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %259, i32 0, i32 14
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %10, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, 1
  %267 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %268 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %267, i32 0, i32 15
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = shl i32 %273, 8
  %275 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %276 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %275, i32 0, i32 16
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %10, align 4
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %283 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %282, i32 0, i32 16
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  %286 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %287 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %286, i32 0, i32 16
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 32768
  %290 = ashr i32 %289, 15
  %291 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %292 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %291, i32 0, i32 17
  store i32 %290, i32* %292, align 4
  %293 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %294 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %293, i32 0, i32 16
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, 12
  %297 = ashr i32 %296, 2
  %298 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %299 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %298, i32 0, i32 18
  store i32 %297, i32* %299, align 4
  %300 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %301 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %300, i32 0, i32 16
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 2
  %304 = ashr i32 %303, 1
  %305 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %306 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %305, i32 0, i32 19
  store i32 %304, i32* %306, align 4
  %307 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %308 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %307, i32 0, i32 16
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 1
  %311 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %312 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %311, i32 0, i32 20
  store i32 %310, i32* %312, align 4
  %313 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %314 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %313, i32 0, i32 16
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, 32752
  %317 = ashr i32 %316, 4
  %318 = load %struct.cxd2880_dvbt2_plp*, %struct.cxd2880_dvbt2_plp** %7, align 8
  %319 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, %struct.cxd2880_dvbt2_plp* %318, i32 0, i32 16
  store i32 %317, i32* %319, align 4
  store i32 0, i32* %4, align 4
  br label %320

320:                                              ; preds = %135, %132, %118, %92, %85, %68, %53, %45, %36, %27, %18
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
