; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_feature_set_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_feature_set_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_feature }
%struct.smu_feature = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_feature_set_supported(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu_feature*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 0
  store %struct.smu_feature* %12, %struct.smu_feature** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @smu_feature_get_index(%struct.smu_context* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %24 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %30 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %37 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @test_and_set_bit(i32 %35, i32 %38)
  br label %46

40:                                               ; preds = %21
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %43 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @test_and_clear_bit(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %48 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @smu_feature_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
