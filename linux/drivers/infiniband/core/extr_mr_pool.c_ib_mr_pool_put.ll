; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mr_pool.c_ib_mr_pool_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mr_pool.c_ib_mr_pool_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.ib_mr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_mr_pool_put(%struct.ib_qp* %0, %struct.list_head* %1, %struct.ib_mr* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.ib_mr*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.ib_mr* %2, %struct.ib_mr** %6, align 8
  %8 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %9 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  %13 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %12, i32 0, i32 0
  %14 = load %struct.list_head*, %struct.list_head** %5, align 8
  %15 = call i32 @list_add(i32* %13, %struct.list_head* %14)
  %16 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %21 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
