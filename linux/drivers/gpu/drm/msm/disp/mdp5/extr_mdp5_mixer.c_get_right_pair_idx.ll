; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mixer.c_get_right_pair_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mixer.c_get_right_pair_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32, %struct.mdp5_hw_mixer** }
%struct.mdp5_hw_mixer = type { i32, i32 }

@lm_right_pair = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_kms*, i32)* @get_right_pair_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_right_pair_idx(%struct.mdp5_kms* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdp5_kms*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdp5_hw_mixer*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** @lm_right_pair, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %23 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %28 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %27, i32 0, i32 1
  %29 = load %struct.mdp5_hw_mixer**, %struct.mdp5_hw_mixer*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %29, i64 %31
  %33 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %32, align 8
  store %struct.mdp5_hw_mixer* %33, %struct.mdp5_hw_mixer** %8, align 8
  %34 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %8, align 8
  %35 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load %struct.mdp5_hw_mixer*, %struct.mdp5_hw_mixer** %8, align 8
  %41 = getelementptr inbounds %struct.mdp5_hw_mixer, %struct.mdp5_hw_mixer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %20

47:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %39, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
