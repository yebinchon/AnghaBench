; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_program_dcodt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv730_dpm.c_rv730_program_dcodt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32*, i32* }

@MC4_IO_DQ_PAD_CNTL_D0_I0 = common dso_local global i32 0, align 4
@MC4_IO_DQ_PAD_CNTL_D0_I1 = common dso_local global i32 0, align 4
@MC4_IO_QS_PAD_CNTL_D0_I0 = common dso_local global i32 0, align 4
@MC4_IO_QS_PAD_CNTL_D0_I1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv730_program_dcodt(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 1
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @MC4_IO_DQ_PAD_CNTL_D0_I0, align 4
  %15 = call i32 @RREG32(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, -256
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %19 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @MC4_IO_DQ_PAD_CNTL_D0_I0, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @WREG32(i32 %27, i32 %28)
  %30 = load i32, i32* @MC4_IO_DQ_PAD_CNTL_D0_I1, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  %33 = load i32, i32* @MC4_IO_QS_PAD_CNTL_D0_I0, align 4
  %34 = call i32 @RREG32(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, -256
  store i32 %36, i32* %7, align 4
  %37 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %38 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @MC4_IO_QS_PAD_CNTL_D0_I0, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @WREG32(i32 %46, i32 %47)
  %49 = load i32, i32* @MC4_IO_QS_PAD_CNTL_D0_I1, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
