; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_set_vce_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_set_vce_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @si_set_vce_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_set_vce_clock(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %7 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %8 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %16 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %14, %3
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %29 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = call i32 @vce_v1_0_enable_mgcg(%struct.radeon_device* %33, i32 0)
  br label %38

35:                                               ; preds = %27
  %36 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %37 = call i32 @vce_v1_0_enable_mgcg(%struct.radeon_device* %36, i32 1)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %40 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @radeon_set_vce_clocks(%struct.radeon_device* %39, i64 %42, i64 %45)
  br label %47

47:                                               ; preds = %38, %14
  ret void
}

declare dso_local i32 @vce_v1_0_enable_mgcg(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_set_vce_clocks(%struct.radeon_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
