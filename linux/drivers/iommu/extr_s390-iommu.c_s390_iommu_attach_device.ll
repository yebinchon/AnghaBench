; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.device = type { i32 }
%struct.s390_domain = type { i32, i32, i64 }
%struct.zpci_dev = type { i64, i64, %struct.s390_domain*, i64 }
%struct.s390_domain_device = type { i32, %struct.zpci_dev* }
%struct.TYPE_4__ = type { %struct.zpci_dev* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.device*)* @s390_iommu_attach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_iommu_attach_device(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.s390_domain*, align 8
  %7 = alloca %struct.zpci_dev*, align 8
  %8 = alloca %struct.s390_domain_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %11 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %12 = call %struct.s390_domain* @to_s390_domain(%struct.iommu_domain* %11)
  store %struct.s390_domain* %12, %struct.s390_domain** %6, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.TYPE_4__* @to_pci_dev(%struct.device* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.zpci_dev*, %struct.zpci_dev** %15, align 8
  store %struct.zpci_dev* %16, %struct.zpci_dev** %7, align 8
  %17 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %18 = icmp ne %struct.zpci_dev* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %132

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.s390_domain_device* @kzalloc(i32 16, i32 %23)
  store %struct.s390_domain_device* %24, %struct.s390_domain_device** %8, align 8
  %25 = load %struct.s390_domain_device*, %struct.s390_domain_device** %8, align 8
  %26 = icmp ne %struct.s390_domain_device* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %132

30:                                               ; preds = %22
  %31 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %32 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %37 = call i32 @zpci_dma_exit_device(%struct.zpci_dev* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %40 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %43 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %45 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %46 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %49 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %52 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @zpci_register_ioat(%struct.zpci_dev* %44, i32 0, i64 %47, i64 %50, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %126

59:                                               ; preds = %38
  %60 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %61 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %60, i32 0, i32 0
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %65 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %64, i32 0, i32 1
  %66 = call i64 @list_empty(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %59
  %69 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %70 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %73 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %76 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %79 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  %81 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %82 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  br label %110

84:                                               ; preds = %59
  %85 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %86 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %90 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %84
  %94 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %95 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %99 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %93, %84
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  %105 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %106 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %105, i32 0, i32 0
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  br label %126

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %68
  %111 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %112 = load %struct.s390_domain_device*, %struct.s390_domain_device** %8, align 8
  %113 = getelementptr inbounds %struct.s390_domain_device, %struct.s390_domain_device* %112, i32 0, i32 1
  store %struct.zpci_dev* %111, %struct.zpci_dev** %113, align 8
  %114 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %115 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %116 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %115, i32 0, i32 2
  store %struct.s390_domain* %114, %struct.s390_domain** %116, align 8
  %117 = load %struct.s390_domain_device*, %struct.s390_domain_device** %8, align 8
  %118 = getelementptr inbounds %struct.s390_domain_device, %struct.s390_domain_device* %117, i32 0, i32 0
  %119 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %120 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %119, i32 0, i32 1
  %121 = call i32 @list_add(i32* %118, i32* %120)
  %122 = load %struct.s390_domain*, %struct.s390_domain** %6, align 8
  %123 = getelementptr inbounds %struct.s390_domain, %struct.s390_domain* %122, i32 0, i32 0
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  store i32 0, i32* %3, align 4
  br label %132

126:                                              ; preds = %102, %58
  %127 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  %128 = call i32 @zpci_dma_init_device(%struct.zpci_dev* %127)
  %129 = load %struct.s390_domain_device*, %struct.s390_domain_device** %8, align 8
  %130 = call i32 @kfree(%struct.s390_domain_device* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %126, %110, %27, %19
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.s390_domain* @to_s390_domain(%struct.iommu_domain*) #1

declare dso_local %struct.TYPE_4__* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.s390_domain_device* @kzalloc(i32, i32) #1

declare dso_local i32 @zpci_dma_exit_device(%struct.zpci_dev*) #1

declare dso_local i32 @zpci_register_ioat(%struct.zpci_dev*, i32, i64, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @zpci_dma_init_device(%struct.zpci_dev*) #1

declare dso_local i32 @kfree(%struct.s390_domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
