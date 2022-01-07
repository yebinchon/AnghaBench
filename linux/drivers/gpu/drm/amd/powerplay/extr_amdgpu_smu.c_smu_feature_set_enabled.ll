; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_feature_set_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_feature_set_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_feature }
%struct.smu_feature = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_feature_set_enabled(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu_feature*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %13 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %12, i32 0, i32 0
  store %struct.smu_feature* %13, %struct.smu_feature** %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @smu_feature_get_index(%struct.smu_context* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %64

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %25 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = shl i64 1, %31
  store i64 %32, i64* %10, align 8
  %33 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %34 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @smu_feature_update_enable_state(%struct.smu_context* %36, i64 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %59

43:                                               ; preds = %22
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %49 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @test_and_set_bit(i32 %47, i32 %50)
  br label %58

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %55 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @test_and_clear_bit(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %46
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.smu_feature*, %struct.smu_feature** %8, align 8
  %61 = getelementptr inbounds %struct.smu_feature, %struct.smu_feature* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @smu_feature_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_feature_update_enable_state(%struct.smu_context*, i64, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
