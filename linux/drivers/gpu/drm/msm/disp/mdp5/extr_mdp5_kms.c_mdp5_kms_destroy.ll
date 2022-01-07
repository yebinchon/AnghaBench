; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_kms_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_kms_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { %struct.msm_gem_address_space* }
%struct.msm_gem_address_space = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }
%struct.mdp5_kms = type { i32, i32, i32*, i32* }

@iommu_ports = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_kms*)* @mdp5_kms_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_kms_destroy(%struct.msm_kms* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.msm_gem_address_space*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_kms* %0, %struct.msm_kms** %2, align 8
  %6 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %7 = call i32 @to_mdp_kms(%struct.msm_kms* %6)
  %8 = call %struct.mdp5_kms* @to_mdp5_kms(i32 %7)
  store %struct.mdp5_kms* %8, %struct.mdp5_kms** %3, align 8
  %9 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %10 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %9, i32 0, i32 0
  %11 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  store %struct.msm_gem_address_space* %11, %struct.msm_gem_address_space** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %15 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %20 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mdp5_mixer_destroy(i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %12

30:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %34 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %39 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mdp5_pipe_destroy(i32 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %4, align 8
  %51 = icmp ne %struct.msm_gem_address_space* %50, null
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %4, align 8
  %54 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %58, align 8
  %60 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %4, align 8
  %61 = getelementptr inbounds %struct.msm_gem_address_space, %struct.msm_gem_address_space* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* @iommu_ports, align 4
  %64 = load i32, i32* @iommu_ports, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i32 %59(%struct.TYPE_4__* %62, i32 %63, i32 %65)
  %67 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %4, align 8
  %68 = call i32 @msm_gem_address_space_put(%struct.msm_gem_address_space* %67)
  br label %69

69:                                               ; preds = %52, %49
  ret void
}

declare dso_local %struct.mdp5_kms* @to_mdp5_kms(i32) #1

declare dso_local i32 @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local i32 @mdp5_mixer_destroy(i32) #1

declare dso_local i32 @mdp5_pipe_destroy(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @msm_gem_address_space_put(%struct.msm_gem_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
