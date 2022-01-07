; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_msix.c_msix_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_msix.c_msix_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, %struct.sdma_engine* }
%struct.sdma_engine = type { i32 }
%struct.hfi1_ctxtdata = type { i32 }

@general_interrupt = common dso_local global i32 0, align 4
@IRQ_GENERAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msix_request_irqs(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdma_engine*, align 8
  %7 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = load i32, i32* @general_interrupt, align 4
  %11 = load i32, i32* @IRQ_GENERAL, align 4
  %12 = call i32 @msix_request_irq(%struct.hfi1_devdata* %8, %struct.hfi1_devdata* %9, i32 %10, i32* null, i32 0, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %26 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %25, i32 0, i32 2
  %27 = load %struct.sdma_engine*, %struct.sdma_engine** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %27, i64 %29
  store %struct.sdma_engine* %30, %struct.sdma_engine** %6, align 8
  %31 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %32 = call i32 @msix_request_sdma_irq(%struct.sdma_engine* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %74

37:                                               ; preds = %24
  %38 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %39 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @enable_sdma_srcs(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %18

46:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %50 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index_safe(%struct.hfi1_devdata* %54, i32 %55)
  store %struct.hfi1_ctxtdata* %56, %struct.hfi1_ctxtdata** %7, align 8
  %57 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %58 = icmp ne %struct.hfi1_ctxtdata* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %61 = call i32 @msix_request_rcd_irq(%struct.hfi1_ctxtdata* %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %53
  %63 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %64 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %63)
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %74

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %47

73:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %67, %35, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @msix_request_irq(%struct.hfi1_devdata*, %struct.hfi1_devdata*, i32, i32*, i32, i32) #1

declare dso_local i32 @msix_request_sdma_irq(%struct.sdma_engine*) #1

declare dso_local i32 @enable_sdma_srcs(i32, i32) #1

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index_safe(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @msix_request_rcd_irq(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
