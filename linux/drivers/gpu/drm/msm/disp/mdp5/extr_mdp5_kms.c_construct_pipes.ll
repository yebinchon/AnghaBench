; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_construct_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_construct_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32, %struct.mdp5_hw_pipe**, %struct.drm_device* }
%struct.mdp5_hw_pipe = type { i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to construct pipe for %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_kms*, i32, i32*, i32*, i32)* @construct_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_pipes(%struct.mdp5_kms* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdp5_kms*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mdp5_hw_pipe*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %17 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %16, i32 0, i32 2
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %12, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %70, %5
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.mdp5_hw_pipe* @mdp5_pipe_init(i32 %28, i32 %33, i32 %34)
  store %struct.mdp5_hw_pipe* %35, %struct.mdp5_hw_pipe** %15, align 8
  %36 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %15, align 8
  %37 = call i64 @IS_ERR(%struct.mdp5_hw_pipe* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %23
  %40 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %15, align 8
  %41 = call i32 @PTR_ERR(%struct.mdp5_hw_pipe* %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pipe2name(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @DRM_DEV_ERROR(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %74

54:                                               ; preds = %23
  %55 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %56 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %15, align 8
  %59 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %15, align 8
  %61 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %62 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %61, i32 0, i32 1
  %63 = load %struct.mdp5_hw_pipe**, %struct.mdp5_hw_pipe*** %62, align 8
  %64 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %65 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %63, i64 %68
  store %struct.mdp5_hw_pipe* %60, %struct.mdp5_hw_pipe** %69, align 8
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %19

73:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %39
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.mdp5_hw_pipe* @mdp5_pipe_init(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mdp5_hw_pipe*) #1

declare dso_local i32 @PTR_ERR(%struct.mdp5_hw_pipe*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

declare dso_local i32 @pipe2name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
