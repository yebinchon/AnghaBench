; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.adreno_gpu = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 (%struct.msm_gpu*, i32*)* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: invalid param: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adreno_get_param(%struct.msm_gpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.adreno_gpu*, align 8
  %9 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %11 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %10)
  store %struct.adreno_gpu* %11, %struct.adreno_gpu** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %99 [
    i32 132, label %13
    i32 133, label %20
    i32 134, label %25
    i32 136, label %27
    i32 131, label %51
    i32 128, label %57
    i32 130, label %87
    i32 129, label %92
    i32 135, label %94
  ]

13:                                               ; preds = %3
  %14 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %15 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %4, align 4
  br label %107

20:                                               ; preds = %3
  %21 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %22 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %107

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  store i32 1048576, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %107

27:                                               ; preds = %3
  %28 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %29 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %33 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %31, %36
  %38 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %39 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %37, %42
  %44 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %45 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 24
  %49 = or i32 %43, %48
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %107

51:                                               ; preds = %3
  %52 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %53 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %107

57:                                               ; preds = %3
  %58 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %59 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32 (%struct.msm_gpu*, i32*)*, i32 (%struct.msm_gpu*, i32*)** %61, align 8
  %63 = icmp ne i32 (%struct.msm_gpu*, i32*)* %62, null
  br i1 %63, label %64, label %84

64:                                               ; preds = %57
  %65 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %66 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %65, i32 0, i32 3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @pm_runtime_get_sync(i32* %68)
  %70 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %71 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32 (%struct.msm_gpu*, i32*)*, i32 (%struct.msm_gpu*, i32*)** %73, align 8
  %75 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 %74(%struct.msm_gpu* %75, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %79 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = call i32 @pm_runtime_put_autosuspend(i32* %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %107

84:                                               ; preds = %57
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %107

87:                                               ; preds = %3
  %88 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %89 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %4, align 4
  br label %107

92:                                               ; preds = %3
  %93 = load i32*, i32** %7, align 8
  store i32 0, i32* %93, align 4
  store i32 0, i32* %4, align 4
  br label %107

94:                                               ; preds = %3
  %95 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %96 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  store i32 0, i32* %4, align 4
  br label %107

99:                                               ; preds = %3
  %100 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %101 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %99, %94, %92, %87, %84, %64, %51, %27, %25, %20, %13
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
