; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_mc_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_mc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.evergreen_mc_save = type { i32 }

@HDP_REG_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@VGA_HDP_CONTROL = common dso_local global i32 0, align 4
@VGA_MEMORY_DISABLE = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR = common dso_local global i32 0, align 4
@MC_VM_FB_LOCATION = common dso_local global i32 0, align 4
@HDP_NONSURFACE_BASE = common dso_local global i32 0, align 4
@HDP_NONSURFACE_INFO = common dso_local global i32 0, align 4
@HDP_NONSURFACE_SIZE = common dso_local global i32 0, align 4
@MC_VM_AGP_BASE = common dso_local global i32 0, align 4
@MC_VM_AGP_TOP = common dso_local global i32 0, align 4
@MC_VM_AGP_BOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_mc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_mc_program(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_mc_save, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 11284, %11
  %13 = call i32 @WREG32(i32 %12, i32 0)
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 11288, %14
  %16 = call i32 @WREG32(i32 %15, i32 0)
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 11292, %17
  %19 = call i32 @WREG32(i32 %18, i32 0)
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 11296, %20
  %22 = call i32 @WREG32(i32 %21, i32 0)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 11300, %23
  %25 = call i32 @WREG32(i32 %24, i32 0)
  br label %26

26:                                               ; preds = %10
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 24
  store i32 %30, i32* %6, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load i32, i32* @HDP_REG_COHERENCY_FLUSH_CNTL, align 4
  %33 = call i32 @WREG32(i32 %32, i32 0)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = call i32 @evergreen_mc_stop(%struct.radeon_device* %34, %struct.evergreen_mc_save* %3)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = call i64 @radeon_mc_wait_for_idle(%struct.radeon_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %31
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = call i32 @ASIC_IS_NODCE(%struct.radeon_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @VGA_HDP_CONTROL, align 4
  %50 = load i32, i32* @VGA_MEMORY_DISABLE, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 12
  %59 = call i32 @WREG32(i32 %53, i32 %58)
  %60 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 12
  %66 = call i32 @WREG32(i32 %60, i32 %65)
  %67 = load i32, i32* @MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR, align 4
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 12
  %73 = call i32 @WREG32(i32 %67, i32 %72)
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 24
  %79 = and i32 %78, 65535
  %80 = shl i32 %79, 16
  store i32 %80, i32* %4, align 4
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 24
  %86 = and i32 %85, 65535
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @MC_VM_FB_LOCATION, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @WREG32(i32 %89, i32 %90)
  %92 = load i32, i32* @HDP_NONSURFACE_BASE, align 4
  %93 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 8
  %98 = call i32 @WREG32(i32 %92, i32 %97)
  %99 = load i32, i32* @HDP_NONSURFACE_INFO, align 4
  %100 = call i32 @WREG32(i32 %99, i32 1073742080)
  %101 = load i32, i32* @HDP_NONSURFACE_SIZE, align 4
  %102 = call i32 @WREG32(i32 %101, i32 1073741823)
  %103 = load i32, i32* @MC_VM_AGP_BASE, align 4
  %104 = call i32 @WREG32(i32 %103, i32 0)
  %105 = load i32, i32* @MC_VM_AGP_TOP, align 4
  %106 = call i32 @WREG32(i32 %105, i32 268435455)
  %107 = load i32, i32* @MC_VM_AGP_BOT, align 4
  %108 = call i32 @WREG32(i32 %107, i32 268435455)
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = call i64 @radeon_mc_wait_for_idle(%struct.radeon_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %52
  %113 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_warn(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %112, %52
  %118 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %119 = call i32 @evergreen_mc_resume(%struct.radeon_device* %118, %struct.evergreen_mc_save* %3)
  %120 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %121 = call i32 @ASIC_IS_NODCE(%struct.radeon_device* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %117
  %124 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %125 = call i32 @rv515_vga_render_disable(%struct.radeon_device* %124)
  br label %126

126:                                              ; preds = %123, %117
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i64 @radeon_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @ASIC_IS_NODCE(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_mc_resume(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i32 @rv515_vga_render_disable(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
