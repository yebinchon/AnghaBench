; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2.c_cxd2880_tnrdmd_dvbt2_diver_fef_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2.c_cxd2880_tnrdmd_dvbt2_diver_fef_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)* }
%struct.cxd2880_dvbt2_ofdm = type { i32 }

@cxd2880_tnrdmd_dvbt2_diver_fef_setting.data = internal constant [12 x i32] [i32 0, i32 8, i32 0, i32 16, i32 0, i32 32, i32 0, i32 64, i32 0, i32 128, i32 1, i32 0], align 16
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_DIVERMODE_SINGLE = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_diver_fef_setting(%struct.cxd2880_tnrdmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd2880_tnrdmd*, align 8
  %4 = alloca %struct.cxd2880_dvbt2_ofdm, align 4
  %5 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %3, align 8
  %6 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %7 = icmp ne %struct.cxd2880_tnrdmd* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %74

20:                                               ; preds = %11
  %21 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %74

29:                                               ; preds = %20
  %30 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %31 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SINGLE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %74

36:                                               ; preds = %29
  %37 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %38 = call i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(%struct.cxd2880_tnrdmd* %37, %struct.cxd2880_dvbt2_ofdm* %4)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %74

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, %struct.cxd2880_dvbt2_ofdm* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %74

48:                                               ; preds = %43
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %52, align 8
  %54 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %58 = call i32 %53(%struct.TYPE_3__* %56, i32 %57, i32 0, i32 29)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %74

63:                                               ; preds = %48
  %64 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %65 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)** %67, align 8
  %69 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %70 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %73 = call i32 %68(%struct.TYPE_3__* %71, i32 %72, i32 71, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @cxd2880_tnrdmd_dvbt2_diver_fef_setting.data, i64 0, i64 0), i32 12)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %63, %61, %47, %41, %35, %26, %17, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(%struct.cxd2880_tnrdmd*, %struct.cxd2880_dvbt2_ofdm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
