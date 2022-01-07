; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_register_device_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_register_device_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.iommu_param* }
%struct.iommu_param = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_register_device_fault_handler(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iommu_param*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.iommu_param*, %struct.iommu_param** %11, align 8
  store %struct.iommu_param* %12, %struct.iommu_param** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %14 = icmp ne %struct.iommu_param* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %71

18:                                               ; preds = %3
  %19 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %20 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %23 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %66

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 @get_device(%struct.device* %30)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.TYPE_2__* @kzalloc(i32 24, i32 %32)
  %34 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %35 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %34, i32 0, i32 1
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %35, align 8
  %36 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %37 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @put_device(%struct.device* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %66

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %48 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %53 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i8* %51, i8** %55, align 8
  %56 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %57 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %62 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  br label %66

66:                                               ; preds = %45, %40, %26
  %67 = load %struct.iommu_param*, %struct.iommu_param** %8, align 8
  %68 = getelementptr inbounds %struct.iommu_param, %struct.iommu_param* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @kzalloc(i32, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
