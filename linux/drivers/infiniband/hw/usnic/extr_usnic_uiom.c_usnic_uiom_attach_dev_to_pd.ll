; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom.c_usnic_uiom_attach_dev_to_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom.c_usnic_uiom_attach_dev_to_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_uiom_pd = type { i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.usnic_uiom_dev = type { i32, %struct.device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOMMU_CAP_CACHE_COHERENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"IOMMU of %s does not support cache coherency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_uiom_attach_dev_to_pd(%struct.usnic_uiom_pd* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usnic_uiom_pd*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.usnic_uiom_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.usnic_uiom_pd* %0, %struct.usnic_uiom_pd** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.usnic_uiom_dev* @kzalloc(i32 16, i32 %8)
  store %struct.usnic_uiom_dev* %9, %struct.usnic_uiom_dev** %6, align 8
  %10 = load %struct.usnic_uiom_dev*, %struct.usnic_uiom_dev** %6, align 8
  %11 = icmp ne %struct.usnic_uiom_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.usnic_uiom_dev*, %struct.usnic_uiom_dev** %6, align 8
  %18 = getelementptr inbounds %struct.usnic_uiom_dev, %struct.usnic_uiom_dev* %17, i32 0, i32 1
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %4, align 8
  %20 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 @iommu_attach_device(i32 %21, %struct.device* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %62

27:                                               ; preds = %15
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IOMMU_CAP_CACHE_COHERENCY, align 4
  %32 = call i32 @iommu_capable(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @dev_name(%struct.device* %35)
  %37 = call i32 @usnic_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %56

40:                                               ; preds = %27
  %41 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %4, align 8
  %42 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %41, i32 0, i32 1
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.usnic_uiom_dev*, %struct.usnic_uiom_dev** %6, align 8
  %45 = getelementptr inbounds %struct.usnic_uiom_dev, %struct.usnic_uiom_dev* %44, i32 0, i32 0
  %46 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %4, align 8
  %47 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %46, i32 0, i32 3
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %4, align 8
  %50 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %4, align 8
  %54 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  store i32 0, i32* %3, align 4
  br label %66

56:                                               ; preds = %34
  %57 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %4, align 8
  %58 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @iommu_detach_device(i32 %59, %struct.device* %60)
  br label %62

62:                                               ; preds = %56, %26
  %63 = load %struct.usnic_uiom_dev*, %struct.usnic_uiom_dev** %6, align 8
  %64 = call i32 @kfree(%struct.usnic_uiom_dev* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %40, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.usnic_uiom_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @iommu_attach_device(i32, %struct.device*) #1

declare dso_local i32 @iommu_capable(i32, i32) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iommu_detach_device(i32, %struct.device*) #1

declare dso_local i32 @kfree(%struct.usnic_uiom_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
