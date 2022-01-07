; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { %struct.a6xx_gmu }
%struct.a6xx_gmu = type { i64, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a6xx_gmu_set_freq(%struct.msm_gpu* %0, i64 %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca %struct.a6xx_gpu*, align 8
  %7 = alloca %struct.a6xx_gmu*, align 8
  %8 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %10 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %9)
  store %struct.adreno_gpu* %10, %struct.adreno_gpu** %5, align 8
  %11 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %12 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %11)
  store %struct.a6xx_gpu* %12, %struct.a6xx_gpu** %6, align 8
  %13 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %6, align 8
  %14 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %13, i32 0, i32 0
  store %struct.a6xx_gmu* %14, %struct.a6xx_gmu** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %7, align 8
  %17 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %48

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %7, align 8
  %25 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %7, align 8
  %32 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %30, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %22

44:                                               ; preds = %39, %22
  %45 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @__a6xx_gmu_set_freq(%struct.a6xx_gmu* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %20
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @__a6xx_gmu_set_freq(%struct.a6xx_gmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
