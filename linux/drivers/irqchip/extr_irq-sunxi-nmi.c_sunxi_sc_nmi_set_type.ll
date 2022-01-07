; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sunxi-nmi.c_sunxi_sc_nmi_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sunxi-nmi.c_sunxi_sc_nmi_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32, %struct.irq_chip_type* }
%struct.irq_chip_type = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IRQF_TRIGGER_MASK = common dso_local global i32 0, align 4
@SUNXI_SRC_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@SUNXI_SRC_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@SUNXI_SRC_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@SUNXI_SRC_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Cannot assign multiple trigger modes to IRQ %d.\0A\00", align 1
@EBADR = common dso_local global i32 0, align 4
@SUNXI_NMI_SRC_TYPE_MASK = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @sunxi_sc_nmi_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_sc_nmi_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca %struct.irq_chip_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.irq_chip_generic* %13, %struct.irq_chip_generic** %6, align 8
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %15 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %14, i32 0, i32 1
  %16 = load %struct.irq_chip_type*, %struct.irq_chip_type** %15, align 8
  store %struct.irq_chip_type* %16, %struct.irq_chip_type** %7, align 8
  %17 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %18 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %22 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IRQF_TRIGGER_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %34 [
    i32 132, label %26
    i32 131, label %28
    i32 130, label %30
    i32 128, label %32
    i32 129, label %32
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @SUNXI_SRC_TYPE_EDGE_FALLING, align 4
  store i32 %27, i32* %10, align 4
  br label %43

28:                                               ; preds = %2
  %29 = load i32, i32* @SUNXI_SRC_TYPE_EDGE_RISING, align 4
  store i32 %29, i32* %10, align 4
  br label %43

30:                                               ; preds = %2
  %31 = load i32, i32* @SUNXI_SRC_TYPE_LEVEL_HIGH, align 4
  store i32 %31, i32* %10, align 4
  br label %43

32:                                               ; preds = %2, %2
  %33 = load i32, i32* @SUNXI_SRC_TYPE_LEVEL_LOW, align 4
  store i32 %33, i32* %10, align 4
  br label %43

34:                                               ; preds = %2
  %35 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %36 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %35)
  %37 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %38 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EBADR, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %92

43:                                               ; preds = %32, %30, %28, %26
  %44 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @irqd_set_trigger_type(%struct.irq_data* %44, i32 %45)
  %47 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @irq_setup_alt_chip(%struct.irq_data* %47, i32 %48)
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %69, %43
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %53 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %58 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %65 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = load %struct.irq_chip_type*, %struct.irq_chip_type** %7, align 8
  %73 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %72, i32 1
  store %struct.irq_chip_type* %73, %struct.irq_chip_type** %7, align 8
  br label %50

74:                                               ; preds = %50
  %75 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @sunxi_sc_nmi_read(%struct.irq_chip_generic* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* @SUNXI_NMI_SRC_TYPE_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @sunxi_sc_nmi_write(%struct.irq_chip_generic* %85, i32 %86, i32 %87)
  %89 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %90 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %89)
  %91 = load i32, i32* @IRQ_SET_MASK_OK, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %74, %34
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

declare dso_local i32 @irq_setup_alt_chip(%struct.irq_data*, i32) #1

declare dso_local i32 @sunxi_sc_nmi_read(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @sunxi_sc_nmi_write(%struct.irq_chip_generic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
