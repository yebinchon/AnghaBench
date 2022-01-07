; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_mode_valid_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_mode_valid_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }

@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dp_mode_valid_helper(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.radeon_connector*, align 8
  %7 = alloca %struct.radeon_connector_atom_dig*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %11)
  store %struct.radeon_connector* %12, %struct.radeon_connector** %6, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 340000
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = call i32 @radeon_connector_is_dp12_capable(%struct.drm_connector* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %17, %2
  %24 = load %struct.radeon_connector*, %struct.radeon_connector** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %24, i32 0, i32 0
  %26 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %25, align 8
  %27 = icmp ne %struct.radeon_connector_atom_dig* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %23
  %31 = load %struct.radeon_connector*, %struct.radeon_connector** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %31, i32 0, i32 0
  %33 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %32, align 8
  store %struct.radeon_connector_atom_dig* %33, %struct.radeon_connector_atom_dig** %7, align 8
  %34 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %35 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %7, align 8
  %36 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @radeon_dp_get_dp_link_config(%struct.drm_connector* %34, i32 %37, i32 %40, i32* %9, i32* %8)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 540000
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %51 = call i32 @radeon_connector_is_dp12_capable(%struct.drm_connector* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %49, %46
  %56 = load i32, i32* @MODE_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %53, %44, %28, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_connector_is_dp12_capable(%struct.drm_connector*) #1

declare dso_local i32 @radeon_dp_get_dp_link_config(%struct.drm_connector*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
