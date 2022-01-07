; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-partition-percpu.c_partition_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.partition_desc*, %struct.TYPE_3__* }
%struct.partition_desc = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { i32 }

@partition_handle_irq = common dso_local global i32 0, align 4
@partition_irq_chip = common dso_local global i32 0, align 4
@handle_percpu_devid_irq = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @partition_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.irq_fwspec*, align 8
  %14 = alloca %struct.partition_desc*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %16, %struct.irq_fwspec** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %22 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)** %24, align 8
  %26 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %27 = load %struct.irq_fwspec*, %struct.irq_fwspec** %13, align 8
  %28 = call i32 %25(%struct.irq_domain* %26, %struct.irq_fwspec* %27, i64* %11, i32* %12)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %66

33:                                               ; preds = %4
  %34 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %35 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %34, i32 0, i32 0
  %36 = load %struct.partition_desc*, %struct.partition_desc** %35, align 8
  store %struct.partition_desc* %36, %struct.partition_desc** %14, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.partition_desc*, %struct.partition_desc** %14, align 8
  %39 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_bit(i64 %37, i32 %40)
  %42 = load %struct.partition_desc*, %struct.partition_desc** %14, align 8
  %43 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @irq_desc_get_irq(i32 %44)
  %46 = load i32, i32* @partition_handle_irq, align 4
  %47 = load %struct.partition_desc*, %struct.partition_desc** %14, align 8
  %48 = call i32 @irq_set_chained_handler_and_data(i32 %45, i32 %46, %struct.partition_desc* %47)
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.partition_desc*, %struct.partition_desc** %14, align 8
  %51 = getelementptr inbounds %struct.partition_desc, %struct.partition_desc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @irq_set_percpu_devid_partition(i32 %49, i32* %55)
  %57 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.partition_desc*, %struct.partition_desc** %14, align 8
  %61 = load i32, i32* @handle_percpu_devid_irq, align 4
  %62 = call i32 @irq_domain_set_info(%struct.irq_domain* %57, i32 %58, i64 %59, i32* @partition_irq_chip, %struct.partition_desc* %60, i32 %61, i32* null, i32* null)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %65 = call i32 @irq_set_status_flags(i32 %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %33, %31
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.partition_desc*) #1

declare dso_local i32 @irq_desc_get_irq(i32) #1

declare dso_local i32 @irq_set_percpu_devid_partition(i32, i32*) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i64, i32*, %struct.partition_desc*, i32, i32*, i32*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
