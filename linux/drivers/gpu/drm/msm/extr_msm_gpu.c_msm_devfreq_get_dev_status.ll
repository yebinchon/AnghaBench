; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_devfreq_get_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_devfreq_get_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devfreq_dev_status = type { i32, i32, i32 }
%struct.msm_gpu = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.msm_gpu*)*, i32 (%struct.msm_gpu*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.devfreq_dev_status*)* @msm_devfreq_get_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_devfreq_get_dev_status(%struct.device* %0, %struct.devfreq_dev_status* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.devfreq_dev_status*, align 8
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.devfreq_dev_status* %1, %struct.devfreq_dev_status** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @to_platform_device(%struct.device* %7)
  %9 = call %struct.msm_gpu* @platform_get_drvdata(i32 %8)
  store %struct.msm_gpu* %9, %struct.msm_gpu** %5, align 8
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %11 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32 (%struct.msm_gpu*)*, i32 (%struct.msm_gpu*)** %13, align 8
  %15 = icmp ne i32 (%struct.msm_gpu*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %18 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32 (%struct.msm_gpu*)*, i32 (%struct.msm_gpu*)** %20, align 8
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %23 = call i32 %21(%struct.msm_gpu* %22)
  %24 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %25 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %28 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_get_rate(i32 %29)
  %31 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %32 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %16
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %35 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.msm_gpu*)*, i32 (%struct.msm_gpu*)** %37, align 8
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %40 = call i32 %38(%struct.msm_gpu* %39)
  %41 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %42 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = call i32 (...) @ktime_get()
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %46 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ktime_us_delta(i32 %44, i32 %48)
  %50 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %4, align 8
  %51 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %54 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  ret i32 0
}

declare dso_local %struct.msm_gpu* @platform_get_drvdata(i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_us_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
