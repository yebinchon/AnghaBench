; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_alloc_parent_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ti-sci-inta.c_ti_sci_inta_alloc_parent_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_inta_vint_desc = type { i32, i32, i64, %struct.irq_domain* }
%struct.irq_domain = type { %struct.ti_sci_inta_irq_domain* }
%struct.ti_sci_inta_irq_domain = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@TI_SCI_RESOURCE_NULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ti_sci_inta_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ti_sci_inta_vint_desc* (%struct.irq_domain*)* @ti_sci_inta_alloc_parent_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ti_sci_inta_vint_desc* @ti_sci_inta_alloc_parent_irq(%struct.irq_domain* %0) #0 {
  %2 = alloca %struct.ti_sci_inta_vint_desc*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.ti_sci_inta_irq_domain*, align 8
  %5 = alloca %struct.ti_sci_inta_vint_desc*, align 8
  %6 = alloca %struct.irq_fwspec, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  %9 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %10 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %9, i32 0, i32 0
  %11 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %10, align 8
  store %struct.ti_sci_inta_irq_domain* %11, %struct.ti_sci_inta_irq_domain** %4, align 8
  %12 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %4, align 8
  %13 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ti_sci_get_free_resource(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @TI_SCI_RESOURCE_NULL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.ti_sci_inta_vint_desc* @ERR_PTR(i32 %21)
  store %struct.ti_sci_inta_vint_desc* %22, %struct.ti_sci_inta_vint_desc** %2, align 8
  br label %90

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ti_sci_inta_vint_desc* @kzalloc(i32 24, i32 %24)
  store %struct.ti_sci_inta_vint_desc* %25, %struct.ti_sci_inta_vint_desc** %5, align 8
  %26 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %27 = icmp ne %struct.ti_sci_inta_vint_desc* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.ti_sci_inta_vint_desc* @ERR_PTR(i32 %30)
  store %struct.ti_sci_inta_vint_desc* %31, %struct.ti_sci_inta_vint_desc** %2, align 8
  br label %90

32:                                               ; preds = %23
  %33 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %34 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %35 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %34, i32 0, i32 3
  store %struct.irq_domain* %33, %struct.irq_domain** %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %38 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %40 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %39, i32 0, i32 1
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %4, align 8
  %43 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @dev_of_node(i32* %45)
  %47 = call i32 @of_irq_find_parent(i32 %46)
  %48 = call i32 @of_node_to_fwnode(i32 %47)
  %49 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %6, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %6, i32 0, i32 0
  store i32 2, i32* %50, align 8
  %51 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %4, align 8
  %52 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %6, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %60 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %6, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  store i64 %61, i64* %64, align 8
  %65 = call i32 @irq_create_fwspec_mapping(%struct.irq_fwspec* %6)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %32
  %69 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %70 = call i32 @kfree(%struct.ti_sci_inta_vint_desc* %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.ti_sci_inta_vint_desc* @ERR_PTR(i32 %72)
  store %struct.ti_sci_inta_vint_desc* %73, %struct.ti_sci_inta_vint_desc** %2, align 8
  br label %90

74:                                               ; preds = %32
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %77 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %79 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %78, i32 0, i32 1
  %80 = load %struct.ti_sci_inta_irq_domain*, %struct.ti_sci_inta_irq_domain** %4, align 8
  %81 = getelementptr inbounds %struct.ti_sci_inta_irq_domain, %struct.ti_sci_inta_irq_domain* %80, i32 0, i32 0
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  %83 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %84 = getelementptr inbounds %struct.ti_sci_inta_vint_desc, %struct.ti_sci_inta_vint_desc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ti_sci_inta_irq_handler, align 4
  %87 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  %88 = call i32 @irq_set_chained_handler_and_data(i32 %85, i32 %86, %struct.ti_sci_inta_vint_desc* %87)
  %89 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %5, align 8
  store %struct.ti_sci_inta_vint_desc* %89, %struct.ti_sci_inta_vint_desc** %2, align 8
  br label %90

90:                                               ; preds = %74, %68, %28, %19
  %91 = load %struct.ti_sci_inta_vint_desc*, %struct.ti_sci_inta_vint_desc** %2, align 8
  ret %struct.ti_sci_inta_vint_desc* %91
}

declare dso_local i64 @ti_sci_get_free_resource(i32) #1

declare dso_local %struct.ti_sci_inta_vint_desc* @ERR_PTR(i32) #1

declare dso_local %struct.ti_sci_inta_vint_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @of_node_to_fwnode(i32) #1

declare dso_local i32 @of_irq_find_parent(i32) #1

declare dso_local i32 @dev_of_node(i32*) #1

declare dso_local i32 @irq_create_fwspec_mapping(%struct.irq_fwspec*) #1

declare dso_local i32 @kfree(%struct.ti_sci_inta_vint_desc*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.ti_sci_inta_vint_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
