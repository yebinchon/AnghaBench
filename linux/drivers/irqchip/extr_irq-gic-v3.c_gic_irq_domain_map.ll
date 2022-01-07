; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_gic_irq_domain_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_gic_irq_domain_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32 }
%struct.irq_domain = type { i32 }

@gic_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@supports_deactivate_key = common dso_local global i32 0, align 4
@gic_eoimode1_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@handle_percpu_devid_irq = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@handle_fasteoi_irq = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @gic_irq_domain_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_irq_domain_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_chip*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.irq_chip* @gic_chip, %struct.irq_chip** %8, align 8
  %9 = call i64 @static_branch_likely(i32* @supports_deactivate_key)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.irq_chip* @gic_eoimode1_chip, %struct.irq_chip** %8, align 8
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @__get_intid_range(i32 %13)
  switch i32 %14, label %62 [
    i32 129, label %15
    i32 132, label %15
    i32 128, label %30
    i32 131, label %30
    i32 130, label %46
  ]

15:                                               ; preds = %12, %12
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @irq_set_percpu_devid(i32 %16)
  %18 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %22 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %23 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @handle_percpu_devid_irq, align 4
  %26 = call i32 @irq_domain_set_info(%struct.irq_domain* %18, i32 %19, i32 %20, %struct.irq_chip* %21, i32 %24, i32 %25, i32* null, i32* null)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %29 = call i32 @irq_set_status_flags(i32 %27, i32 %28)
  br label %65

30:                                               ; preds = %12, %12
  %31 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %35 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %36 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @handle_fasteoi_irq, align 4
  %39 = call i32 @irq_domain_set_info(%struct.irq_domain* %31, i32 %32, i32 %33, %struct.irq_chip* %34, i32 %37, i32 %38, i32* null, i32* null)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @irq_set_probe(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @irq_to_desc(i32 %42)
  %44 = call i32 @irq_desc_get_irq_data(i32 %43)
  %45 = call i32 @irqd_set_single_target(i32 %44)
  br label %65

46:                                               ; preds = %12
  %47 = call i32 (...) @gic_dist_supports_lpis()
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %66

52:                                               ; preds = %46
  %53 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %57 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %58 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @handle_fasteoi_irq, align 4
  %61 = call i32 @irq_domain_set_info(%struct.irq_domain* %53, i32 %54, i32 %55, %struct.irq_chip* %56, i32 %59, i32 %60, i32* null, i32* null)
  br label %65

62:                                               ; preds = %12
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %52, %30, %15
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62, %49
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @static_branch_likely(i32*) #1

declare dso_local i32 @__get_intid_range(i32) #1

declare dso_local i32 @irq_set_percpu_devid(i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, %struct.irq_chip*, i32, i32, i32*, i32*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irq_set_probe(i32) #1

declare dso_local i32 @irqd_set_single_target(i32) #1

declare dso_local i32 @irq_desc_get_irq_data(i32) #1

declare dso_local i32 @irq_to_desc(i32) #1

declare dso_local i32 @gic_dist_supports_lpis(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
