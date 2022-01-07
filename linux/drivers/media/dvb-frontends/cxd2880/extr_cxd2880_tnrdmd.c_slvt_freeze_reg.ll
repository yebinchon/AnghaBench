; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_slvt_freeze_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_slvt_freeze_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd2880_tnrdmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %3, align 8
  %6 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %7 = icmp ne %struct.cxd2880_tnrdmd* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %33 [
    i32 129, label %16
    i32 130, label %16
    i32 128, label %32
  ]

16:                                               ; preds = %11, %11
  %17 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32*, i32)** %20, align 8
  %22 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %26 = call i32 %21(%struct.TYPE_5__* %24, i32 %25, i32 0, i32* %4, i32 1)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %16
  br label %34

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %11, %32
  br label %34

34:                                               ; preds = %33, %31
  %35 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %36 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %38, align 8
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %44 = call i32 %39(%struct.TYPE_5__* %42, i32 %43, i32 1, i32 1)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %34, %29, %8
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
