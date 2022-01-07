; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.h_msm_gpu_crashstate_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.h_msm_gpu_crashstate_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @msm_gpu_crashstate_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_gpu_crashstate_put(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %3 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %4 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %9 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %14 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64 (i32*)*, i64 (i32*)** %16, align 8
  %18 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %19 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 %17(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %25 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %23, %12
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %29 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
