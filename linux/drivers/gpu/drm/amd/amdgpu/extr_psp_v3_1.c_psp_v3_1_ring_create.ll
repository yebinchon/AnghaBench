; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v3_1.c_psp_v3_1_ring_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v3_1.c_psp_v3_1_ring_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device*, %struct.psp_ring }
%struct.amdgpu_device = type { i32 }
%struct.psp_ring = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"psp_v3_1_ring_stop_sriov failed!\0A\00", align 1
@MP0 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_102 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_103 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_101 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_69 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_70 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_71 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*, i32)* @psp_v3_1_ring_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v3_1_ring_create(%struct.psp_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psp_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.psp_ring*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %11 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %10, i32 0, i32 1
  store %struct.psp_ring* %11, %struct.psp_ring** %8, align 8
  %12 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %13 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %9, align 8
  %15 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %16 = call i32 @psp_v3_1_reroute_ih(%struct.psp_context* %15)
  %17 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %18 = call i64 @psp_v3_1_support_vmr_ring(%struct.psp_context* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %2
  %21 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @psp_v3_1_ring_stop(%struct.psp_context* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %98

29:                                               ; preds = %20
  %30 = load %struct.psp_ring*, %struct.psp_ring** %8, align 8
  %31 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @MP0, align 4
  %35 = load i32, i32* @mmMP0_SMN_C2PMSG_102, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @WREG32_SOC15(i32 %34, i32 0, i32 %35, i32 %36)
  %38 = load %struct.psp_ring*, %struct.psp_ring** %8, align 8
  %39 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @upper_32_bits(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @MP0, align 4
  %43 = load i32, i32* @mmMP0_SMN_C2PMSG_103, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @WREG32_SOC15(i32 %42, i32 0, i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 16
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @MP0, align 4
  %50 = load i32, i32* @mmMP0_SMN_C2PMSG_101, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @WREG32_SOC15(i32 %49, i32 0, i32 %50, i32 %51)
  %53 = call i32 @mdelay(i32 20)
  %54 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %55 = load i32, i32* @MP0, align 4
  %56 = load i32, i32* @mmMP0_SMN_C2PMSG_101, align 4
  %57 = call i32 @SOC15_REG_OFFSET(i32 %55, i32 0, i32 %56)
  %58 = call i32 @psp_wait_for(%struct.psp_context* %54, i32 %57, i32 -2147483648, i32 -2147418113, i32 0)
  store i32 %58, i32* %6, align 4
  br label %96

59:                                               ; preds = %2
  %60 = load %struct.psp_ring*, %struct.psp_ring** %8, align 8
  %61 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lower_32_bits(i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @MP0, align 4
  %65 = load i32, i32* @mmMP0_SMN_C2PMSG_69, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @WREG32_SOC15(i32 %64, i32 0, i32 %65, i32 %66)
  %68 = load %struct.psp_ring*, %struct.psp_ring** %8, align 8
  %69 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @upper_32_bits(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @MP0, align 4
  %73 = load i32, i32* @mmMP0_SMN_C2PMSG_70, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @WREG32_SOC15(i32 %72, i32 0, i32 %73, i32 %74)
  %76 = load %struct.psp_ring*, %struct.psp_ring** %8, align 8
  %77 = getelementptr inbounds %struct.psp_ring, %struct.psp_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @MP0, align 4
  %80 = load i32, i32* @mmMP0_SMN_C2PMSG_71, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @WREG32_SOC15(i32 %79, i32 0, i32 %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = shl i32 %84, 16
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @MP0, align 4
  %87 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @WREG32_SOC15(i32 %86, i32 0, i32 %87, i32 %88)
  %90 = call i32 @mdelay(i32 20)
  %91 = load %struct.psp_context*, %struct.psp_context** %4, align 8
  %92 = load i32, i32* @MP0, align 4
  %93 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %94 = call i32 @SOC15_REG_OFFSET(i32 %92, i32 0, i32 %93)
  %95 = call i32 @psp_wait_for(%struct.psp_context* %91, i32 %94, i32 -2147483648, i32 -2147418113, i32 0)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %59, %29
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %26
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @psp_v3_1_reroute_ih(%struct.psp_context*) #1

declare dso_local i64 @psp_v3_1_support_vmr_ring(%struct.psp_context*) #1

declare dso_local i32 @psp_v3_1_ring_stop(%struct.psp_context*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @psp_wait_for(%struct.psp_context*, i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
