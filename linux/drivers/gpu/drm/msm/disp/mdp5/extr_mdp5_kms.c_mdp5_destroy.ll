; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mdp5_kms = type { i32, i32, i32, i64, i32*, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @mdp5_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_destroy(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mdp5_kms* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mdp5_kms* %6, %struct.mdp5_kms** %3, align 8
  %7 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %8 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %13 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @mdp5_ctlm_destroy(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %18 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %23 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mdp5_smp_destroy(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %28 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %33 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @mdp5_cfg_destroy(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %52, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %40 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %45 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kfree(i32 %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %37

55:                                               ; preds = %37
  %56 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %57 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @pm_runtime_disable(i32* %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %66 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %65, i32 0, i32 2
  %67 = call i32 @drm_atomic_private_obj_fini(i32* %66)
  %68 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %69 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %68, i32 0, i32 1
  %70 = call i32 @drm_modeset_lock_fini(i32* %69)
  ret void
}

declare dso_local %struct.mdp5_kms* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mdp5_ctlm_destroy(i64) #1

declare dso_local i32 @mdp5_smp_destroy(i64) #1

declare dso_local i32 @mdp5_cfg_destroy(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @drm_atomic_private_obj_fini(i32*) #1

declare dso_local i32 @drm_modeset_lock_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
