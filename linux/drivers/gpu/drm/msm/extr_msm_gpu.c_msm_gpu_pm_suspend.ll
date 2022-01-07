; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gpu_pm_suspend(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %6 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %10 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @devfreq_suspend_device(i32 %12)
  %14 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %15 = call i32 @disable_axi(%struct.msm_gpu* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %22 = call i32 @disable_clk(%struct.msm_gpu* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %29 = call i32 @disable_pwrrail(%struct.msm_gpu* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %32, %25, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @devfreq_suspend_device(i32) #1

declare dso_local i32 @disable_axi(%struct.msm_gpu*) #1

declare dso_local i32 @disable_clk(%struct.msm_gpu*) #1

declare dso_local i32 @disable_pwrrail(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
