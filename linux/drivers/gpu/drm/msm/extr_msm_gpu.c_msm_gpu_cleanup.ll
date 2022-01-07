; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_8__*, i32, i32**, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32)* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gpu_cleanup(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %4 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %5 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %9 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %8, i32 0, i32 3
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %37, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %18 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32** %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %24 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @msm_ringbuffer_destroy(i32* %29)
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %32 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %22
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %15

40:                                               ; preds = %15
  %41 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %42 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %45 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @msm_gem_kernel_put(i32 %43, %struct.TYPE_8__* %46, i32 0)
  %48 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %49 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @IS_ERR_OR_NULL(%struct.TYPE_8__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %40
  %54 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %55 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_7__*, i32*, i32)*, i32 (%struct.TYPE_7__*, i32*, i32)** %61, align 8
  %63 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %64 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 %62(%struct.TYPE_7__* %67, i32* null, i32 0)
  %69 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %70 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = call i32 @msm_gem_address_space_put(%struct.TYPE_8__* %71)
  br label %73

73:                                               ; preds = %53, %40
  ret void
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @msm_ringbuffer_destroy(i32*) #1

declare dso_local i32 @msm_gem_kernel_put(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.TYPE_8__*) #1

declare dso_local i32 @msm_gem_address_space_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
