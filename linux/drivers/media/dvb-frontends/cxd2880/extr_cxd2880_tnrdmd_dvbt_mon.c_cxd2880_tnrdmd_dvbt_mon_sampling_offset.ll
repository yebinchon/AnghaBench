; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt_mon.c_cxd2880_tnrdmd_dvbt_mon_sampling_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt_mon.c_cxd2880_tnrdmd_dvbt_mon_sampling_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sampling_offset(%struct.cxd2880_tnrdmd* %0, i32* %1) #0 {
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
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %15 = icmp ne %struct.cxd2880_tnrdmd* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %248

22:                                               ; preds = %16
  %23 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %24 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %248

31:                                               ; preds = %22
  %32 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CXD2880_DTV_SYS_DVBT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %248

40:                                               ; preds = %31
  %41 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %42 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %3, align 4
  br label %248

47:                                               ; preds = %40
  %48 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %49 = call i32 @is_tps_locked(%struct.cxd2880_tnrdmd* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %54 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %3, align 4
  br label %248

56:                                               ; preds = %47
  %57 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %58 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %60, align 8
  %62 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %63 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %66 = call i32 %61(%struct.TYPE_5__* %64, i32 %65, i32 0, i32 13)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %71 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %3, align 4
  br label %248

73:                                               ; preds = %56
  %74 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %75 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %77, align 8
  %79 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %80 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %84 = call i32 %78(%struct.TYPE_5__* %81, i32 %82, i32 33, i32* %83, i32 20)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %73
  %88 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %89 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %3, align 4
  br label %248

91:                                               ; preds = %73
  %92 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %93 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %95, align 8
  %97 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %98 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %97, i32 0, i32 2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %101 = call i32 %96(%struct.TYPE_5__* %99, i32 %100, i32 0, i32 4)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %91
  %105 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %106 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %105)
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %3, align 4
  br label %248

108:                                              ; preds = %91
  %109 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %110 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %109, i32 0, i32 2
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %112, align 8
  %114 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %115 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %118 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %119 = call i32 %113(%struct.TYPE_5__* %116, i32 %117, i32 96, i32* %118, i32 20)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %108
  %123 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %124 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %123)
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %3, align 4
  br label %248

126:                                              ; preds = %108
  %127 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %128 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %127)
  %129 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = and i32 %130, 127
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %133 = load i32, i32* %132, align 16
  %134 = and i32 %133, 127
  %135 = sub nsw i32 %131, %134
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, -1
  br i1 %137, label %141, label %138

138:                                              ; preds = %126
  %139 = load i32, i32* %12, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %138, %126
  %142 = load i32, i32* @EAGAIN, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %248

144:                                              ; preds = %138
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 24
  store i32 %147, i32* %8, align 4
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %149 = load i32, i32* %148, align 8
  %150 = shl i32 %149, 16
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  %156 = load i32, i32* %8, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %8, align 4
  %158 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %159 = load i32, i32* %158, align 16
  %160 = load i32, i32* %8, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 24
  store i32 %164, i32* %9, align 4
  %165 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %166 = load i32, i32* %165, align 8
  %167 = shl i32 %166, 16
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  %170 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 8
  %173 = load i32, i32* %9, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %176 = load i32, i32* %175, align 16
  %177 = load i32, i32* %9, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %8, align 4
  %180 = ashr i32 %179, 1
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = ashr i32 %181, 1
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %190

185:                                              ; preds = %144
  %186 = load i32, i32* %8, align 4
  %187 = add i32 %186, -2147483648
  %188 = load i32, i32* %9, align 4
  %189 = sub i32 %187, %188
  store i32 %189, i32* %10, align 4
  br label %204

190:                                              ; preds = %144
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load i32, i32* %9, align 4
  %195 = add i32 %194, -2147483648
  %196 = load i32, i32* %8, align 4
  %197 = sub i32 %195, %196
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %10, align 4
  br label %203

199:                                              ; preds = %190
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %9, align 4
  %202 = sub nsw i32 %200, %201
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %199, %193
  br label %204

204:                                              ; preds = %203, %185
  %205 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %206 = load i32, i32* %205, align 16
  %207 = and i32 %206, 127
  %208 = shl i32 %207, 24
  store i32 %208, i32* %11, align 4
  %209 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = shl i32 %210, 16
  %212 = load i32, i32* %11, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %11, align 4
  %214 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %215 = load i32, i32* %214, align 8
  %216 = shl i32 %215, 8
  %217 = load i32, i32* %11, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %11, align 4
  %219 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %11, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 195312
  %225 = sdiv i32 %224, 390625
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = ashr i32 %226, 1
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp sge i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %204
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %11, align 4
  %233 = sdiv i32 %232, 2
  %234 = add nsw i32 %231, %233
  %235 = load i32, i32* %11, align 4
  %236 = sdiv i32 %234, %235
  %237 = load i32*, i32** %5, align 8
  store i32 %236, i32* %237, align 4
  br label %246

238:                                              ; preds = %204
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %11, align 4
  %241 = sdiv i32 %240, 2
  %242 = sub nsw i32 %239, %241
  %243 = load i32, i32* %11, align 4
  %244 = sdiv i32 %242, %243
  %245 = load i32*, i32** %5, align 8
  store i32 %244, i32* %245, align 4
  br label %246

246:                                              ; preds = %238, %230
  %247 = load i32, i32* %13, align 4
  store i32 %247, i32* %3, align 4
  br label %248

248:                                              ; preds = %246, %141, %122, %104, %87, %69, %52, %45, %37, %28, %19
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @is_tps_locked(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
