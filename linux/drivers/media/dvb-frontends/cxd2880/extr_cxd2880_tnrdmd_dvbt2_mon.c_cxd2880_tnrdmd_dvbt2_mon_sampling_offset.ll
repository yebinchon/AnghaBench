; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_sampling_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_sampling_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sampling_offset(%struct.cxd2880_tnrdmd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [5 x i32], align 16
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %18 = icmp ne %struct.cxd2880_tnrdmd* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %258

25:                                               ; preds = %19
  %26 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %27 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %258

34:                                               ; preds = %25
  %35 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %36 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %258

43:                                               ; preds = %34
  %44 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %45 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %3, align 4
  br label %258

50:                                               ; preds = %43
  %51 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %52 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd* %51, i32* %13, i32* %14, i32* %15)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %57 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  br label %258

59:                                               ; preds = %50
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 6
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %64 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %63)
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %258

67:                                               ; preds = %59
  %68 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %69 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %71, align 8
  %73 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %74 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %77 = call i32 %72(%struct.TYPE_5__* %75, i32 %76, i32 0, i32 11)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %82 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %3, align 4
  br label %258

84:                                               ; preds = %67
  %85 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %86 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %88, align 8
  %90 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %91 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %94 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %95 = call i32 %89(%struct.TYPE_5__* %92, i32 %93, i32 52, i32* %94, i32 20)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %100 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %3, align 4
  br label %258

102:                                              ; preds = %84
  %103 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %104 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %106, align 8
  %108 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %109 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %112 = call i32 %107(%struct.TYPE_5__* %110, i32 %111, i32 0, i32 4)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %102
  %116 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %117 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %3, align 4
  br label %258

119:                                              ; preds = %102
  %120 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %121 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %123, align 8
  %125 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %126 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %125, i32 0, i32 2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %129 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %130 = call i32 %124(%struct.TYPE_5__* %127, i32 %128, i32 16, i32* %129, i32 20)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %119
  %134 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %135 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %3, align 4
  br label %258

137:                                              ; preds = %119
  %138 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %139 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %138)
  %140 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %141 = load i32, i32* %140, align 16
  %142 = and i32 %141, 127
  %143 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %144 = load i32, i32* %143, align 16
  %145 = and i32 %144, 127
  %146 = sub nsw i32 %142, %145
  store i32 %146, i32* %16, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %147, -1
  br i1 %148, label %152, label %149

149:                                              ; preds = %137
  %150 = load i32, i32* %16, align 4
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %155

152:                                              ; preds = %149, %137
  %153 = load i32, i32* @EAGAIN, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %258

155:                                              ; preds = %149
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 24
  store i32 %158, i32* %8, align 4
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = shl i32 %160, 16
  %162 = load i32, i32* %8, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %8, align 4
  %164 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 8
  %167 = load i32, i32* %8, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %8, align 4
  %169 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %170 = load i32, i32* %169, align 16
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %8, align 4
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 24
  store i32 %175, i32* %9, align 4
  %176 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %177 = load i32, i32* %176, align 8
  %178 = shl i32 %177, 16
  %179 = load i32, i32* %9, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %9, align 4
  %181 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 8
  %184 = load i32, i32* %9, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %9, align 4
  %186 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %187 = load i32, i32* %186, align 16
  %188 = load i32, i32* %9, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %8, align 4
  %191 = ashr i32 %190, 1
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %9, align 4
  %193 = ashr i32 %192, 1
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %16, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %201

196:                                              ; preds = %155
  %197 = load i32, i32* %8, align 4
  %198 = add i32 %197, -2147483648
  %199 = load i32, i32* %9, align 4
  %200 = sub i32 %198, %199
  store i32 %200, i32* %10, align 4
  br label %215

201:                                              ; preds = %155
  %202 = load i32, i32* %16, align 4
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i32, i32* %9, align 4
  %206 = add i32 %205, -2147483648
  %207 = load i32, i32* %8, align 4
  %208 = sub i32 %206, %207
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %10, align 4
  br label %214

210:                                              ; preds = %201
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %9, align 4
  %213 = sub nsw i32 %211, %212
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %210, %204
  br label %215

215:                                              ; preds = %214, %196
  %216 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %217 = load i32, i32* %216, align 16
  %218 = and i32 %217, 127
  %219 = shl i32 %218, 24
  store i32 %219, i32* %11, align 4
  %220 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 16
  %223 = load i32, i32* %11, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %11, align 4
  %225 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %226 = load i32, i32* %225, align 8
  %227 = shl i32 %226, 8
  %228 = load i32, i32* %11, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %11, align 4
  %230 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %11, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, 195312
  %236 = sdiv i32 %235, 390625
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = ashr i32 %237, 1
  store i32 %238, i32* %11, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp sge i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %215
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %11, align 4
  %244 = sdiv i32 %243, 2
  %245 = add nsw i32 %242, %244
  %246 = load i32, i32* %11, align 4
  %247 = sdiv i32 %245, %246
  %248 = load i32*, i32** %5, align 8
  store i32 %247, i32* %248, align 4
  br label %257

249:                                              ; preds = %215
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %11, align 4
  %252 = sdiv i32 %251, 2
  %253 = sub nsw i32 %250, %252
  %254 = load i32, i32* %11, align 4
  %255 = sdiv i32 %253, %254
  %256 = load i32*, i32** %5, align 8
  store i32 %255, i32* %256, align 4
  br label %257

257:                                              ; preds = %249, %241
  store i32 0, i32* %3, align 4
  br label %258

258:                                              ; preds = %257, %152, %133, %115, %98, %80, %62, %55, %48, %40, %31, %22
  %259 = load i32, i32* %3, align 4
  ret i32 %259
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
