; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_post_notify_alt_vddnb_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_post_notify_alt_vddnb_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.sumo_ps = type { i32 }

@SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @sumo_post_notify_alt_vddnb_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_post_notify_alt_vddnb_change(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.sumo_ps*, align 8
  %8 = alloca %struct.sumo_ps*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %12 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %11)
  store %struct.sumo_ps* %12, %struct.sumo_ps** %7, align 8
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %14 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %13)
  store %struct.sumo_ps* %14, %struct.sumo_ps** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %16 = icmp ne %struct.sumo_ps* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %19 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %17, %3
  %27 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %28 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %42 = call i32 @sumo_smu_notify_alt_vddnb_change(%struct.radeon_device* %41, i32 1, i32 1)
  br label %43

43:                                               ; preds = %40, %37, %26
  ret void
}

declare dso_local %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @sumo_smu_notify_alt_vddnb_change(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
