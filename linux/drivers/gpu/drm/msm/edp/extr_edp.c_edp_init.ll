; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp.c_edp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp.c_edp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_edp = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"no eDP device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"eDP probed=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msm_edp* (%struct.platform_device*)* @edp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msm_edp* @edp_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.msm_edp*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.msm_edp*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.msm_edp* null, %struct.msm_edp** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = icmp ne %struct.platform_device* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENXIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.msm_edp* @devm_kzalloc(i32* %14, i32 8, i32 %15)
  store %struct.msm_edp* %16, %struct.msm_edp** %4, align 8
  %17 = load %struct.msm_edp*, %struct.msm_edp** %4, align 8
  %18 = icmp ne %struct.msm_edp* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %38

22:                                               ; preds = %12
  %23 = load %struct.msm_edp*, %struct.msm_edp** %4, align 8
  %24 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.msm_edp* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.msm_edp*, %struct.msm_edp** %4, align 8
  %27 = getelementptr inbounds %struct.msm_edp, %struct.msm_edp* %26, i32 0, i32 0
  store %struct.platform_device* %25, %struct.platform_device** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.msm_edp*, %struct.msm_edp** %4, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.msm_edp* %29)
  %31 = load %struct.msm_edp*, %struct.msm_edp** %4, align 8
  %32 = call i32 @msm_edp_ctrl_init(%struct.msm_edp* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %38

36:                                               ; preds = %22
  %37 = load %struct.msm_edp*, %struct.msm_edp** %4, align 8
  store %struct.msm_edp* %37, %struct.msm_edp** %2, align 8
  br label %47

38:                                               ; preds = %35, %19, %8
  %39 = load %struct.msm_edp*, %struct.msm_edp** %4, align 8
  %40 = icmp ne %struct.msm_edp* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call i32 @edp_destroy(%struct.platform_device* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.msm_edp* @ERR_PTR(i32 %45)
  store %struct.msm_edp* %46, %struct.msm_edp** %2, align 8
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.msm_edp*, %struct.msm_edp** %2, align 8
  ret %struct.msm_edp* %48
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.msm_edp* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @DBG(i8*, %struct.msm_edp*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.msm_edp*) #1

declare dso_local i32 @msm_edp_ctrl_init(%struct.msm_edp*) #1

declare dso_local i32 @edp_destroy(%struct.platform_device*) #1

declare dso_local %struct.msm_edp* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
