; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_get_dev_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_get_dev_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_param = type { i32 }
%struct.device = type { %struct.iommu_param* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_param* (%struct.device*)* @iommu_get_dev_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_param* @iommu_get_dev_param(%struct.device* %0) #0 {
  %2 = alloca %struct.iommu_param*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iommu_param*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.iommu_param*, %struct.iommu_param** %6, align 8
  store %struct.iommu_param* %7, %struct.iommu_param** %4, align 8
  %8 = load %struct.iommu_param*, %struct.iommu_param** %4, align 8
  %9 = icmp ne %struct.iommu_param* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.iommu_param*, %struct.iommu_param** %4, align 8
  store %struct.iommu_param* %11, %struct.iommu_param** %2, align 8
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.iommu_param* @kzalloc(i32 4, i32 %13)
  store %struct.iommu_param* %14, %struct.iommu_param** %4, align 8
  %15 = load %struct.iommu_param*, %struct.iommu_param** %4, align 8
  %16 = icmp ne %struct.iommu_param* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.iommu_param* null, %struct.iommu_param** %2, align 8
  br label %26

18:                                               ; preds = %12
  %19 = load %struct.iommu_param*, %struct.iommu_param** %4, align 8
  %20 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %19, i32 0, i32 0
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.iommu_param*, %struct.iommu_param** %4, align 8
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  store %struct.iommu_param* %22, %struct.iommu_param** %24, align 8
  %25 = load %struct.iommu_param*, %struct.iommu_param** %4, align 8
  store %struct.iommu_param* %25, %struct.iommu_param** %2, align 8
  br label %26

26:                                               ; preds = %18, %17, %10
  %27 = load %struct.iommu_param*, %struct.iommu_param** %2, align 8
  ret %struct.iommu_param* %27
}

declare dso_local %struct.iommu_param* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
