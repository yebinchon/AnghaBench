; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_drop_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_drop_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pool_entry = type { i32, i64, %struct.rxe_pool* }
%struct.rxe_pool = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_drop_index(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rxe_pool_entry*, align 8
  %4 = alloca %struct.rxe_pool*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rxe_pool_entry*
  store %struct.rxe_pool_entry* %7, %struct.rxe_pool_entry** %3, align 8
  %8 = load %struct.rxe_pool_entry*, %struct.rxe_pool_entry** %3, align 8
  %9 = getelementptr inbounds %struct.rxe_pool_entry, %struct.rxe_pool_entry* %8, i32 0, i32 2
  %10 = load %struct.rxe_pool*, %struct.rxe_pool** %9, align 8
  store %struct.rxe_pool* %10, %struct.rxe_pool** %4, align 8
  %11 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %12 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @write_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.rxe_pool_entry*, %struct.rxe_pool_entry** %3, align 8
  %16 = getelementptr inbounds %struct.rxe_pool_entry, %struct.rxe_pool_entry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %19 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %23 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clear_bit(i64 %21, i32 %24)
  %26 = load %struct.rxe_pool_entry*, %struct.rxe_pool_entry** %3, align 8
  %27 = getelementptr inbounds %struct.rxe_pool_entry, %struct.rxe_pool_entry* %26, i32 0, i32 0
  %28 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %29 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %28, i32 0, i32 1
  %30 = call i32 @rb_erase(i32* %27, i32* %29)
  %31 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %32 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @write_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
