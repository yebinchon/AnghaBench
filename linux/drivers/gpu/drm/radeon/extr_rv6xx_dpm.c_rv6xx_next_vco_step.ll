; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_next_vco_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_next_vco_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_sclk_stepping = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.radeon_device*, %struct.rv6xx_sclk_stepping*, i32, i32)* @rv6xx_next_vco_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rv6xx_next_vco_step(%struct.radeon_device* %0, %struct.rv6xx_sclk_stepping* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rv6xx_sclk_stepping, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.rv6xx_sclk_stepping*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.rv6xx_sclk_stepping* %1, %struct.rv6xx_sclk_stepping** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %7, align 8
  %11 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %7, align 8
  %18 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 100, %20
  %22 = mul nsw i32 %19, %21
  %23 = sdiv i32 %22, 100
  %24 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  br label %37

25:                                               ; preds = %4
  %26 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %7, align 8
  %27 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 100
  %30 = add nsw i32 %29, 99
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 100, %33
  %35 = sdiv i32 %32, %34
  %36 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %25, %16
  %38 = bitcast %struct.rv6xx_sclk_stepping* %5 to i64*
  %39 = load i64, i64* %38, align 4
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
