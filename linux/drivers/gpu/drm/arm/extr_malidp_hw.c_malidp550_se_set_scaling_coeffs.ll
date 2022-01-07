; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_se_set_scaling_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_se_set_scaling_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32 }
%struct.malidp_se_config = type { i32, i32 }

@MALIDP550_SE_CTL_SEL_MASK = common dso_local global i32 0, align 4
@MALIDP550_SE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malidp_hw_device*, %struct.malidp_se_config*, %struct.malidp_se_config*)* @malidp550_se_set_scaling_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp550_se_set_scaling_coeffs(%struct.malidp_hw_device* %0, %struct.malidp_se_config* %1, %struct.malidp_se_config* %2) #0 {
  %4 = alloca %struct.malidp_hw_device*, align 8
  %5 = alloca %struct.malidp_se_config*, align 8
  %6 = alloca %struct.malidp_se_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %4, align 8
  store %struct.malidp_se_config* %1, %struct.malidp_se_config** %5, align 8
  store %struct.malidp_se_config* %2, %struct.malidp_se_config** %6, align 8
  %9 = load i32, i32* @MALIDP550_SE_CTL_SEL_MASK, align 4
  %10 = call i32 @MALIDP550_SE_CTL_VCSEL(i32 %9)
  %11 = load i32, i32* @MALIDP550_SE_CTL_SEL_MASK, align 4
  %12 = call i32 @MALIDP550_SE_CTL_HCSEL(i32 %11)
  %13 = or i32 %10, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.malidp_se_config*, %struct.malidp_se_config** %5, align 8
  %15 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MALIDP550_SE_CTL_VCSEL(i32 %16)
  %18 = load %struct.malidp_se_config*, %struct.malidp_se_config** %5, align 8
  %19 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MALIDP550_SE_CTL_HCSEL(i32 %20)
  %22 = or i32 %17, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MALIDP550_SE_CONTROL, align 4
  %26 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %23, i32 %24, i32 %25)
  %27 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MALIDP550_SE_CONTROL, align 4
  %30 = call i32 @malidp_hw_setbits(%struct.malidp_hw_device* %27, i32 %28, i32 %29)
  ret i32 0
}

declare dso_local i32 @MALIDP550_SE_CTL_VCSEL(i32) #1

declare dso_local i32 @MALIDP550_SE_CTL_HCSEL(i32) #1

declare dso_local i32 @malidp_hw_clearbits(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @malidp_hw_setbits(%struct.malidp_hw_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
