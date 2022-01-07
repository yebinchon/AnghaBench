; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt_mon.c_cxd2880_tnrdmd_dvbt_mon_tps_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt_mon.c_cxd2880_tnrdmd_dvbt_mon_tps_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_5__*, %struct.cxd2880_tnrdmd* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)* }
%struct.cxd2880_dvbt_tpsinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_dvbt_tpsinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca %struct.cxd2880_dvbt_tpsinfo*, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store %struct.cxd2880_dvbt_tpsinfo* %1, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %10 = icmp ne %struct.cxd2880_tnrdmd* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %13 = icmp ne %struct.cxd2880_dvbt_tpsinfo* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %204

17:                                               ; preds = %11
  %18 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %204

26:                                               ; preds = %17
  %27 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %28 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CXD2880_DTV_SYS_DVBT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %204

35:                                               ; preds = %26
  %36 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %37 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %204

42:                                               ; preds = %35
  %43 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %44 = call i32 @is_tps_locked(%struct.cxd2880_tnrdmd* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %49 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %48)
  %50 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %57 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %56, i32 0, i32 4
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %57, align 8
  %59 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %60 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(%struct.cxd2880_tnrdmd* %58, %struct.cxd2880_dvbt_tpsinfo* %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %47
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %204

63:                                               ; preds = %42
  %64 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %65 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %67, align 8
  %69 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %70 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %69, i32 0, i32 3
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %73 = call i32 %68(%struct.TYPE_5__* %71, i32 %72, i32 0, i32 13)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %78 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %204

80:                                               ; preds = %63
  %81 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %82 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %81, i32 0, i32 3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %84, align 8
  %86 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %87 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %86, i32 0, i32 3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %90 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %91 = call i32 %85(%struct.TYPE_5__* %88, i32 %89, i32 41, i32* %90, i32 7)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %96 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %204

98:                                               ; preds = %80
  %99 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %100 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %102, align 8
  %104 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %105 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %104, i32 0, i32 3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %108 = call i32 %103(%struct.TYPE_5__* %106, i32 %107, i32 0, i32 17)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %113 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %112)
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %204

115:                                              ; preds = %98
  %116 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %117 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %116, i32 0, i32 3
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %119, align 8
  %121 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %122 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %121, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %125 = call i32 %120(%struct.TYPE_5__* %123, i32 %124, i32 213, i32* %7, i32 1)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %115
  %129 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %130 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %204

132:                                              ; preds = %115
  %133 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %134 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %133)
  %135 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = ashr i32 %136, 6
  %138 = and i32 %137, 3
  %139 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %140 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = ashr i32 %142, 3
  %144 = and i32 %143, 7
  %145 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %146 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = and i32 %148, 7
  %150 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %151 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 5
  %155 = and i32 %154, 7
  %156 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %157 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 3
  %161 = and i32 %160, 3
  %162 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %163 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 4
  %164 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 1
  %167 = and i32 %166, 3
  %168 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %169 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 4
  %170 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 2
  %171 = load i32, i32* %170, align 8
  %172 = ashr i32 %171, 6
  %173 = and i32 %172, 3
  %174 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %175 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 4
  %176 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 2
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, 63
  %179 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %180 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 4
  %181 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 8
  %184 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 4
  %185 = load i32, i32* %184, align 16
  %186 = or i32 %183, %185
  %187 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %188 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %187, i32 0, i32 8
  store i32 %186, i32* %188, align 4
  %189 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 63
  %192 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %193 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %192, i32 0, i32 9
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, 63
  %197 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %198 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %197, i32 0, i32 10
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %7, align 4
  %200 = and i32 %199, 1
  %201 = load %struct.cxd2880_dvbt_tpsinfo*, %struct.cxd2880_dvbt_tpsinfo** %5, align 8
  %202 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %201, i32 0, i32 11
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %132, %128, %111, %94, %76, %61, %40, %32, %23, %14
  %205 = load i32, i32* %3, align 4
  ret i32 %205
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
