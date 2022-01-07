; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_adreno_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_adreno_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adreno_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.adreno_rev = type { i32, i32, i32, i32 }

@gpulist = common dso_local global %struct.adreno_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.adreno_info* @adreno_info(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.adreno_info*, align 8
  %4 = alloca %struct.adreno_rev, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adreno_info*, align 8
  %7 = bitcast %struct.adreno_rev* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %58, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.adreno_info*, %struct.adreno_info** @gpulist, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.adreno_info* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %10
  %16 = load %struct.adreno_info*, %struct.adreno_info** @gpulist, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.adreno_info, %struct.adreno_info* %16, i64 %18
  store %struct.adreno_info* %19, %struct.adreno_info** %6, align 8
  %20 = load %struct.adreno_info*, %struct.adreno_info** %6, align 8
  %21 = getelementptr inbounds %struct.adreno_info, %struct.adreno_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %4, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @_rev_match(i32 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %15
  %29 = load %struct.adreno_info*, %struct.adreno_info** %6, align 8
  %30 = getelementptr inbounds %struct.adreno_info, %struct.adreno_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %4, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @_rev_match(i32 %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %28
  %38 = load %struct.adreno_info*, %struct.adreno_info** %6, align 8
  %39 = getelementptr inbounds %struct.adreno_info, %struct.adreno_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @_rev_match(i32 %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load %struct.adreno_info*, %struct.adreno_info** %6, align 8
  %48 = getelementptr inbounds %struct.adreno_info, %struct.adreno_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @_rev_match(i32 %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load %struct.adreno_info*, %struct.adreno_info** %6, align 8
  store %struct.adreno_info* %56, %struct.adreno_info** %3, align 8
  br label %62

57:                                               ; preds = %46, %37, %28, %15
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %10

61:                                               ; preds = %10
  store %struct.adreno_info* null, %struct.adreno_info** %3, align 8
  br label %62

62:                                               ; preds = %61, %55
  %63 = load %struct.adreno_info*, %struct.adreno_info** %3, align 8
  ret %struct.adreno_info* %63
}

declare dso_local i32 @ARRAY_SIZE(%struct.adreno_info*) #1

declare dso_local i64 @_rev_match(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
