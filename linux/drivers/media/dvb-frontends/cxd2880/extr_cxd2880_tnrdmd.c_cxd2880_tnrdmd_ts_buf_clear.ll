; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_ts_buf_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_ts_buf_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_ts_buf_clear(%struct.cxd2880_tnrdmd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxd2880_tnrdmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %14 = icmp ne %struct.cxd2880_tnrdmd* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %86

18:                                               ; preds = %4
  %19 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %86

27:                                               ; preds = %18
  %28 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %86

42:                                               ; preds = %33, %27
  %43 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %44 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_3__*, i32, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32)** %46, align 8
  %48 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %49 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %52 = call i32 %47(%struct.TYPE_3__* %50, i32 %51, i32 0, i32 0)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %86

57:                                               ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 2, i32 0
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %76 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)** %78, align 8
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %85 = call i32 %79(%struct.TYPE_3__* %82, i32 %83, i32 159, i32* %84, i32 2)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %57, %55, %39, %24, %15
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
