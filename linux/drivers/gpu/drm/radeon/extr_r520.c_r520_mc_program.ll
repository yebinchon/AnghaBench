; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r520.c_r520_mc_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r520.c_r520_mc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.rv515_mc_save = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Wait MC idle timeout before updating MC.\0A\00", align 1
@R_0000F8_CONFIG_MEMSIZE = common dso_local global i32 0, align 4
@R_000004_MC_FB_LOCATION = common dso_local global i32 0, align 4
@R_000134_HDP_FB_LOCATION = common dso_local global i32 0, align 4
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@R_000005_MC_AGP_LOCATION = common dso_local global i32 0, align 4
@R_000006_AGP_BASE = common dso_local global i32 0, align 4
@R_000007_AGP_BASE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r520_mc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r520_mc_program(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv515_mc_save, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call i32 @rv515_mc_stop(%struct.radeon_device* %4, %struct.rv515_mc_save* %3)
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call i64 @r520_mc_wait_for_idle(%struct.radeon_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_warn(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @R_0000F8_CONFIG_MEMSIZE, align 4
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @WREG32(i32 %15, i32 %19)
  %21 = load i32, i32* @R_000004_MC_FB_LOCATION, align 4
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 16
  %27 = call i32 @S_000004_MC_FB_START(i32 %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = call i32 @S_000004_MC_FB_TOP(i32 %32)
  %34 = or i32 %27, %33
  %35 = call i32 @WREG32_MC(i32 %21, i32 %34)
  %36 = load i32, i32* @R_000134_HDP_FB_LOCATION, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 16
  %42 = call i32 @S_000134_HDP_FB_START(i32 %41)
  %43 = call i32 @WREG32(i32 %36, i32 %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RADEON_IS_AGP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %14
  %51 = load i32, i32* @R_000005_MC_AGP_LOCATION, align 4
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 16
  %57 = call i32 @S_000005_MC_AGP_START(i32 %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 16
  %63 = call i32 @S_000005_MC_AGP_TOP(i32 %62)
  %64 = or i32 %57, %63
  %65 = call i32 @WREG32_MC(i32 %51, i32 %64)
  %66 = load i32, i32* @R_000006_AGP_BASE, align 4
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @lower_32_bits(i32 %70)
  %72 = call i32 @WREG32_MC(i32 %66, i32 %71)
  %73 = load i32, i32* @R_000007_AGP_BASE_2, align 4
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @upper_32_bits(i32 %77)
  %79 = call i32 @S_000007_AGP_BASE_ADDR_2(i32 %78)
  %80 = call i32 @WREG32_MC(i32 %73, i32 %79)
  br label %88

81:                                               ; preds = %14
  %82 = load i32, i32* @R_000005_MC_AGP_LOCATION, align 4
  %83 = call i32 @WREG32_MC(i32 %82, i32 -1)
  %84 = load i32, i32* @R_000006_AGP_BASE, align 4
  %85 = call i32 @WREG32_MC(i32 %84, i32 0)
  %86 = load i32, i32* @R_000007_AGP_BASE_2, align 4
  %87 = call i32 @WREG32_MC(i32 %86, i32 0)
  br label %88

88:                                               ; preds = %81, %50
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = call i32 @rv515_mc_resume(%struct.radeon_device* %89, %struct.rv515_mc_save* %3)
  ret void
}

declare dso_local i32 @rv515_mc_stop(%struct.radeon_device*, %struct.rv515_mc_save*) #1

declare dso_local i64 @r520_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_MC(i32, i32) #1

declare dso_local i32 @S_000004_MC_FB_START(i32) #1

declare dso_local i32 @S_000004_MC_FB_TOP(i32) #1

declare dso_local i32 @S_000134_HDP_FB_START(i32) #1

declare dso_local i32 @S_000005_MC_AGP_START(i32) #1

declare dso_local i32 @S_000005_MC_AGP_TOP(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @S_000007_AGP_BASE_ADDR_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @rv515_mc_resume(%struct.radeon_device*, %struct.rv515_mc_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
