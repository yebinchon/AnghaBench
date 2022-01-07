; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qib_devdata*, i32 }

@kr_intgranted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_7322_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7322_free_irq(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 -1, i64* %8, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %63, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %9
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %26, align 8
  %28 = icmp ne %struct.qib_devdata* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %17
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @pci_irq_vector(i32 %32, i32 %33)
  %35 = call i32 @irq_set_affinity_hint(i32 %34, i32* null)
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %37 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @free_cpumask_var(i32 %45)
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %52 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %59, align 8
  %61 = call i32 @pci_free_irq(i32 %49, i32 %50, %struct.qib_devdata* %60)
  br label %62

62:                                               ; preds = %29, %17
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %9

66:                                               ; preds = %9
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %78 = call i32 @pci_free_irq(i32 %76, i32 0, %struct.qib_devdata* %77)
  br label %84

79:                                               ; preds = %66
  %80 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %81 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %73
  %85 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %86 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pci_free_irq_vectors(i32 %87)
  %89 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %90 = load i32, i32* @kr_intgranted, align 4
  %91 = call i64 @qib_read_kreg64(%struct.qib_devdata* %89, i32 %90)
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %3, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %96 = load i32, i32* @kr_intgranted, align 4
  %97 = load i64, i64* %3, align 8
  %98 = call i32 @qib_write_kreg(%struct.qib_devdata* %95, i32 %96, i64 %97)
  br label %99

99:                                               ; preds = %94, %84
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @pci_free_irq(i32, i32, %struct.qib_devdata*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
