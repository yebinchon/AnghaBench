; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_r7xx_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_r7xx_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_ps = type { i32 }

@CHIP_RV730 = common dso_local global i64 0, align 8
@CHIP_RV710 = common dso_local global i64 0, align 8
@CHIP_RV740 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @r7xx_program_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r7xx_program_memory_timing_parameters(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_RV730, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHIP_RV710, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHIP_RV740, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %10, %2
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %25 = call i32 @rv730_program_memory_timing_parameters(%struct.radeon_device* %23, %struct.radeon_ps* %24)
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %29 = call i32 @rv770_program_memory_timing_parameters(%struct.radeon_device* %27, %struct.radeon_ps* %28)
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @rv730_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_program_memory_timing_parameters(%struct.radeon_device*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
