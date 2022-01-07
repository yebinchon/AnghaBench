; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_desc_put_fr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_desc_put_fr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_conn = type { %struct.iser_fr_pool }
%struct.iser_fr_pool = type { i32, i32 }
%struct.iser_fr_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_reg_desc_put_fr(%struct.ib_conn* %0, %struct.iser_fr_desc* %1) #0 {
  %3 = alloca %struct.ib_conn*, align 8
  %4 = alloca %struct.iser_fr_desc*, align 8
  %5 = alloca %struct.iser_fr_pool*, align 8
  %6 = alloca i64, align 8
  store %struct.ib_conn* %0, %struct.ib_conn** %3, align 8
  store %struct.iser_fr_desc* %1, %struct.iser_fr_desc** %4, align 8
  %7 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %8 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %7, i32 0, i32 0
  store %struct.iser_fr_pool* %8, %struct.iser_fr_pool** %5, align 8
  %9 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %5, align 8
  %10 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %4, align 8
  %14 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %13, i32 0, i32 0
  %15 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %5, align 8
  %16 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %15, i32 0, i32 1
  %17 = call i32 @list_add(i32* %14, i32* %16)
  %18 = load %struct.iser_fr_pool*, %struct.iser_fr_pool** %5, align 8
  %19 = getelementptr inbounds %struct.iser_fr_pool, %struct.iser_fr_pool* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
