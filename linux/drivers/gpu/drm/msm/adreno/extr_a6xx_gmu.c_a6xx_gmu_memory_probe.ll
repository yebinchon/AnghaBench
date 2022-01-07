; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_memory_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_memory_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32, i32*, i32 }

@platform_bus_type = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*)* @a6xx_gmu_memory_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_gmu_memory_probe(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a6xx_gmu*, align 8
  %4 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %3, align 8
  %5 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %6 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %5, i32 0, i32 0
  store i32 1610612736, i32* %6, align 8
  %7 = call i32* @iommu_domain_alloc(i32* @platform_bus_type)
  %8 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %9 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %8, i32 0, i32 1
  store i32* %7, i32** %9, align 8
  %10 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %11 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %19 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %22 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @iommu_attach_device(i32* %20, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %29 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @iommu_domain_free(i32* %30)
  %32 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %3, align 8
  %33 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %17
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32* @iommu_domain_alloc(i32*) #1

declare dso_local i32 @iommu_attach_device(i32*, i32) #1

declare dso_local i32 @iommu_domain_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
