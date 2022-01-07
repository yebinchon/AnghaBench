; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_mc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32, i64, i8*, i8* }

@RAMCFG = common dso_local global i32 0, align 4
@CHANSIZE_OVERRIDE = common dso_local global i32 0, align 4
@CHANSIZE_MASK = common dso_local global i32 0, align 4
@CHMAP = common dso_local global i32 0, align 4
@NOOFCHAN_MASK = common dso_local global i32 0, align 4
@NOOFCHAN_SHIFT = common dso_local global i32 0, align 4
@CONFIG_MEMSIZE = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@CHIP_RS780 = common dso_local global i64 0, align 8
@CHIP_RS880 = common dso_local global i64 0, align 8
@R_000012_MC_MISC_UMA_CNTL = common dso_local global i32 0, align 4
@R_000011_K8_FB_LOCATION = common dso_local global i32 0, align 4
@radeon_fastfb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Direct mapping: aper base at 0x%llx, replaced by direct mapping base 0x%llx.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_mc_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @RAMCFG, align 4
  %13 = call i8* @RREG32(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CHANSIZE_OVERRIDE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 16, i32* %4, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CHANSIZE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 64, i32* %4, align 4
  br label %27

26:                                               ; preds = %20
  store i32 32, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* @CHMAP, align 4
  %30 = call i8* @RREG32(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @NOOFCHAN_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @NOOFCHAN_SHIFT, align 4
  %36 = ashr i32 %34, %35
  switch i32 %36, label %38 [
    i32 0, label %37
    i32 1, label %39
    i32 2, label %40
    i32 3, label %41
  ]

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %28, %37
  store i32 1, i32* %5, align 4
  br label %42

39:                                               ; preds = %28
  store i32 2, i32* %5, align 4
  br label %42

40:                                               ; preds = %28
  store i32 4, i32* %5, align 4
  br label %42

41:                                               ; preds = %28
  store i32 8, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %40, %39, %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @pci_resource_start(i32 %51, i32 0)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  store i64 %52, i64* %55, align 8
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @pci_resource_len(i32 %58, i32 0)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %64 = call i8* @RREG32(i32 %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 7
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* @CONFIG_MEMSIZE, align 4
  %69 = call i8* @RREG32(i32 %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  store i8* %69, i8** %72, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i64 %76, i64* %79, align 8
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 3
  %83 = call i32 @r600_vram_gtt_location(%struct.radeon_device* %80, %struct.TYPE_2__* %82)
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @RADEON_IS_IGP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %144

90:                                               ; preds = %42
  %91 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %92 = call i32 @rs690_pm_info(%struct.radeon_device* %91)
  %93 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %94 = call i32 @radeon_atombios_sideport_present(%struct.radeon_device* %93)
  %95 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store i32 %94, i32* %97, align 8
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CHIP_RS780, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %90
  %104 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CHIP_RS880, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %103, %90
  %110 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 2
  store i32 0, i32* %111, align 8
  %112 = load i32, i32* @R_000012_MC_MISC_UMA_CNTL, align 4
  %113 = call i64 @RREG32_MC(i32 %112)
  %114 = call i64 @G_000012_K8_ADDR_EXT(i64 %113)
  store i64 %114, i64* %6, align 8
  %115 = load i32, i32* @R_000011_K8_FB_LOCATION, align 4
  %116 = call i64 @RREG32_MC(i32 %115)
  store i64 %116, i64* %7, align 8
  %117 = load i64, i64* %6, align 8
  %118 = shl i64 %117, 32
  %119 = load i64, i64* %7, align 8
  %120 = or i64 %118, %119
  store i64 %120, i64* %8, align 8
  %121 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %109
  %127 = load i32, i32* @radeon_fastfb, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @DRM_INFO(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %133, i64 %134)
  %136 = load i64, i64* %8, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 5
  store i64 %136, i64* %139, align 8
  %140 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 2
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %129, %126, %109
  br label %143

143:                                              ; preds = %142, %103
  br label %144

144:                                              ; preds = %143, %42
  %145 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %146 = call i32 @radeon_update_bandwidth_info(%struct.radeon_device* %145)
  ret i32 0
}

declare dso_local i8* @RREG32(i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i32 @r600_vram_gtt_location(%struct.radeon_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @rs690_pm_info(%struct.radeon_device*) #1

declare dso_local i32 @radeon_atombios_sideport_present(%struct.radeon_device*) #1

declare dso_local i64 @G_000012_K8_ADDR_EXT(i64) #1

declare dso_local i64 @RREG32_MC(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i64, i64) #1

declare dso_local i32 @radeon_update_bandwidth_info(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
