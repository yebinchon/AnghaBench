; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_allocator.c_mthca_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_allocator.c_mthca_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_alloc = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_free(%struct.mthca_alloc* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_alloc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mthca_alloc* %0, %struct.mthca_alloc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %7 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %12, i32 0, i32 3
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %18 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clear_bit(i32 %16, i32 %19)
  %21 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %22 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @min(i32 %23, i32 %24)
  %26 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %27 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %29 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %32 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %36 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %40 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mthca_alloc*, %struct.mthca_alloc** %3, align 8
  %42 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %41, i32 0, i32 3
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
