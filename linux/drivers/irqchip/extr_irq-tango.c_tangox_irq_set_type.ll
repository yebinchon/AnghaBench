; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-tango.c_tangox_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-tango.c_tangox_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, i32 }
%struct.irq_chip_generic = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.irq_chip_regs }
%struct.irq_chip_regs = type { i64 }
%struct.TYPE_3__ = type { %struct.tangox_irq_chip* }
%struct.tangox_irq_chip = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@EDGE_CFG_RISE_SET = common dso_local global i64 0, align 8
@EDGE_CFG_FALL_CLR = common dso_local global i64 0, align 8
@EDGE_CFG_RISE_CLR = common dso_local global i64 0, align 8
@EDGE_CFG_FALL_SET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Invalid trigger mode %x for IRQ %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @tangox_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tangox_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca %struct.tangox_irq_chip*, align 8
  %8 = alloca %struct.irq_chip_regs*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.irq_chip_generic* %10, %struct.irq_chip_generic** %6, align 8
  %11 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %12 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %14, align 8
  store %struct.tangox_irq_chip* %15, %struct.tangox_irq_chip** %7, align 8
  %16 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %17 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.irq_chip_regs* %20, %struct.irq_chip_regs** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %108 [
    i32 130, label %24
    i32 131, label %45
    i32 129, label %66
    i32 128, label %87
  ]

24:                                               ; preds = %2
  %25 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %7, align 8
  %26 = load %struct.irq_chip_regs*, %struct.irq_chip_regs** %8, align 8
  %27 = getelementptr inbounds %struct.irq_chip_regs, %struct.irq_chip_regs* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EDGE_CFG_RISE_SET, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %32 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @intc_writel(%struct.tangox_irq_chip* %25, i64 %30, i32 %33)
  %35 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %7, align 8
  %36 = load %struct.irq_chip_regs*, %struct.irq_chip_regs** %8, align 8
  %37 = getelementptr inbounds %struct.irq_chip_regs, %struct.irq_chip_regs* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EDGE_CFG_FALL_CLR, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %42 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @intc_writel(%struct.tangox_irq_chip* %35, i64 %40, i32 %43)
  br label %116

45:                                               ; preds = %2
  %46 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %7, align 8
  %47 = load %struct.irq_chip_regs*, %struct.irq_chip_regs** %8, align 8
  %48 = getelementptr inbounds %struct.irq_chip_regs, %struct.irq_chip_regs* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EDGE_CFG_RISE_CLR, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %53 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @intc_writel(%struct.tangox_irq_chip* %46, i64 %51, i32 %54)
  %56 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %7, align 8
  %57 = load %struct.irq_chip_regs*, %struct.irq_chip_regs** %8, align 8
  %58 = getelementptr inbounds %struct.irq_chip_regs, %struct.irq_chip_regs* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EDGE_CFG_FALL_SET, align 8
  %61 = add nsw i64 %59, %60
  %62 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %63 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @intc_writel(%struct.tangox_irq_chip* %56, i64 %61, i32 %64)
  br label %116

66:                                               ; preds = %2
  %67 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %7, align 8
  %68 = load %struct.irq_chip_regs*, %struct.irq_chip_regs** %8, align 8
  %69 = getelementptr inbounds %struct.irq_chip_regs, %struct.irq_chip_regs* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EDGE_CFG_RISE_CLR, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %74 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @intc_writel(%struct.tangox_irq_chip* %67, i64 %72, i32 %75)
  %77 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %7, align 8
  %78 = load %struct.irq_chip_regs*, %struct.irq_chip_regs** %8, align 8
  %79 = getelementptr inbounds %struct.irq_chip_regs, %struct.irq_chip_regs* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EDGE_CFG_FALL_CLR, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %84 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @intc_writel(%struct.tangox_irq_chip* %77, i64 %82, i32 %85)
  br label %116

87:                                               ; preds = %2
  %88 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %7, align 8
  %89 = load %struct.irq_chip_regs*, %struct.irq_chip_regs** %8, align 8
  %90 = getelementptr inbounds %struct.irq_chip_regs, %struct.irq_chip_regs* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EDGE_CFG_RISE_SET, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %95 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @intc_writel(%struct.tangox_irq_chip* %88, i64 %93, i32 %96)
  %98 = load %struct.tangox_irq_chip*, %struct.tangox_irq_chip** %7, align 8
  %99 = load %struct.irq_chip_regs*, %struct.irq_chip_regs** %8, align 8
  %100 = getelementptr inbounds %struct.irq_chip_regs, %struct.irq_chip_regs* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @EDGE_CFG_FALL_SET, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %105 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @intc_writel(%struct.tangox_irq_chip* %98, i64 %103, i32 %106)
  br label %116

108:                                              ; preds = %2
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %111 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %120

116:                                              ; preds = %87, %66, %45, %24
  %117 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @irq_setup_alt_chip(%struct.irq_data* %117, i32 %118)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @intc_writel(%struct.tangox_irq_chip*, i64, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @irq_setup_alt_chip(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
