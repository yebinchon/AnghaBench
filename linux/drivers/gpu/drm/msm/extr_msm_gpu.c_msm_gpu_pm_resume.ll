; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gpu_pm_resume(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %6 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %10 = call i32 @enable_pwrrail(%struct.msm_gpu* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %17 = call i32 @enable_clk(%struct.msm_gpu* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %24 = call i32 @enable_axi(%struct.msm_gpu* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %22
  %30 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %31 = call i32 @msm_gpu_resume_devfreq(%struct.msm_gpu* %30)
  %32 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %33 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %27, %20, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @enable_pwrrail(%struct.msm_gpu*) #1

declare dso_local i32 @enable_clk(%struct.msm_gpu*) #1

declare dso_local i32 @enable_axi(%struct.msm_gpu*) #1

declare dso_local i32 @msm_gpu_resume_devfreq(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
