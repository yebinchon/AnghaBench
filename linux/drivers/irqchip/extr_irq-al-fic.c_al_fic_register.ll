; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-al-fic.c_al_fic_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-al-fic.c_al_fic_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.al_fic = type { i32, i32, i32, i32 }
%struct.irq_chip_generic = type { %struct.al_fic*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NR_FIC_IRQS = common dso_local global i32 0, align 4
@irq_generic_chip_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"fail to add irq domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_GC_INIT_MASK_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"fail to allocate generic chip (%d)\0A\00", align 1
@AL_FIC_MASK = common dso_local global i32 0, align 4
@AL_FIC_CAUSE = common dso_local global i32 0, align 4
@irq_gc_mask_set_bit = common dso_local global i32 0, align 4
@irq_gc_mask_clr_bit = common dso_local global i32 0, align 4
@irq_gc_ack_clr_bit = common dso_local global i32 0, align 4
@al_fic_irq_set_type = common dso_local global i32 0, align 4
@al_fic_irq_retrigger = common dso_local global i32 0, align 4
@IRQCHIP_SKIP_SET_WAKE = common dso_local global i32 0, align 4
@al_fic_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.al_fic*)* @al_fic_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_fic_register(%struct.device_node* %0, %struct.al_fic* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.al_fic*, align 8
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.al_fic* %1, %struct.al_fic** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = load i32, i32* @NR_FIC_IRQS, align 4
  %10 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %11 = call i32 @irq_domain_add_linear(%struct.device_node* %8, i32 %9, i32* @irq_generic_chip_ops, %struct.al_fic* %10)
  %12 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %13 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %15 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %111

22:                                               ; preds = %2
  %23 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %24 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NR_FIC_IRQS, align 4
  %27 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %28 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @handle_level_irq, align 4
  %31 = load i32, i32* @IRQ_GC_INIT_MASK_CACHE, align 4
  %32 = call i32 @irq_alloc_domain_generic_chips(i32 %25, i32 %26, i32 1, i32 %29, i32 %30, i32 0, i32 0, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %105

38:                                               ; preds = %22
  %39 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %40 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32 %41, i32 0)
  store %struct.irq_chip_generic* %42, %struct.irq_chip_generic** %6, align 8
  %43 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %44 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %47 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @AL_FIC_MASK, align 4
  %49 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %50 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* @AL_FIC_CAUSE, align 4
  %55 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %56 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* @irq_gc_mask_set_bit, align 4
  %61 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %62 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* @irq_gc_mask_clr_bit, align 4
  %67 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %68 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* @irq_gc_ack_clr_bit, align 4
  %73 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %74 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* @al_fic_irq_set_type, align 4
  %79 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %80 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* @al_fic_irq_retrigger, align 4
  %85 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %86 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 4
  %90 = load i32, i32* @IRQCHIP_SKIP_SET_WAKE, align 4
  %91 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %92 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 4
  %96 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %97 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %98 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %97, i32 0, i32 0
  store %struct.al_fic* %96, %struct.al_fic** %98, align 8
  %99 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %100 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @al_fic_irq_handler, align 4
  %103 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %104 = call i32 @irq_set_chained_handler_and_data(i32 %101, i32 %102, %struct.al_fic* %103)
  store i32 0, i32* %3, align 4
  br label %111

105:                                              ; preds = %35
  %106 = load %struct.al_fic*, %struct.al_fic** %5, align 8
  %107 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @irq_domain_remove(i32 %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %105, %38, %18
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.al_fic*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @irq_alloc_domain_generic_chips(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.irq_chip_generic* @irq_get_domain_generic_chip(i32, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.al_fic*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
