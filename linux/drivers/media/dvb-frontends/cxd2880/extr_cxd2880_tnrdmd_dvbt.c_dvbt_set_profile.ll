; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt.c_dvbt_set_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt.c_dvbt_set_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@CXD2880_DVBT_PROFILE_HP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32)* @dvbt_set_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbt_set_profile(%struct.cxd2880_tnrdmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %8 = icmp ne %struct.cxd2880_tnrdmd* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %16, align 8
  %18 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %22 = call i32 %17(%struct.TYPE_3__* %20, i32 %21, i32 0, i32 16)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %12
  %28 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %31, align 8
  %33 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %34 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @CXD2880_DVBT_PROFILE_HP, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 1
  %42 = call i32 %32(%struct.TYPE_3__* %35, i32 %36, i32 103, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %27, %25, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
