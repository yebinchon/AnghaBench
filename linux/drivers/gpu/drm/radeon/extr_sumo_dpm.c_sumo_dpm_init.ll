; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sumo_power_info* }
%struct.sumo_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@HW_REV = common dso_local global i32 0, align 4
@ATI_REV_ID_MASK = common dso_local global i32 0, align 4
@ATI_REV_ID_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHIP_PALM = common dso_local global i64 0, align 8
@CYPRESS_HASI_DFLT = common dso_local global i32 0, align 4
@RV770_ASI_DFLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sumo_dpm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.sumo_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load i32, i32* @HW_REV, align 4
  %8 = call i32 @RREG32(i32 %7)
  %9 = load i32, i32* @ATI_REV_ID_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @ATI_REV_ID_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sumo_power_info* @kzalloc(i32 68, i32 %13)
  store %struct.sumo_power_info* %14, %struct.sumo_power_info** %4, align 8
  %15 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %16 = icmp eq %struct.sumo_power_info* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %112

20:                                               ; preds = %1
  %21 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.sumo_power_info* %21, %struct.sumo_power_info** %25, align 8
  %26 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %27 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHIP_PALM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %38 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %42

39:                                               ; preds = %33, %20
  %40 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %41 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %44 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %43, i32 0, i32 2
  store i32 1, i32* %44, align 4
  %45 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %46 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %45, i32 0, i32 3
  store i32 1, i32* %46, align 4
  %47 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %48 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %47, i32 0, i32 4
  store i32 0, i32* %48, align 4
  %49 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %50 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %49, i32 0, i32 5
  store i32 1, i32* %50, align 4
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CHIP_PALM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %58 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %57, i32 0, i32 6
  store i32 0, i32* %58, align 4
  br label %62

59:                                               ; preds = %42
  %60 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %61 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %60, i32 0, i32 6
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %64 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %63, i32 0, i32 7
  store i32 1, i32* %64, align 4
  %65 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %66 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %65, i32 0, i32 8
  store i32 1, i32* %66, align 4
  %67 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %68 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %67, i32 0, i32 9
  store i32 1, i32* %68, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = call i32 @sumo_parse_sys_info_table(%struct.radeon_device* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %112

75:                                               ; preds = %62
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = call i32 @sumo_construct_boot_and_acpi_state(%struct.radeon_device* %76)
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = call i32 @r600_get_platform_caps(%struct.radeon_device* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %112

84:                                               ; preds = %75
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = call i32 @sumo_parse_power_table(%struct.radeon_device* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %112

91:                                               ; preds = %84
  %92 = load i32, i32* @CYPRESS_HASI_DFLT, align 4
  %93 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %94 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %93, i32 0, i32 15
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @RV770_ASI_DFLT, align 4
  %96 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %97 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %96, i32 0, i32 14
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %99 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %98, i32 0, i32 11
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %103 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %102, i32 0, i32 13
  store i32 %101, i32* %103, align 4
  %104 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %105 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %104, i32 0, i32 11
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %109 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %108, i32 0, i32 12
  store i32 %107, i32* %109, align 4
  %110 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %111 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %110, i32 0, i32 10
  store i32 1, i32* %111, align 4
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %91, %89, %82, %73, %17
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local %struct.sumo_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @sumo_parse_sys_info_table(%struct.radeon_device*) #1

declare dso_local i32 @sumo_construct_boot_and_acpi_state(%struct.radeon_device*) #1

declare dso_local i32 @r600_get_platform_caps(%struct.radeon_device*) #1

declare dso_local i32 @sumo_parse_power_table(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
