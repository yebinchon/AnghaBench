; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c_irq_demux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-s3c24xx.c_s3c_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 }
%struct.s3c_irq_data = type { i64, %struct.s3c_irq_intc*, %struct.s3c_irq_intc* }
%struct.s3c_irq_intc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @s3c_irq_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_irq_demux(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.s3c_irq_data*, align 8
  %5 = alloca %struct.s3c_irq_intc*, align 8
  %6 = alloca %struct.s3c_irq_intc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %12)
  store %struct.irq_chip* %13, %struct.irq_chip** %3, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call %struct.s3c_irq_data* @irq_desc_get_chip_data(%struct.irq_desc* %14)
  store %struct.s3c_irq_data* %15, %struct.s3c_irq_data** %4, align 8
  %16 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %4, align 8
  %17 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %16, i32 0, i32 2
  %18 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %17, align 8
  store %struct.s3c_irq_intc* %18, %struct.s3c_irq_intc** %5, align 8
  %19 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %4, align 8
  %20 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %19, i32 0, i32 1
  %21 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %20, align 8
  store %struct.s3c_irq_intc* %21, %struct.s3c_irq_intc** %6, align 8
  %22 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %5, align 8
  %23 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @irq_domain_get_of_node(i32 %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 32, i32 0
  store i32 %28, i32* %8, align 4
  %29 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %30 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %31 = call i32 @chained_irq_enter(%struct.irq_chip* %29, %struct.irq_desc* %30)
  %32 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %6, align 8
  %33 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @readl_relaxed(i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %6, align 8
  %37 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @readl_relaxed(i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %10, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %10, align 8
  %44 = load %struct.s3c_irq_data*, %struct.s3c_irq_data** %4, align 8
  %45 = getelementptr inbounds %struct.s3c_irq_data, %struct.s3c_irq_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %52, %1
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @__ffs(i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %10, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %10, align 8
  %61 = load %struct.s3c_irq_intc*, %struct.s3c_irq_intc** %6, align 8
  %62 = getelementptr inbounds %struct.s3c_irq_intc, %struct.s3c_irq_intc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %64, %65
  %67 = call i32 @irq_find_mapping(i32 %63, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @generic_handle_irq(i32 %68)
  br label %49

70:                                               ; preds = %49
  %71 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %72 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %73 = call i32 @chained_irq_exit(%struct.irq_chip* %71, %struct.irq_desc* %72)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.s3c_irq_data* @irq_desc_get_chip_data(%struct.irq_desc*) #1

declare dso_local i64 @irq_domain_get_of_node(i32) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
