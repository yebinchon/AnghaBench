; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_irq_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_irq_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i64, i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@QM_EQ_EVENT_IRQ_VECTOR = common dso_local global i32 0, align 4
@qm_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@QM_HW_V2 = common dso_local global i64 0, align 8
@QM_AEQ_EVENT_IRQ_VECTOR = common dso_local global i32 0, align 4
@qm_aeq_irq = common dso_local global i32 0, align 4
@QM_HW_PF = common dso_local global i64 0, align 8
@QM_ABNORMAL_EVENT_IRQ_VECTOR = common dso_local global i32 0, align 4
@qm_abnormal_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_qm*)* @qm_irq_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_irq_register(%struct.hisi_qm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_qm*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %3, align 8
  %6 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %6, i32 0, i32 3
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @QM_EQ_EVENT_IRQ_VECTOR, align 4
  %11 = call i32 @pci_irq_vector(%struct.pci_dev* %9, i32 %10)
  %12 = load i32, i32* @qm_irq, align 4
  %13 = load i32, i32* @IRQF_SHARED, align 4
  %14 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %15 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %18 = call i32 @request_irq(i32 %11, i32 %12, i32 %13, i32 %16, %struct.hisi_qm* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %1
  %24 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %25 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QM_HW_V2, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %23
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load i32, i32* @QM_AEQ_EVENT_IRQ_VECTOR, align 4
  %32 = call i32 @pci_irq_vector(%struct.pci_dev* %30, i32 %31)
  %33 = load i32, i32* @qm_aeq_irq, align 4
  %34 = load i32, i32* @IRQF_SHARED, align 4
  %35 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %36 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %39 = call i32 @request_irq(i32 %32, i32 %33, i32 %34, i32 %37, %struct.hisi_qm* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %72

43:                                               ; preds = %29
  %44 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %45 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @QM_HW_PF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load i32, i32* @QM_ABNORMAL_EVENT_IRQ_VECTOR, align 4
  %52 = call i32 @pci_irq_vector(%struct.pci_dev* %50, i32 %51)
  %53 = load i32, i32* @qm_abnormal_irq, align 4
  %54 = load i32, i32* @IRQF_SHARED, align 4
  %55 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %56 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %59 = call i32 @request_irq(i32 %52, i32 %53, i32 %54, i32 %57, %struct.hisi_qm* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %66

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %23
  store i32 0, i32* %2, align 4
  br label %79

66:                                               ; preds = %62
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = load i32, i32* @QM_AEQ_EVENT_IRQ_VECTOR, align 4
  %69 = call i32 @pci_irq_vector(%struct.pci_dev* %67, i32 %68)
  %70 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %71 = call i32 @free_irq(i32 %69, %struct.hisi_qm* %70)
  br label %72

72:                                               ; preds = %66, %42
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = load i32, i32* @QM_EQ_EVENT_IRQ_VECTOR, align 4
  %75 = call i32 @pci_irq_vector(%struct.pci_dev* %73, i32 %74)
  %76 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %77 = call i32 @free_irq(i32 %75, %struct.hisi_qm* %76)
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %65, %21
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.hisi_qm*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.hisi_qm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
