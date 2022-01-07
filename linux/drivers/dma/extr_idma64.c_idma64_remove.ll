; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64_chip = type { i32, i32, %struct.idma64* }
%struct.idma64 = type { %struct.idma64_chan*, %struct.TYPE_4__ }
%struct.idma64_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idma64_chip*)* @idma64_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma64_remove(%struct.idma64_chip* %0) #0 {
  %2 = alloca %struct.idma64_chip*, align 8
  %3 = alloca %struct.idma64*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.idma64_chan*, align 8
  store %struct.idma64_chip* %0, %struct.idma64_chip** %2, align 8
  %6 = load %struct.idma64_chip*, %struct.idma64_chip** %2, align 8
  %7 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %6, i32 0, i32 2
  %8 = load %struct.idma64*, %struct.idma64** %7, align 8
  store %struct.idma64* %8, %struct.idma64** %3, align 8
  %9 = load %struct.idma64*, %struct.idma64** %3, align 8
  %10 = getelementptr inbounds %struct.idma64, %struct.idma64* %9, i32 0, i32 1
  %11 = call i32 @dma_async_device_unregister(%struct.TYPE_4__* %10)
  %12 = load %struct.idma64_chip*, %struct.idma64_chip** %2, align 8
  %13 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.idma64_chip*, %struct.idma64_chip** %2, align 8
  %16 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.idma64*, %struct.idma64** %3, align 8
  %19 = call i32 @devm_free_irq(i32 %14, i32 %17, %struct.idma64* %18)
  store i16 0, i16* %4, align 2
  br label %20

20:                                               ; preds = %40, %1
  %21 = load i16, i16* %4, align 2
  %22 = zext i16 %21 to i32
  %23 = load %struct.idma64*, %struct.idma64** %3, align 8
  %24 = getelementptr inbounds %struct.idma64, %struct.idma64* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  %27 = zext i16 %26 to i32
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %20
  %30 = load %struct.idma64*, %struct.idma64** %3, align 8
  %31 = getelementptr inbounds %struct.idma64, %struct.idma64* %30, i32 0, i32 0
  %32 = load %struct.idma64_chan*, %struct.idma64_chan** %31, align 8
  %33 = load i16, i16* %4, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %32, i64 %34
  store %struct.idma64_chan* %35, %struct.idma64_chan** %5, align 8
  %36 = load %struct.idma64_chan*, %struct.idma64_chan** %5, align 8
  %37 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @tasklet_kill(i32* %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i16, i16* %4, align 2
  %42 = add i16 %41, 1
  store i16 %42, i16* %4, align 2
  br label %20

43:                                               ; preds = %20
  ret i32 0
}

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.idma64*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
