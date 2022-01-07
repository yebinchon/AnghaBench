; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_request_default_domain_for_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_request_default_domain_for_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_domain = type { i64 }
%struct.iommu_group = type { i32, %struct.iommu_domain* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Using iommu %s mapping\0A\00", align 1
@IOMMU_DOMAIN_DMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @request_default_domain_for_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_default_domain_for_dev(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iommu_domain*, align 8
  %7 = alloca %struct.iommu_group*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.iommu_group* @iommu_group_get(%struct.device* %9)
  store %struct.iommu_group* %10, %struct.iommu_group** %7, align 8
  %11 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %12 = icmp ne %struct.iommu_group* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %91

16:                                               ; preds = %2
  %17 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %18 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  store i32 0, i32* %8, align 4
  %20 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %21 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %20, i32 0, i32 1
  %22 = load %struct.iommu_domain*, %struct.iommu_domain** %21, align 8
  %23 = icmp ne %struct.iommu_domain* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %26 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %25, i32 0, i32 1
  %27 = load %struct.iommu_domain*, %struct.iommu_domain** %26, align 8
  %28 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %84

33:                                               ; preds = %24, %16
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %37 = call i32 @iommu_group_device_count(%struct.iommu_group* %36)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %84

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call %struct.iommu_domain* @__iommu_domain_alloc(i32 %45, i64 %46)
  store %struct.iommu_domain* %47, %struct.iommu_domain** %6, align 8
  %48 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %49 = icmp ne %struct.iommu_domain* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %84

51:                                               ; preds = %40
  %52 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %53 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %54 = call i32 @__iommu_attach_group(%struct.iommu_domain* %52, %struct.iommu_group* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %59 = call i32 @iommu_domain_free(%struct.iommu_domain* %58)
  br label %84

60:                                               ; preds = %51
  %61 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @iommu_group_create_direct_mappings(%struct.iommu_group* %61, %struct.device* %62)
  %64 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %65 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %64, i32 0, i32 1
  %66 = load %struct.iommu_domain*, %struct.iommu_domain** %65, align 8
  %67 = icmp ne %struct.iommu_domain* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %70 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %69, i32 0, i32 1
  %71 = load %struct.iommu_domain*, %struct.iommu_domain** %70, align 8
  %72 = call i32 @iommu_domain_free(%struct.iommu_domain* %71)
  br label %73

73:                                               ; preds = %68, %60
  %74 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %75 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %76 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %75, i32 0, i32 1
  store %struct.iommu_domain* %74, %struct.iommu_domain** %76, align 8
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @IOMMU_DOMAIN_DMA, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %83 = call i32 @dev_info(%struct.device* %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %82)
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %73, %57, %50, %39, %32
  %85 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %86 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %89 = call i32 @iommu_group_put(%struct.iommu_group* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %84, %13
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.iommu_group* @iommu_group_get(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iommu_group_device_count(%struct.iommu_group*) #1

declare dso_local %struct.iommu_domain* @__iommu_domain_alloc(i32, i64) #1

declare dso_local i32 @__iommu_attach_group(%struct.iommu_domain*, %struct.iommu_group*) #1

declare dso_local i32 @iommu_domain_free(%struct.iommu_domain*) #1

declare dso_local i32 @iommu_group_create_direct_mappings(%struct.iommu_group*, %struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
