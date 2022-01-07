; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_vrr_settings_require_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_vrr_settings_require_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_freesync = type { i32 }
%struct.mod_freesync_config = type { i64, i64 }
%struct.mod_vrr_params = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VRR_STATE_ACTIVE_FIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.core_freesync*, %struct.mod_freesync_config*, i32, i32, %struct.mod_vrr_params*)* @vrr_settings_require_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrr_settings_require_update(%struct.core_freesync* %0, %struct.mod_freesync_config* %1, i32 %2, i32 %3, %struct.mod_vrr_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.core_freesync*, align 8
  %8 = alloca %struct.mod_freesync_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mod_vrr_params*, align 8
  store %struct.core_freesync* %0, %struct.core_freesync** %7, align 8
  store %struct.mod_freesync_config* %1, %struct.mod_freesync_config** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mod_vrr_params* %4, %struct.mod_vrr_params** %11, align 8
  %12 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %11, align 8
  %13 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %8, align 8
  %16 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %54

20:                                               ; preds = %5
  %21 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %11, align 8
  %22 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VRR_STATE_ACTIVE_FIXED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %11, align 8
  %28 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %8, align 8
  %32 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %54

36:                                               ; preds = %26, %20
  %37 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %11, align 8
  %38 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %54

43:                                               ; preds = %36
  %44 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %11, align 8
  %45 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %54

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %49, %42, %35, %19
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
