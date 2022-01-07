; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_dpm_freq_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_dpm_freq_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_get_dpm_freq_range(%struct.smu_context* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %14, %4
  %21 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @smu_clk_dpm_is_enabled(%struct.smu_context* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %45 [
    i32 131, label %27
    i32 128, label %27
    i32 132, label %33
    i32 130, label %33
    i32 129, label %39
  ]

27:                                               ; preds = %25, %25
  %28 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %29 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  br label %46

33:                                               ; preds = %25, %25
  %34 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %35 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  br label %46

39:                                               ; preds = %25
  %40 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %41 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %46

45:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %39, %33, %27
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = sdiv i32 %50, 100
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 100
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %53
  store i32 0, i32* %5, align 4
  br label %68

61:                                               ; preds = %20
  %62 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @smu_get_dpm_ultimate_freq(%struct.smu_context* %62, i32 %63, i32* %64, i32* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %60, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @smu_clk_dpm_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_get_dpm_ultimate_freq(%struct.smu_context*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
