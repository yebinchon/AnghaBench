; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.hisi_qm*)* }
%struct.hisi_qm = type { i32, i32, i64, i32, i32, %struct.TYPE_3__*, %struct.pci_dev*, i32 }
%struct.pci_dev = type { i64, %struct.device }
%struct.device = type { i32 }

@qm_hw_ops_v1 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@qm_hw_ops_v2 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to enable device mem!\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to request mem regions!\0A\00", align 1
@PCI_BAR_2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable MSI vectors!\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"init qm %s with %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"pf\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"vf\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dma api\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"iommu api\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_qm_init(%struct.hisi_qm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_qm*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %3, align 8
  %8 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %9 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %8, i32 0, i32 6
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %14 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %1
  %17 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %18 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %17, i32 0, i32 5
  store %struct.TYPE_3__* @qm_hw_ops_v1, %struct.TYPE_3__** %18, align 8
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %21 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %20, i32 0, i32 5
  store %struct.TYPE_3__* @qm_hw_ops_v2, %struct.TYPE_3__** %21, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %145

25:                                               ; preds = %19, %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_enable_device_mem(%struct.pci_dev* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %145

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %38 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pci_request_mem_regions(%struct.pci_dev* %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 1
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %141

47:                                               ; preds = %35
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* @PCI_BAR_2, align 4
  %50 = call i32 @pci_resource_start(%struct.pci_dev* %48, i32 %49)
  %51 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %52 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %51, i32 0, i32 6
  %53 = load %struct.pci_dev*, %struct.pci_dev** %52, align 8
  %54 = load i32, i32* @PCI_BAR_2, align 4
  %55 = call i32 @pci_resource_len(%struct.pci_dev* %53, i32 %54)
  %56 = call i32 @ioremap(i32 %50, i32 %55)
  %57 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %58 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %60 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %47
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %138

66:                                               ; preds = %47
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @DMA_BIT_MASK(i32 64)
  %69 = call i32 @dma_set_mask_and_coherent(%struct.device* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %133

73:                                               ; preds = %66
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = call i32 @pci_set_master(%struct.pci_dev* %74)
  %76 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %77 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %76, i32 0, i32 5
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32 (%struct.hisi_qm*)*, i32 (%struct.hisi_qm*)** %79, align 8
  %81 = icmp ne i32 (%struct.hisi_qm*)* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @EOPNOTSUPP, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %133

85:                                               ; preds = %73
  %86 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %87 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %86, i32 0, i32 5
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32 (%struct.hisi_qm*)*, i32 (%struct.hisi_qm*)** %89, align 8
  %91 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %92 = call i32 %90(%struct.hisi_qm* %91)
  store i32 %92, i32* %6, align 4
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @PCI_IRQ_MSI, align 4
  %97 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %85
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %133

103:                                              ; preds = %85
  %104 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %105 = call i32 @qm_irq_register(%struct.hisi_qm* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %130

109:                                              ; preds = %103
  %110 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %111 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %110, i32 0, i32 4
  %112 = call i32 @mutex_init(i32* %111)
  %113 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %114 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %113, i32 0, i32 3
  %115 = call i32 @rwlock_init(i32* %114)
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %123 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %124 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)
  %129 = call i32 @dev_dbg(%struct.device* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %122, i8* %128)
  store i32 0, i32* %2, align 4
  br label %145

130:                                              ; preds = %108
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %131)
  br label %133

133:                                              ; preds = %130, %100, %82, %72
  %134 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %135 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @iounmap(i32 %136)
  br label %138

138:                                              ; preds = %133, %63
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = call i32 @pci_release_mem_regions(%struct.pci_dev* %139)
  br label %141

141:                                              ; preds = %138, %43
  %142 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %143 = call i32 @pci_disable_device(%struct.pci_dev* %142)
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %141, %109, %30, %22
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pci_request_mem_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @qm_irq_register(%struct.hisi_qm*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i8*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
