; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_setup_6120_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_setup_6120_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@Revision_R = common dso_local global i32 0, align 4
@ChipRevMinor = common dso_local global i32 0, align 4
@GPIO_ERRINTR_MASK = common dso_local global i32 0, align 4
@kr_gpio_mask = common dso_local global i32 0, align 4
@qib_6120intr = common dso_local global i32 0, align 4
@QIB_DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Couldn't setup interrupt (irq=%d): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_setup_6120_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_setup_6120_interrupt(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %4 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @Revision_R, align 4
  %8 = load i32, i32* @ChipRevMinor, align 4
  %9 = call i32 @SYM_FIELD(i32 %6, i32 %7, i32 %8)
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i32, i32* @GPIO_ERRINTR_MASK, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 4
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %20 = load i32, i32* @kr_gpio_mask, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qib_write_kreg(%struct.qib_devdata* %19, i32 %20, i32 %25)
  br label %27

27:                                               ; preds = %11, %1
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @qib_6120intr, align 4
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %33 = load i32, i32* @QIB_DRV_NAME, align 4
  %34 = call i32 @pci_request_irq(i32 %30, i32 0, i32 %31, i32* null, %struct.qib_devdata* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pci_irq_vector(i32 %41, i32 0)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @qib_dev_err(%struct.qib_devdata* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %27
  ret void
}

declare dso_local i32 @SYM_FIELD(i32, i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @pci_request_irq(i32, i32, i32, i32*, %struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32, i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
