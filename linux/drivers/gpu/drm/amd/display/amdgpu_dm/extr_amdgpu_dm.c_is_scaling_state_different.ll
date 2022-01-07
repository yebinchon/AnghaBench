; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_is_scaling_state_different.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_is_scaling_state_different.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_connector_state = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_connector_state*, %struct.dm_connector_state*)* @is_scaling_state_different to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_scaling_state_different(%struct.dm_connector_state* %0, %struct.dm_connector_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_connector_state*, align 8
  %5 = alloca %struct.dm_connector_state*, align 8
  store %struct.dm_connector_state* %0, %struct.dm_connector_state** %4, align 8
  store %struct.dm_connector_state* %1, %struct.dm_connector_state** %5, align 8
  %6 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %7 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %10 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %16 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %21 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %26 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %31 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %78

35:                                               ; preds = %29, %24
  br label %77

36:                                               ; preds = %19, %14
  %37 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %38 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %43 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %48 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %53 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %78

57:                                               ; preds = %51, %46
  br label %76

58:                                               ; preds = %41, %36
  %59 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %60 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %63 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load %struct.dm_connector_state*, %struct.dm_connector_state** %4, align 8
  %68 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dm_connector_state*, %struct.dm_connector_state** %5, align 8
  %71 = getelementptr inbounds %struct.dm_connector_state, %struct.dm_connector_state* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %58
  store i32 1, i32* %3, align 4
  br label %78

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %35
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %74, %56, %34, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
