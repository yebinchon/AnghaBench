; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_rack-meter.c_rackmeter_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_rack-meter.c_rackmeter_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rackmeter = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macio_dev*)* @rackmeter_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rackmeter_remove(%struct.macio_dev* %0) #0 {
  %2 = alloca %struct.macio_dev*, align 8
  %3 = alloca %struct.rackmeter*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %2, align 8
  %4 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call %struct.rackmeter* @dev_get_drvdata(i32* %6)
  store %struct.rackmeter* %7, %struct.rackmeter** %3, align 8
  %8 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %9 = call i32 @rackmeter_stop_cpu_sniffer(%struct.rackmeter* %8)
  %10 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %11 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @dev_set_drvdata(i32* %12, i32* null)
  %14 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %15 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DBDMA_DO_RESET(i32 %16)
  %18 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %19 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.rackmeter* %21)
  %23 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %24 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iounmap(i32 %25)
  %27 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %28 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iounmap(i32 %29)
  %31 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %32 = call %struct.TYPE_4__* @macio_get_pci_dev(%struct.macio_dev* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %35 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %38 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_free_coherent(i32* %33, i32 4, i32 %36, i32 %39)
  %41 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %42 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @free_page(i64 %43)
  %45 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %46 = call i32 @kfree(%struct.rackmeter* %45)
  ret i32 0
}

declare dso_local %struct.rackmeter* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rackmeter_stop_cpu_sniffer(%struct.rackmeter*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @DBDMA_DO_RESET(i32) #1

declare dso_local i32 @free_irq(i32, %struct.rackmeter*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @macio_get_pci_dev(%struct.macio_dev*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.rackmeter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
