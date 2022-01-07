; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_pid_ftr_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_pid_ftr_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)* }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd_pid_ftr_cfg*)* @pid_ftr_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pid_ftr_setting(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd_pid_ftr_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca %struct.cxd2880_tnrdmd_pid_ftr_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [65 x i32], align 16
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store %struct.cxd2880_tnrdmd_pid_ftr_cfg* %1, %struct.cxd2880_tnrdmd_pid_ftr_cfg** %5, align 8
  %9 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %10 = icmp ne %struct.cxd2880_tnrdmd* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %121

14:                                               ; preds = %2
  %15 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %18, align 8
  %20 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %24 = call i32 %19(%struct.TYPE_6__* %22, i32 %23, i32 0, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %121

29:                                               ; preds = %14
  %30 = load %struct.cxd2880_tnrdmd_pid_ftr_cfg*, %struct.cxd2880_tnrdmd_pid_ftr_cfg** %5, align 8
  %31 = icmp ne %struct.cxd2880_tnrdmd_pid_ftr_cfg* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %34 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %36, align 8
  %38 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %39 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %42 = call i32 %37(%struct.TYPE_6__* %40, i32 %41, i32 80, i32 2)
  store i32 %42, i32* %3, align 4
  br label %121

43:                                               ; preds = %29
  %44 = load %struct.cxd2880_tnrdmd_pid_ftr_cfg*, %struct.cxd2880_tnrdmd_pid_ftr_cfg** %5, align 8
  %45 = getelementptr inbounds %struct.cxd2880_tnrdmd_pid_ftr_cfg, %struct.cxd2880_tnrdmd_pid_ftr_cfg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = getelementptr inbounds [65 x i32], [65 x i32]* %8, i64 0, i64 0
  store i32 %49, i32* %50, align 16
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %106, %43
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 32
  br i1 %53, label %54, label %109

54:                                               ; preds = %51
  %55 = load %struct.cxd2880_tnrdmd_pid_ftr_cfg*, %struct.cxd2880_tnrdmd_pid_ftr_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.cxd2880_tnrdmd_pid_ftr_cfg, %struct.cxd2880_tnrdmd_pid_ftr_cfg* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %54
  %65 = load %struct.cxd2880_tnrdmd_pid_ftr_cfg*, %struct.cxd2880_tnrdmd_pid_ftr_cfg** %5, align 8
  %66 = getelementptr inbounds %struct.cxd2880_tnrdmd_pid_ftr_cfg, %struct.cxd2880_tnrdmd_pid_ftr_cfg* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 8
  %74 = or i32 %73, 32
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 1, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [65 x i32], [65 x i32]* %8, i64 0, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = load %struct.cxd2880_tnrdmd_pid_ftr_cfg*, %struct.cxd2880_tnrdmd_pid_ftr_cfg** %5, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd_pid_ftr_cfg, %struct.cxd2880_tnrdmd_pid_ftr_cfg* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 255
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 2, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [65 x i32], [65 x i32]* %8, i64 0, i64 %92
  store i32 %88, i32* %93, align 4
  br label %105

94:                                               ; preds = %54
  %95 = load i32, i32* %6, align 4
  %96 = mul nsw i32 %95, 2
  %97 = add nsw i32 1, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [65 x i32], [65 x i32]* %8, i64 0, i64 %98
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = mul nsw i32 %100, 2
  %102 = add nsw i32 2, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [65 x i32], [65 x i32]* %8, i64 0, i64 %103
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %94, %64
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %51

109:                                              ; preds = %51
  %110 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %111 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)** %113, align 8
  %115 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %116 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %119 = getelementptr inbounds [65 x i32], [65 x i32]* %8, i64 0, i64 0
  %120 = call i32 %114(%struct.TYPE_6__* %117, i32 %118, i32 80, i32* %119, i32 65)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %109, %32, %27, %11
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
