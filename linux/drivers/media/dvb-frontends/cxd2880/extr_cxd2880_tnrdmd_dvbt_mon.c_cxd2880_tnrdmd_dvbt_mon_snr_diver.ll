; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt_mon.c_cxd2880_tnrdmd_dvbt_mon_snr_diver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt_mon.c_cxd2880_tnrdmd_dvbt_mon_snr_diver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.cxd2880_tnrdmd* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_snr_diver(%struct.cxd2880_tnrdmd* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxd2880_tnrdmd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %14 = icmp ne %struct.cxd2880_tnrdmd* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %18, %15, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %118

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  store i32 -1000000, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 -1000000, i32* %29, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 -1000000, i32* %30, align 4
  %31 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %118

39:                                               ; preds = %27
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %118

48:                                               ; preds = %39
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CXD2880_DTV_SYS_DVBT, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %118

57:                                               ; preds = %48
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %59 = call i32 @dvbt_read_snr_reg(%struct.cxd2880_tnrdmd* %58, i64* %10)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @dvbt_calc_snr(%struct.cxd2880_tnrdmd* %63, i64 %64, i32* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i64 0, i64* %10, align 8
  br label %70

70:                                               ; preds = %69, %62
  br label %80

71:                                               ; preds = %57
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i64 0, i64* %10, align 8
  br label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %118

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %11, align 8
  %84 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %85 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %84, i32 0, i32 3
  %86 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %85, align 8
  %87 = call i32 @dvbt_read_snr_reg(%struct.cxd2880_tnrdmd* %86, i64* %10)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %80
  %91 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %92 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %91, i32 0, i32 3
  %93 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @dvbt_calc_snr(%struct.cxd2880_tnrdmd* %93, i64 %94, i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i64 0, i64* %10, align 8
  br label %100

100:                                              ; preds = %99, %90
  br label %110

101:                                              ; preds = %80
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @EAGAIN, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i64 0, i64* %10, align 8
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %5, align 4
  br label %118

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109, %100
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %11, align 8
  %114 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @dvbt_calc_snr(%struct.cxd2880_tnrdmd* %114, i64 %115, i32* %116)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %110, %107, %77, %54, %45, %36, %24
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @dvbt_read_snr_reg(%struct.cxd2880_tnrdmd*, i64*) #1

declare dso_local i32 @dvbt_calc_snr(%struct.cxd2880_tnrdmd*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
