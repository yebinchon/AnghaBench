; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_data_plp_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_cxd2880_tnrdmd_dvbt2_mon_data_plp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_data_plp_error(%struct.cxd2880_tnrdmd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %9 = icmp ne %struct.cxd2880_tnrdmd* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %116

16:                                               ; preds = %10
  %17 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %116

25:                                               ; preds = %16
  %26 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %27 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %116

34:                                               ; preds = %25
  %35 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %36 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %116

43:                                               ; preds = %34
  %44 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %45 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %116

50:                                               ; preds = %43
  %51 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %52 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32)** %54, align 8
  %56 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %57 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %60 = call i32 %55(%struct.TYPE_4__* %58, i32 %59, i32 0, i32 11)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %65 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %116

67:                                               ; preds = %50
  %68 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %69 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %68, i32 0, i32 3
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)** %71, align 8
  %73 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %74 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %77 = call i32 %72(%struct.TYPE_4__* %75, i32 %76, i32 134, i32* %6, i32 1)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %82 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %116

84:                                               ; preds = %67
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %90 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %89)
  %91 = load i32, i32* @EAGAIN, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %116

93:                                               ; preds = %84
  %94 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %95 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)** %97, align 8
  %99 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %100 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %103 = call i32 %98(%struct.TYPE_4__* %101, i32 %102, i32 192, i32* %6, i32 1)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %108 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %116

110:                                              ; preds = %93
  %111 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %112 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %111)
  %113 = load i32, i32* %6, align 4
  %114 = and i32 %113, 1
  %115 = load i32*, i32** %5, align 8
  store i32 %114, i32* %115, align 4
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %106, %88, %80, %63, %48, %40, %31, %22, %13
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
