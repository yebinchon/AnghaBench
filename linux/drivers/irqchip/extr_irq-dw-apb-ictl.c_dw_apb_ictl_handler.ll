; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-dw-apb-ictl.c_dw_apb_ictl_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-dw-apb-ictl.c_dw_apb_ictl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_domain = type { i32 }
%struct.irq_chip = type { i32 }
%struct.irq_chip_generic = type { i64, i64 }

@APB_INT_FINALSTATUS_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @dw_apb_ictl_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_apb_ictl_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc* %10)
  store %struct.irq_domain* %11, %struct.irq_domain** %3, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %12)
  store %struct.irq_chip* %13, %struct.irq_chip** %4, align 8
  %14 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = call i32 @chained_irq_enter(%struct.irq_chip* %14, %struct.irq_desc* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %56, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %20 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain* %24, i32 %25)
  store %struct.irq_chip_generic* %26, %struct.irq_chip_generic** %6, align 8
  %27 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %28 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @APB_INT_FINALSTATUS_L, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl_relaxed(i64 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %36, %23
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ffs(i32 %37)
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %41 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %42 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @irq_find_mapping(%struct.irq_domain* %40, i64 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @generic_handle_irq(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 32
  store i32 %58, i32* %5, align 4
  br label %17

59:                                               ; preds = %17
  %60 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %61 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %62 = call i32 @chained_irq_exit(%struct.irq_chip* %60, %struct.irq_desc* %61)
  ret void
}

declare dso_local %struct.irq_domain* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(%struct.irq_domain*, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
