; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_add_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pool_entry = type { %struct.rxe_pool* }
%struct.rxe_pool = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_add_key(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rxe_pool_entry*, align 8
  %6 = alloca %struct.rxe_pool*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.rxe_pool_entry*
  store %struct.rxe_pool_entry* %9, %struct.rxe_pool_entry** %5, align 8
  %10 = load %struct.rxe_pool_entry*, %struct.rxe_pool_entry** %5, align 8
  %11 = getelementptr inbounds %struct.rxe_pool_entry, %struct.rxe_pool_entry* %10, i32 0, i32 0
  %12 = load %struct.rxe_pool*, %struct.rxe_pool** %11, align 8
  store %struct.rxe_pool* %12, %struct.rxe_pool** %6, align 8
  %13 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %14 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %13, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @write_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.rxe_pool_entry*, %struct.rxe_pool_entry** %5, align 8
  %18 = bitcast %struct.rxe_pool_entry* %17 to i32*
  %19 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %20 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %26 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32* %23, i8* %24, i32 %27)
  %29 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %30 = load %struct.rxe_pool_entry*, %struct.rxe_pool_entry** %5, align 8
  %31 = call i32 @insert_key(%struct.rxe_pool* %29, %struct.rxe_pool_entry* %30)
  %32 = load %struct.rxe_pool*, %struct.rxe_pool** %6, align 8
  %33 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %32, i32 0, i32 1
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @write_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @insert_key(%struct.rxe_pool*, %struct.rxe_pool_entry*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
