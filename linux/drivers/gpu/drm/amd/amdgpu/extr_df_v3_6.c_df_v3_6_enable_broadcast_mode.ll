; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_enable_broadcast_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_enable_broadcast_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@DF = common dso_local global i32 0, align 4
@mmFabricConfigAccessControl = common dso_local global i32 0, align 4
@FabricConfigAccessControl__CfgRegInstAccEn_MASK = common dso_local global i32 0, align 4
@mmFabricConfigAccessControl_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @df_v3_6_enable_broadcast_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_v3_6_enable_broadcast_mode(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i32, i32* @DF, align 4
  %10 = load i32, i32* @mmFabricConfigAccessControl, align 4
  %11 = call i32 @RREG32_SOC15(i32 %9, i32 0, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @FabricConfigAccessControl__CfgRegInstAccEn_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @DF, align 4
  %17 = load i32, i32* @mmFabricConfigAccessControl, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @WREG32_SOC15(i32 %16, i32 0, i32 %17, i32 %18)
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @DF, align 4
  %22 = load i32, i32* @mmFabricConfigAccessControl, align 4
  %23 = load i32, i32* @mmFabricConfigAccessControl_DEFAULT, align 4
  %24 = call i32 @WREG32_SOC15(i32 %21, i32 0, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %8
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
