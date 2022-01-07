; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_dvbt2_read_snr_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_dvbt2_read_snr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32*)* @dvbt2_read_snr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbt2_read_snr_reg(%struct.cxd2880_tnrdmd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %12 = icmp ne %struct.cxd2880_tnrdmd* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %89

19:                                               ; preds = %13
  %20 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %21 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %89

26:                                               ; preds = %19
  %27 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %28 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(%struct.cxd2880_tnrdmd* %27, i32* %6, i32* %7, i32* %8)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %33 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 6
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %40 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %39)
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %35
  %44 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %45 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %47, align 8
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %53 = call i32 %48(%struct.TYPE_3__* %51, i32 %52, i32 0, i32 11)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %58 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %89

60:                                               ; preds = %43
  %61 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %62 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)** %64, align 8
  %66 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %67 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %71 = call i32 %65(%struct.TYPE_3__* %68, i32 %69, i32 19, i32* %70, i32 8)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %76 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %89

78:                                               ; preds = %60
  %79 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %80 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %79)
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %83, %85
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %78, %74, %56, %38, %31, %24, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
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
