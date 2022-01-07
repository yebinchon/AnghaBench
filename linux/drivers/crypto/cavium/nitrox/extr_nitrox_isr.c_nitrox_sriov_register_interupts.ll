; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nitrox_sriov_register_interupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_isr.c_nitrox_sriov_register_interupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { %struct.TYPE_3__, i32, %struct.nitrox_q_vector*, %struct.pci_dev* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nitrox_q_vector = type { i32, i32, i32, %struct.nitrox_device* }
%struct.pci_dev = type { i32 }

@NON_RING_MSIX_BASE = common dso_local global i32 0, align 4
@NR_NON_RING_VECTORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to allocate nps-core-int%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_NAMESZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"nitrox-core-int%d\00", align 1
@nps_core_int_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"irq failed for nitrox-core-int%d\0A\00", align 1
@nps_core_int_tasklet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nitrox_sriov_register_interupts(%struct.nitrox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.nitrox_q_vector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  %9 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %10 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %9, i32 0, i32 3
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @NON_RING_MSIX_BASE, align 4
  %13 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %14 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %19 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* @NR_NON_RING_VECTORS, align 4
  %22 = call i32 @pci_enable_msix_exact(%struct.pci_dev* %17, %struct.TYPE_4__* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %27 = call i32 @DEV(%struct.nitrox_device* %26)
  %28 = load i32, i32* @NON_RING_MSIX_BASE, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %95

31:                                               ; preds = %1
  %32 = load i32, i32* @NR_NON_RING_VECTORS, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.nitrox_q_vector* @kcalloc(i32 %32, i32 24, i32 %33)
  store %struct.nitrox_q_vector* %34, %struct.nitrox_q_vector** %5, align 8
  %35 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %36 = icmp ne %struct.nitrox_q_vector* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @pci_disable_msix(%struct.pci_dev* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %95

42:                                               ; preds = %31
  %43 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %44 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %45 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %44, i32 0, i32 3
  store %struct.nitrox_device* %43, %struct.nitrox_device** %45, align 8
  %46 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %47 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %48 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %47, i32 0, i32 2
  store %struct.nitrox_q_vector* %46, %struct.nitrox_q_vector** %48, align 8
  %49 = load i32, i32* @NR_NON_RING_VECTORS, align 4
  %50 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %51 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %53 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IRQ_NAMESZ, align 4
  %56 = load i32, i32* @NON_RING_MSIX_BASE, align 4
  %57 = call i32 @snprintf(i32 %54, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %59 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @nps_core_int_isr, align 4
  %65 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %66 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %69 = call i32 @request_irq(i32 %63, i32 %64, i32 0, i32 %67, %struct.nitrox_q_vector* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %42
  %73 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %74 = call i32 @DEV(%struct.nitrox_device* %73)
  %75 = load i32, i32* @NON_RING_MSIX_BASE, align 4
  %76 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %91

77:                                               ; preds = %42
  %78 = call i32 (...) @num_online_cpus()
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @get_cpu_mask(i32 %80)
  %82 = call i32 @irq_set_affinity_hint(i32 %79, i32 %81)
  %83 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %84 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %83, i32 0, i32 1
  %85 = load i32, i32* @nps_core_int_tasklet, align 4
  %86 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %87 = ptrtoint %struct.nitrox_q_vector* %86 to i64
  %88 = call i32 @tasklet_init(i32* %84, i32 %85, i64 %87)
  %89 = load %struct.nitrox_q_vector*, %struct.nitrox_q_vector** %5, align 8
  %90 = getelementptr inbounds %struct.nitrox_q_vector, %struct.nitrox_q_vector* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %95

91:                                               ; preds = %72
  %92 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %93 = call i32 @nitrox_sriov_unregister_interrupts(%struct.nitrox_device* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %77, %37, %25
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @pci_enable_msix_exact(%struct.pci_dev*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local %struct.nitrox_q_vector* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.nitrox_q_vector*) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @get_cpu_mask(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @nitrox_sriov_unregister_interrupts(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
