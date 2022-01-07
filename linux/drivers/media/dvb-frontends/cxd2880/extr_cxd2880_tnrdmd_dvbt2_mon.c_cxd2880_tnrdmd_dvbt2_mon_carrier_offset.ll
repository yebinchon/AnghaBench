; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_carrier_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_carrier_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_carrier_offset(%struct.cxd2880_tnrdmd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %13 = icmp ne %struct.cxd2880_tnrdmd* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %141

20:                                               ; preds = %14
  %21 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %141

29:                                               ; preds = %20
  %30 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %31 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %141

38:                                               ; preds = %29
  %39 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %40 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %141

45:                                               ; preds = %38
  %46 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %47 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd* %46, i32* %8, i32* %9, i32* %10)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %52 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %141

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 6
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %59 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %58)
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %141

62:                                               ; preds = %54
  %63 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %64 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %66, align 8
  %68 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %69 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %72 = call i32 %67(%struct.TYPE_3__* %70, i32 %71, i32 0, i32 11)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %77 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %3, align 4
  br label %141

79:                                               ; preds = %62
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)** %83, align 8
  %85 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %86 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %90 = call i32 %84(%struct.TYPE_3__* %87, i32 %88, i32 48, i32* %89, i32 16)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %95 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %3, align 4
  br label %141

97:                                               ; preds = %79
  %98 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %99 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %98)
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = and i32 %101, 15
  %103 = shl i32 %102, 24
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 16
  %107 = or i32 %103, %106
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 8
  %111 = or i32 %107, %110
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %111, %113
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @cxd2880_convert2s_complement(i32 %115, i32 28)
  %117 = load i32*, i32** %5, align 8
  store i32 %116, i32* %117, align 4
  %118 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %119 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %137 [
    i32 132, label %121
    i32 131, label %127
    i32 130, label %127
    i32 129, label %127
    i32 128, label %127
  ]

121:                                              ; preds = %97
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 582
  %125 = mul nsw i32 -1, %124
  %126 = load i32*, i32** %5, align 8
  store i32 %125, i32* %126, align 4
  br label %140

127:                                              ; preds = %97, %97, %97, %97
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %131 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %129, %132
  %134 = sdiv i32 %133, 940
  %135 = mul nsw i32 -1, %134
  %136 = load i32*, i32** %5, align 8
  store i32 %135, i32* %136, align 4
  br label %140

137:                                              ; preds = %97
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %141

140:                                              ; preds = %127, %121
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %137, %93, %75, %57, %50, %43, %35, %26, %17
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd*, i32*, i32*, i32*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @cxd2880_convert2s_complement(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
