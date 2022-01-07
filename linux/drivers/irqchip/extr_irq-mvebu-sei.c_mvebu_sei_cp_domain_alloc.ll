; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_cp_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_cp_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_4__*, %struct.mvebu_sei* }
%struct.TYPE_4__ = type { i32 }
%struct.mvebu_sei = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.irq_fwspec = type { i32, i64*, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@mvebu_sei_cp_irq_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @mvebu_sei_cp_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_sei_cp_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mvebu_sei*, align 8
  %11 = alloca %struct.irq_fwspec, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %15 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %14, i32 0, i32 1
  %16 = load %struct.mvebu_sei*, %struct.mvebu_sei** %15, align 8
  store %struct.mvebu_sei* %16, %struct.mvebu_sei** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %102

22:                                               ; preds = %4
  %23 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %24 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %27 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %30 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @find_first_zero_bit(i32 %28, i64 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %38 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %36, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %22
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %47 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @set_bit(i64 %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %22
  %51 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %52 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %56 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %54, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @ENOSPC, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %102

65:                                               ; preds = %50
  %66 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %67 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %75 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %73, %79
  %81 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %84, i32 %85, i32 1, %struct.irq_fwspec* %11)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %65
  br label %97

90:                                               ; preds = %65
  %91 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %95 = load i32, i32* @handle_edge_irq, align 4
  %96 = call i32 @irq_domain_set_info(%struct.irq_domain* %91, i32 %92, i64 %93, i32* @mvebu_sei_cp_irq_chip, %struct.mvebu_sei* %94, i32 %95, i32* null, i32* null)
  store i32 0, i32* %5, align 4
  br label %102

97:                                               ; preds = %89
  %98 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @mvebu_sei_cp_release_irq(%struct.mvebu_sei* %98, i64 %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %97, %90, %62, %19
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i64, i32*, %struct.mvebu_sei*, i32, i32*, i32*) #1

declare dso_local i32 @mvebu_sei_cp_release_irq(%struct.mvebu_sei*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
