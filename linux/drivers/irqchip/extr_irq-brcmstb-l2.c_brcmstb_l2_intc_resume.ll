; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-brcmstb-l2.c_brcmstb_l2_intc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-brcmstb-l2.c_brcmstb_l2_intc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32, %struct.brcmstb_l2_intc_data* }
%struct.brcmstb_l2_intc_data = type { i32 }
%struct.irq_chip_type = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @brcmstb_l2_intc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_l2_intc_resume(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_chip_generic*, align 8
  %4 = alloca %struct.irq_chip_type*, align 8
  %5 = alloca %struct.brcmstb_l2_intc_data*, align 8
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.irq_chip_generic* %8, %struct.irq_chip_generic** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data* %9)
  store %struct.irq_chip_type* %10, %struct.irq_chip_type** %4, align 8
  %11 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %12 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %11, i32 0, i32 1
  %13 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %12, align 8
  store %struct.brcmstb_l2_intc_data* %13, %struct.brcmstb_l2_intc_data** %5, align 8
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @irq_gc_lock_irqsave(%struct.irq_chip_generic* %14, i64 %15)
  %17 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %18 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %24 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %5, align 8
  %25 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %29 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  %33 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %34 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %23, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %22, %1
  %39 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %40 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %5, align 8
  %41 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %44 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %39, i32 %42, i32 %46)
  %48 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %49 = load %struct.brcmstb_l2_intc_data*, %struct.brcmstb_l2_intc_data** %5, align 8
  %50 = getelementptr inbounds %struct.brcmstb_l2_intc_data, %struct.brcmstb_l2_intc_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.irq_chip_type*, %struct.irq_chip_type** %4, align 8
  %54 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @irq_reg_writel(%struct.irq_chip_generic* %48, i32 %52, i32 %56)
  %58 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %3, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @irq_gc_unlock_irqrestore(%struct.irq_chip_generic* %58, i64 %59)
  ret void
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip_type* @irq_data_get_chip_type(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock_irqsave(%struct.irq_chip_generic*, i64) #1

declare dso_local i32 @irq_reg_writel(%struct.irq_chip_generic*, i32, i32) #1

declare dso_local i32 @irq_gc_unlock_irqrestore(%struct.irq_chip_generic*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
