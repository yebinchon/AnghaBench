; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_set_vclock_hisilicon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_set_vclock_hisilicon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.hibmc_drm_private* }
%struct.hibmc_drm_private = type { i64 }

@CRT_PLL1_HS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i64)* @set_vclock_hisilicon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vclock_hisilicon(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hibmc_drm_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %8, align 8
  store %struct.hibmc_drm_private* %9, %struct.hibmc_drm_private** %6, align 8
  %10 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %11 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CRT_PLL1_HS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = call i64 @CRT_PLL1_HS_OUTER_BYPASS(i32 1)
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %22 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CRT_PLL1_HS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i64 %20, i64 %25)
  %27 = call i64 @CRT_PLL1_HS_INTER_BYPASS(i32 1)
  %28 = call i64 @CRT_PLL1_HS_POWERON(i32 1)
  %29 = or i64 %27, %28
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %32 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CRT_PLL1_HS, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i64 %30, i64 %35)
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %39 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CRT_PLL1_HS, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i64 %37, i64 %42)
  %44 = call i32 @usleep_range(i32 1000, i32 2000)
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @CRT_PLL1_HS_POWERON(i32 1)
  %47 = xor i64 %46, -1
  %48 = and i64 %45, %47
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %51 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CRT_PLL1_HS, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i64 %49, i64 %54)
  %56 = call i32 @usleep_range(i32 1000, i32 2000)
  %57 = call i64 @CRT_PLL1_HS_INTER_BYPASS(i32 1)
  %58 = xor i64 %57, -1
  %59 = load i64, i64* %5, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %63 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CRT_PLL1_HS, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i64 %61, i64 %66)
  %68 = call i32 @usleep_range(i32 1000, i32 2000)
  %69 = call i64 @CRT_PLL1_HS_OUTER_BYPASS(i32 1)
  %70 = load i64, i64* %5, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %74 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CRT_PLL1_HS, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i64 %72, i64 %77)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @CRT_PLL1_HS_OUTER_BYPASS(i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @CRT_PLL1_HS_INTER_BYPASS(i32) #1

declare dso_local i64 @CRT_PLL1_HS_POWERON(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
