; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_in_bandb_ts_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_in_bandb_ts_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@CXD2880_DVBT2_PLP_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_in_bandb_ts_rate(%struct.cxd2880_tnrdmd* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %16 = icmp ne %struct.cxd2880_tnrdmd* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %211

23:                                               ; preds = %17
  %24 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %211

32:                                               ; preds = %23
  %33 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %34 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %211

41:                                               ; preds = %32
  %42 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %211

50:                                               ; preds = %41
  %51 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %52 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %4, align 4
  br label %211

57:                                               ; preds = %50
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %59 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd* %58, i32* %8, i32* %9, i32* %10)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %64 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %4, align 4
  br label %211

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %71 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %70)
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %211

74:                                               ; preds = %66
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %76 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %78, align 8
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %84 = call i32 %79(%struct.TYPE_6__* %82, i32 %83, i32 0, i32 11)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %89 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %88)
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %4, align 4
  br label %211

91:                                               ; preds = %74
  %92 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %93 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)** %95, align 8
  %97 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %98 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %101 = call i32 %96(%struct.TYPE_6__* %99, i32 %100, i32 134, i32* %11, i32 1)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %91
  %105 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %106 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %4, align 4
  br label %211

108:                                              ; preds = %91
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %114 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %113)
  %115 = load i32, i32* @EAGAIN, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %211

117:                                              ; preds = %108
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @CXD2880_DVBT2_PLP_COMMON, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 186, i32* %13, align 4
  br label %123

122:                                              ; preds = %117
  store i32 167, i32* %13, align 4
  br label %123

123:                                              ; preds = %122, %121
  %124 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %125 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)** %127, align 8
  %129 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %130 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %129, i32 0, i32 3
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %133 = load i32, i32* %13, align 4
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %135 = call i32 %128(%struct.TYPE_6__* %131, i32 %132, i32 %133, i32* %134, i32 1)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %123
  %139 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %140 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %139)
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %4, align 4
  br label %211

142:                                              ; preds = %123
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %144 = load i32, i32* %143, align 16
  %145 = and i32 %144, 128
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %149 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %148)
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %211

152:                                              ; preds = %142
  %153 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %154 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %153, i32 0, i32 3
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %156, align 8
  %158 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %159 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %158, i32 0, i32 3
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %162 = call i32 %157(%struct.TYPE_6__* %160, i32 %161, i32 0, i32 37)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %152
  %166 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %167 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %166)
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %4, align 4
  br label %211

169:                                              ; preds = %152
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @CXD2880_DVBT2_PLP_COMMON, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 166, i32* %13, align 4
  br label %175

174:                                              ; preds = %169
  store i32 170, i32* %13, align 4
  br label %175

175:                                              ; preds = %174, %173
  %176 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %177 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %176, i32 0, i32 3
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)** %179, align 8
  %181 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %182 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %181, i32 0, i32 3
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %185 = load i32, i32* %13, align 4
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %187 = call i32 %180(%struct.TYPE_6__* %183, i32 %184, i32 %185, i32* %186, i32 4)
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %175
  %191 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %192 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %191)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %4, align 4
  br label %211

194:                                              ; preds = %175
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %196 = load i32, i32* %195, align 16
  %197 = and i32 %196, 7
  %198 = shl i32 %197, 24
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 16
  %202 = or i32 %198, %201
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %204 = load i32, i32* %203, align 8
  %205 = shl i32 %204, 8
  %206 = or i32 %202, %205
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %206, %208
  %210 = load i32*, i32** %7, align 8
  store i32 %209, i32* %210, align 4
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %194, %190, %165, %147, %138, %112, %104, %87, %69, %62, %55, %47, %38, %29, %20
  %212 = load i32, i32* %4, align 4
  ret i32 %212
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
