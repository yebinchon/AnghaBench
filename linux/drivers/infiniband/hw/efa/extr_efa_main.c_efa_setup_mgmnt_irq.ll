; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_setup_mgmnt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_setup_mgmnt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.efa_dev*, i32 }
%struct.TYPE_4__ = type { i32 }

@EFA_IRQNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"efa-mgmnt@pci:%s\00", align 1
@efa_intr_msix_mgmnt = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Setup irq:0x%p vector:%d name:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efa_dev*)* @efa_setup_mgmnt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efa_setup_mgmnt_irq(%struct.efa_dev* %0) #0 {
  %2 = alloca %struct.efa_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %2, align 8
  %4 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %5 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @EFA_IRQNAME_SIZE, align 4
  %9 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %10 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i8* @pci_name(%struct.TYPE_4__* %11)
  %13 = call i32 @snprintf(i32 %7, i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @efa_intr_msix_mgmnt, align 4
  %15 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %16 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  store i32 %14, i32* %17, align 8
  %18 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %19 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %20 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 4
  store %struct.efa_dev* %18, %struct.efa_dev** %21, align 8
  %22 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %23 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %26 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_irq_vector(%struct.TYPE_4__* %24, i32 %27)
  %29 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %30 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @cpu_online_mask, align 4
  %33 = call i32 @cpumask_first(i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %36 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %40 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = call i32 @cpumask_set_cpu(i32 %38, i32* %41)
  %43 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %44 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %48 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %47, i32 0, i32 0
  %49 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %50 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  %54 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %48, i32 %52, i32 %56)
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
