; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"Failed to wait GUI idle while resetting GPU. Bad things might happen.\0A\00", align 1
@R400_GB_PIPE_SELECT = common dso_local global i32 0, align 4
@R300_DST_PIPE_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Failed to wait MC idle while programming pipes. Bad things might happen.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv515_gpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv515_gpu_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call i64 @r100_gui_wait_for_idle(%struct.radeon_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @pr_warn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = call i32 @rv515_vga_render_disable(%struct.radeon_device* %12)
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = call i32 @r420_pipes_init(%struct.radeon_device* %14)
  %16 = load i32, i32* @R400_GB_PIPE_SELECT, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %19 = call i32 @RREG32(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = lshr i32 %20, 2
  %22 = and i32 %21, 3
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* %4, align 4
  %26 = lshr i32 %25, 8
  %27 = and i32 %26, 15
  %28 = shl i32 %27, 4
  %29 = or i32 %24, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @WREG32_PLL(i32 13, i32 %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = call i64 @r100_gui_wait_for_idle(%struct.radeon_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %11
  %36 = call i32 @pr_warn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %11
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = call i64 @rv515_mc_wait_for_idle(%struct.radeon_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  ret void
}

declare dso_local i64 @r100_gui_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @rv515_vga_render_disable(%struct.radeon_device*) #1

declare dso_local i32 @r420_pipes_init(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i64 @rv515_mc_wait_for_idle(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
