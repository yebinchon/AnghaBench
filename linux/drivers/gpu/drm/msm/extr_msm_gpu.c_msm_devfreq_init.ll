; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_devfreq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_devfreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.msm_gpu = type { %struct.TYPE_8__, %struct.TYPE_6__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@msm_devfreq_profile = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@DEVFREQ_GOV_SIMPLE_ONDEMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Couldn't initialize GPU devfreq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @msm_devfreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_devfreq_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %3 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %4 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %3, i32 0, i32 3
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %12 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @msm_devfreq_profile, i32 0, i32 0), align 4
  %14 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %15 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* @DEVFREQ_GOV_SIMPLE_ONDEMAND, align 4
  %19 = call i32* @devm_devfreq_add_device(i32* %17, %struct.TYPE_9__* @msm_devfreq_profile, i32 %18, i32* null)
  %20 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %21 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32* %19, i32** %22, align 8
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %24 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %10
  %30 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %31 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @DRM_DEV_ERROR(i32* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %36 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %29, %10
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %40 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @devfreq_suspend_device(i32* %42)
  br label %44

44:                                               ; preds = %38, %9
  ret void
}

declare dso_local i32* @devm_devfreq_add_device(i32*, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*) #1

declare dso_local i32 @devfreq_suspend_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
