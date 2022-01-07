; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_prepare_irte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_prepare_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.irte = type { i32, i32, i32, i32, i32, i64, i32 }

@apic = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irte*, i32, i32)* @prepare_irte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_irte(%struct.irte* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irte*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irte* %0, %struct.irte** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.irte*, %struct.irte** %4, align 8
  %8 = call i32 @memset(%struct.irte* %7, i32 0, i32 40)
  %9 = load %struct.irte*, %struct.irte** %4, align 8
  %10 = getelementptr inbounds %struct.irte, %struct.irte* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.irte*, %struct.irte** %4, align 8
  %15 = getelementptr inbounds %struct.irte, %struct.irte* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.irte*, %struct.irte** %4, align 8
  %17 = getelementptr inbounds %struct.irte, %struct.irte* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.irte*, %struct.irte** %4, align 8
  %22 = getelementptr inbounds %struct.irte, %struct.irte* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.irte*, %struct.irte** %4, align 8
  %25 = getelementptr inbounds %struct.irte, %struct.irte* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @IRTE_DEST(i32 %26)
  %28 = load %struct.irte*, %struct.irte** %4, align 8
  %29 = getelementptr inbounds %struct.irte, %struct.irte* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.irte*, %struct.irte** %4, align 8
  %31 = getelementptr inbounds %struct.irte, %struct.irte* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  ret void
}

declare dso_local i32 @memset(%struct.irte*, i32, i32) #1

declare dso_local i32 @IRTE_DEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
