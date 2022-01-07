; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_dev.c_host1x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_dev.c_host1x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.host1x = type { i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @host1x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host1x_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.host1x*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.host1x* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.host1x* %5, %struct.host1x** %3, align 8
  %6 = load %struct.host1x*, %struct.host1x** %3, align 8
  %7 = call i32 @host1x_unregister(%struct.host1x* %6)
  %8 = load %struct.host1x*, %struct.host1x** %3, align 8
  %9 = call i32 @host1x_intr_deinit(%struct.host1x* %8)
  %10 = load %struct.host1x*, %struct.host1x** %3, align 8
  %11 = call i32 @host1x_syncpt_deinit(%struct.host1x* %10)
  %12 = load %struct.host1x*, %struct.host1x** %3, align 8
  %13 = getelementptr inbounds %struct.host1x, %struct.host1x* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @reset_control_assert(i32 %14)
  %16 = load %struct.host1x*, %struct.host1x** %3, align 8
  %17 = getelementptr inbounds %struct.host1x, %struct.host1x* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  %20 = load %struct.host1x*, %struct.host1x** %3, align 8
  %21 = getelementptr inbounds %struct.host1x, %struct.host1x* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %1
  %25 = load %struct.host1x*, %struct.host1x** %3, align 8
  %26 = getelementptr inbounds %struct.host1x, %struct.host1x* %25, i32 0, i32 2
  %27 = call i32 @put_iova_domain(i32* %26)
  %28 = load %struct.host1x*, %struct.host1x** %3, align 8
  %29 = getelementptr inbounds %struct.host1x, %struct.host1x* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.host1x*, %struct.host1x** %3, align 8
  %32 = getelementptr inbounds %struct.host1x, %struct.host1x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @iommu_detach_group(i64 %30, i32 %33)
  %35 = load %struct.host1x*, %struct.host1x** %3, align 8
  %36 = getelementptr inbounds %struct.host1x, %struct.host1x* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @iommu_domain_free(i64 %37)
  %39 = call i32 (...) @iova_cache_put()
  %40 = load %struct.host1x*, %struct.host1x** %3, align 8
  %41 = getelementptr inbounds %struct.host1x, %struct.host1x* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @iommu_group_put(i32 %42)
  br label %44

44:                                               ; preds = %24, %1
  ret i32 0
}

declare dso_local %struct.host1x* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @host1x_unregister(%struct.host1x*) #1

declare dso_local i32 @host1x_intr_deinit(%struct.host1x*) #1

declare dso_local i32 @host1x_syncpt_deinit(%struct.host1x*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @put_iova_domain(i32*) #1

declare dso_local i32 @iommu_detach_group(i64, i32) #1

declare dso_local i32 @iommu_domain_free(i64) #1

declare dso_local i32 @iova_cache_put(...) #1

declare dso_local i32 @iommu_group_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
