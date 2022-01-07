; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_irq_map = type { i32, %struct.ipu_irq_bank* }
%struct.ipu_irq_bank = type { i32, i32 }

@bank_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_irq_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_irq_map*, align 8
  %4 = alloca %struct.ipu_irq_bank*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ipu_irq_map* @irq_get_chip_data(i32 %7)
  store %struct.ipu_irq_map* %8, %struct.ipu_irq_map** %3, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* @bank_lock, i64 %9)
  %11 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %3, align 8
  %12 = getelementptr inbounds %struct.ipu_irq_map, %struct.ipu_irq_map* %11, i32 0, i32 1
  %13 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %12, align 8
  store %struct.ipu_irq_bank* %13, %struct.ipu_irq_bank** %4, align 8
  %14 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %4, align 8
  %15 = icmp ne %struct.ipu_irq_bank* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %4, align 8
  %18 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %4, align 8
  %21 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ipu_read_reg(i32 %19, i32 %22)
  %24 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %3, align 8
  %25 = getelementptr inbounds %struct.ipu_irq_map, %struct.ipu_irq_map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 31
  %28 = zext i32 %27 to i64
  %29 = shl i64 1, %28
  %30 = and i64 %23, %29
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %16, %1
  %33 = phi i1 [ false, %1 ], [ %31, %16 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @raw_spin_unlock_irqrestore(i32* @bank_lock, i64 %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.ipu_irq_map* @irq_get_chip_data(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ipu_read_reg(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
