; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_display_mode_from_vic_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_display_mode_from_vic_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i64 }
%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@edid_cea_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_display_mode* (%struct.drm_connector*, i64*, i64, i64)* @drm_display_mode_from_vic_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_display_mode* @drm_display_mode_from_vic_index(%struct.drm_connector* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %10, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %4
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  br label %46

23:                                               ; preds = %18
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @svd_to_vic(i64 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @drm_valid_cea_vic(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  br label %46

33:                                               ; preds = %23
  %34 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %35 = load i32*, i32** @edid_cea_modes, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %34, i32* %37)
  store %struct.drm_display_mode* %38, %struct.drm_display_mode** %11, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %40 = icmp ne %struct.drm_display_mode* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  store %struct.drm_display_mode* %45, %struct.drm_display_mode** %5, align 8
  br label %46

46:                                               ; preds = %42, %41, %32, %22
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  ret %struct.drm_display_mode* %47
}

declare dso_local i64 @svd_to_vic(i64) #1

declare dso_local i32 @drm_valid_cea_vic(i64) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
