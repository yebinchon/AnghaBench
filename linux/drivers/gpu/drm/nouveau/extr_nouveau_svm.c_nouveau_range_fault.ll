; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_range_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_range_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_svmm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hmm_range = type { i64, i64 }

@HMM_RANGE_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_svmm*, %struct.hmm_range*)* @nouveau_range_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_range_fault(%struct.nouveau_svmm* %0, %struct.hmm_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_svmm*, align 8
  %5 = alloca %struct.hmm_range*, align 8
  %6 = alloca i64, align 8
  store %struct.nouveau_svmm* %0, %struct.nouveau_svmm** %4, align 8
  store %struct.hmm_range* %1, %struct.hmm_range** %5, align 8
  %7 = load %struct.hmm_range*, %struct.hmm_range** %5, align 8
  %8 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.hmm_range*, %struct.hmm_range** %5, align 8
  %10 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %9, i32 0, i32 0
  store i64 -1, i64* %10, align 8
  %11 = load %struct.hmm_range*, %struct.hmm_range** %5, align 8
  %12 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %12, i32 0, i32 1
  %14 = call i64 @hmm_range_register(%struct.hmm_range* %11, i32* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @up_read(i32* %21)
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.hmm_range*, %struct.hmm_range** %5, align 8
  %27 = load i32, i32* @HMM_RANGE_DEFAULT_TIMEOUT, align 4
  %28 = call i32 @hmm_range_wait_until_valid(%struct.hmm_range* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  %32 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @up_read(i32* %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %61

38:                                               ; preds = %25
  %39 = load %struct.hmm_range*, %struct.hmm_range** %5, align 8
  %40 = call i64 @hmm_range_fault(%struct.hmm_range* %39, i32 0)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.nouveau_svmm*, %struct.nouveau_svmm** %4, align 8
  %52 = getelementptr inbounds %struct.nouveau_svmm, %struct.nouveau_svmm* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @up_read(i32* %54)
  %56 = load %struct.hmm_range*, %struct.hmm_range** %5, align 8
  %57 = call i32 @hmm_range_unregister(%struct.hmm_range* %56)
  %58 = load i64, i64* %6, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %50, %30, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @hmm_range_register(%struct.hmm_range*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @hmm_range_wait_until_valid(%struct.hmm_range*, i32) #1

declare dso_local i64 @hmm_range_fault(%struct.hmm_range*, i32) #1

declare dso_local i32 @hmm_range_unregister(%struct.hmm_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
