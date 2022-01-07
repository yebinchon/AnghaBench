; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_setup_enc_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_setup_enc_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @radeon_setup_enc_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_setup_enc_conn(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  store %struct.radeon_device* %7, %struct.radeon_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = call i32 @radeon_get_atom_connector_info_from_supported_devices_table(%struct.drm_device* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = call i32 @radeon_get_atom_connector_info_from_object_table(%struct.drm_device* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %17
  br label %35

26:                                               ; preds = %12
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call i32 @radeon_get_legacy_connector_info_from_bios(%struct.drm_device* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = call i32 @radeon_get_legacy_connector_info_from_table(%struct.drm_device* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %25
  br label %44

36:                                               ; preds = %1
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %42 = call i32 @radeon_get_legacy_connector_info_from_table(%struct.drm_device* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %49 = call i32 @radeon_setup_encoder_clones(%struct.drm_device* %48)
  %50 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %51 = call i32 @radeon_print_display_setup(%struct.drm_device* %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @radeon_get_atom_connector_info_from_supported_devices_table(%struct.drm_device*) #1

declare dso_local i32 @radeon_get_atom_connector_info_from_object_table(%struct.drm_device*) #1

declare dso_local i32 @radeon_get_legacy_connector_info_from_bios(%struct.drm_device*) #1

declare dso_local i32 @radeon_get_legacy_connector_info_from_table(%struct.drm_device*) #1

declare dso_local i32 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_setup_encoder_clones(%struct.drm_device*) #1

declare dso_local i32 @radeon_print_display_setup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
