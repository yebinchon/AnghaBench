; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_attach_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_omap_iommu_attach_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_iommu_domain = type { i32, %struct.omap_iommu_device* }
%struct.omap_iommu_device = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOPGD_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.omap_iommu_domain*)* @omap_iommu_attach_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_iommu_attach_init(%struct.device* %0, %struct.omap_iommu_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.omap_iommu_domain*, align 8
  %6 = alloca %struct.omap_iommu_device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.omap_iommu_domain* %1, %struct.omap_iommu_domain** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @omap_iommu_count(%struct.device* %8)
  %10 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %11 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %13 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %21 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.omap_iommu_device* @kcalloc(i32 %22, i32 8, i32 %23)
  %25 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %26 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %25, i32 0, i32 1
  store %struct.omap_iommu_device* %24, %struct.omap_iommu_device** %26, align 8
  %27 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %28 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %27, i32 0, i32 1
  %29 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %28, align 8
  %30 = icmp ne %struct.omap_iommu_device* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %78

34:                                               ; preds = %19
  %35 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %36 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %35, i32 0, i32 1
  %37 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %36, align 8
  store %struct.omap_iommu_device* %37, %struct.omap_iommu_device** %6, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %72, %34
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.omap_iommu_domain*, %struct.omap_iommu_domain** %5, align 8
  %41 = getelementptr inbounds %struct.omap_iommu_domain, %struct.omap_iommu_domain* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %38
  %45 = load i32, i32* @IOPGD_TABLE_SIZE, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i64 @kzalloc(i32 %45, i32 %46)
  %48 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  %49 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  %51 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %44
  %58 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  %59 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @IOPGD_TABLE_SIZE, align 4
  %62 = call i32 @IS_ALIGNED(i64 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = load %struct.omap_iommu_device*, %struct.omap_iommu_device** %6, align 8
  %76 = getelementptr inbounds %struct.omap_iommu_device, %struct.omap_iommu_device* %75, i32 1
  store %struct.omap_iommu_device* %76, %struct.omap_iommu_device** %6, align 8
  br label %38

77:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %68, %54, %31, %16
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @omap_iommu_count(%struct.device*) #1

declare dso_local %struct.omap_iommu_device* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
