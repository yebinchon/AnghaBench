; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_mc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i32, i64, i64, i64 }

@RADEON_CONFIG_MEMSIZE = common dso_local global i32 0, align 4
@R_000100_MCCFG_FB_LOCATION = common dso_local global i32 0, align 4
@R_00005F_MC_MISC_UMA_CNTL = common dso_local global i32 0, align 4
@R_00001E_K8_FB_LOCATION = common dso_local global i32 0, align 4
@radeon_fastfb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Direct mapping: aper base at 0x%llx, replaced by direct mapping base 0x%llx.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rs690_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs690_mc_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call i32 @rs400_gart_adjust_size(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 128, i32* %14, align 4
  %15 = load i32, i32* @RADEON_CONFIG_MEMSIZE, align 4
  %16 = call i32 @RREG32(i32 %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @pci_resource_start(i32 %29, i32 0)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 9
  store i64 %30, i64* %33, align 8
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @pci_resource_len(i32 %36, i32 0)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i64 %37, i64* %40, align 8
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* @R_000100_MCCFG_FB_LOCATION, align 4
  %49 = call i8* @RREG32_MC(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @G_000100_MC_FB_START(i32 %51)
  %53 = shl i32 %52, 16
  store i32 %53, i32* %3, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = call i32 @radeon_atombios_sideport_present(%struct.radeon_device* %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 6
  store i32 %55, i32* %58, align 8
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %1
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 402653184
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 134217728
  store i32 %72, i32* %3, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 134217728
  store i32 %77, i32* %75, align 8
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %70, %64, %1
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* @R_00005F_MC_MISC_UMA_CNTL, align 4
  %89 = call i8* @RREG32_MC(i32 %88)
  %90 = call i64 @G_00005F_K8_ADDR_EXT(i8* %89)
  store i64 %90, i64* %4, align 8
  %91 = load i32, i32* @R_00001E_K8_FB_LOCATION, align 4
  %92 = call i8* @RREG32_MC(i32 %91)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %4, align 8
  %95 = shl i64 %94, 32
  %96 = load i64, i64* %5, align 8
  %97 = or i64 %95, %96
  store i64 %97, i64* %6, align 8
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %85
  %104 = load i32, i32* @radeon_fastfb, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %119

106:                                              ; preds = %103
  %107 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 9
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @DRM_INFO(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %110, i64 %111)
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 9
  store i64 %113, i64* %116, align 8
  %117 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %106, %103, %85
  %120 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %121 = call i32 @rs690_pm_info(%struct.radeon_device* %120)
  %122 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %123 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 1
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @radeon_vram_location(%struct.radeon_device* %122, %struct.TYPE_3__* %124, i32 %125)
  %127 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %130, 1
  %132 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 8
  store i64 %131, i64* %134, align 8
  %135 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %136 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 1
  %138 = call i32 @radeon_gtt_location(%struct.radeon_device* %135, %struct.TYPE_3__* %137)
  %139 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %140 = call i32 @radeon_update_bandwidth_info(%struct.radeon_device* %139)
  ret void
}

declare dso_local i32 @rs400_gart_adjust_size(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i8* @RREG32_MC(i32) #1

declare dso_local i32 @G_000100_MC_FB_START(i32) #1

declare dso_local i32 @radeon_atombios_sideport_present(%struct.radeon_device*) #1

declare dso_local i64 @G_00005F_K8_ADDR_EXT(i8*) #1

declare dso_local i32 @DRM_INFO(i8*, i64, i64) #1

declare dso_local i32 @rs690_pm_info(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vram_location(%struct.radeon_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @radeon_gtt_location(%struct.radeon_device*, %struct.TYPE_3__*) #1

declare dso_local i32 @radeon_update_bandwidth_info(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
