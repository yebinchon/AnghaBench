; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_data_plps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_data_plps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_data_plps(%struct.cxd2880_tnrdmd* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %11 = icmp ne %struct.cxd2880_tnrdmd* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %200

18:                                               ; preds = %12
  %19 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %200

27:                                               ; preds = %18
  %28 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %200

36:                                               ; preds = %27
  %37 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %38 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %200

45:                                               ; preds = %36
  %46 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %47 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %49, align 8
  %51 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %52 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %51, i32 0, i32 3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %55 = call i32 %50(%struct.TYPE_7__* %53, i32 %54, i32 0, i32 11)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %200

60:                                               ; preds = %45
  %61 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %62 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %200

67:                                               ; preds = %60
  %68 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %69 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %68, i32 0, i32 3
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)** %71, align 8
  %73 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %74 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %73, i32 0, i32 3
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %77 = call i32 %72(%struct.TYPE_7__* %75, i32 %76, i32 134, i32* %8, i32 1)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %82 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %200

84:                                               ; preds = %67
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %90 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %89)
  %91 = load i32, i32* @EAGAIN, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %200

93:                                               ; preds = %84
  %94 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %95 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %94, i32 0, i32 3
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)** %97, align 8
  %99 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %100 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %99, i32 0, i32 3
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 %98(%struct.TYPE_7__* %101, i32 %102, i32 193, i32* %103, i32 1)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %93
  %108 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %109 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %4, align 4
  br label %200

111:                                              ; preds = %93
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %117 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %200

120:                                              ; preds = %111
  %121 = load i32*, i32** %6, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %125 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %124)
  store i32 0, i32* %4, align 4
  br label %200

126:                                              ; preds = %120
  %127 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %128 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %127, i32 0, i32 3
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)** %130, align 8
  %132 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %133 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %132, i32 0, i32 3
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %138, 62
  br i1 %139, label %140, label %141

140:                                              ; preds = %126
  br label %144

141:                                              ; preds = %126
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %142, align 4
  br label %144

144:                                              ; preds = %141, %140
  %145 = phi i32 [ 62, %140 ], [ %143, %141 ]
  %146 = call i32 %131(%struct.TYPE_7__* %134, i32 %135, i32 194, i32* %136, i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %151 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %150)
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %4, align 4
  br label %200

153:                                              ; preds = %144
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %155, 62
  br i1 %156, label %157, label %197

157:                                              ; preds = %153
  %158 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %159 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %158, i32 0, i32 3
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %161, align 8
  %163 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %164 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %163, i32 0, i32 3
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %167 = call i32 %162(%struct.TYPE_7__* %165, i32 %166, i32 0, i32 12)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %157
  %171 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %172 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %171)
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %4, align 4
  br label %200

174:                                              ; preds = %157
  %175 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %176 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %175, i32 0, i32 3
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = load i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)** %178, align 8
  %180 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %181 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %180, i32 0, i32 3
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 62
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, 62
  %189 = call i32 %179(%struct.TYPE_7__* %182, i32 %183, i32 16, i32* %185, i32 %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %174
  %193 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %194 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %193)
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %4, align 4
  br label %200

196:                                              ; preds = %174
  br label %197

197:                                              ; preds = %196, %153
  %198 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %199 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %198)
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %197, %192, %170, %149, %123, %115, %107, %88, %80, %65, %58, %42, %33, %24, %15
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
