; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_display_configuration_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_display_configuration_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, i32, i32 }
%struct.amd_pp_display_configuration = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_display_configuration_change(%struct.smu_context* %0, %struct.amd_pp_display_configuration* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca %struct.amd_pp_display_configuration*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store %struct.amd_pp_display_configuration* %1, %struct.amd_pp_display_configuration** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %14 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @is_support_sw_smu(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %12
  %22 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %23 = icmp ne %struct.amd_pp_display_configuration* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %81

27:                                               ; preds = %21
  %28 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %29 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %32 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %33 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 100
  %36 = call i32 @smu_set_deep_sleep_dcefclk(%struct.smu_context* %31, i32 %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %57, %27
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %40 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %45 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %44, i32 0, i32 6
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @smu_set_active_display_count(%struct.smu_context* %61, i32 %62)
  %64 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %65 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %66 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %69 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %72 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.amd_pp_display_configuration*, %struct.amd_pp_display_configuration** %5, align 8
  %75 = getelementptr inbounds %struct.amd_pp_display_configuration, %struct.amd_pp_display_configuration* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @smu_store_cc6_data(%struct.smu_context* %64, i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %79 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %60, %24, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @is_support_sw_smu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_set_deep_sleep_dcefclk(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_set_active_display_count(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_store_cc6_data(%struct.smu_context*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
