; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_set_hwcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_set_hwcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }

@a5xx_hwcg = common dso_local global %struct.TYPE_3__* null, align 8
@REG_A5XX_RBBM_CLOCK_DELAY_GPMU = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_CLOCK_HYST_GPMU = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_CLOCK_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_RBBM_ISDB_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a5xx_set_hwcg(%struct.msm_gpu* %0, i32 %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adreno_gpu*, align 8
  %6 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_hwcg, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_hwcg, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @a5xx_hwcg, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ %30, %24 ], [ 0, %31 ]
  %34 = call i32 @gpu_write(%struct.msm_gpu* %15, i32 %21, i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load %struct.adreno_gpu*, %struct.adreno_gpu** %5, align 8
  %40 = call i64 @adreno_is_a540(%struct.adreno_gpu* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %44 = load i32, i32* @REG_A5XX_RBBM_CLOCK_DELAY_GPMU, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1904, i32 0
  %49 = call i32 @gpu_write(%struct.msm_gpu* %43, i32 %44, i32 %48)
  %50 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %51 = load i32, i32* @REG_A5XX_RBBM_CLOCK_HYST_GPMU, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 4, i32 0
  %56 = call i32 @gpu_write(%struct.msm_gpu* %50, i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %42, %38
  %58 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %59 = load i32, i32* @REG_A5XX_RBBM_CLOCK_CNTL, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 -1431787008, i32 0
  %64 = call i32 @gpu_write(%struct.msm_gpu* %58, i32 %59, i32 %63)
  %65 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %66 = load i32, i32* @REG_A5XX_RBBM_ISDB_CNT, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 386, i32 384
  %71 = call i32 @gpu_write(%struct.msm_gpu* %65, i32 %66, i32 %70)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i64 @adreno_is_a540(%struct.adreno_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
