; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r520.c_r520_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r520.c_r520_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_RV530 = common dso_local global i64 0, align 8
@R400_GB_PIPE_SELECT = common dso_local global i32 0, align 4
@R300_DST_PIPE_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Failed to wait MC idle while programming pipes. Bad things might happen.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r520_gpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r520_gpu_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call i32 @rv515_vga_render_disable(%struct.radeon_device* %6)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHIP_RV530, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @WREG32(i32 16680, i32 255)
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = call i32 @r420_pipes_init(%struct.radeon_device* %16)
  %18 = load i32, i32* @R400_GB_PIPE_SELECT, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %21 = call i32 @RREG32(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = lshr i32 %22, 2
  %24 = and i32 %23, 3
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %4, align 4
  %28 = lshr i32 %27, 8
  %29 = and i32 %28, 15
  %30 = shl i32 %29, 4
  %31 = or i32 %26, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @WREG32_PLL(i32 13, i32 %32)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = call i64 @r520_mc_wait_for_idle(%struct.radeon_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %15
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %15
  ret void
}

declare dso_local i32 @rv515_vga_render_disable(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @r420_pipes_init(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i64 @r520_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
