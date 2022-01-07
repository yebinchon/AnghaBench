; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_alloc_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_alloc_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pool = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rxe_pool*)* @alloc_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alloc_index(%struct.rxe_pool* %0) #0 {
  %2 = alloca %struct.rxe_pool*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.rxe_pool* %0, %struct.rxe_pool** %2, align 8
  %5 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %6 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %9 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %4, align 8
  %13 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %14 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %18 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @find_next_zero_bit(i32 %15, i64 %16, i64 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %26 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @find_first_zero_bit(i32 %27, i64 %28)
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp sge i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON_ONCE(i32 %34)
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %38 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @set_bit(i64 %36, i32 %39)
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %43 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.rxe_pool*, %struct.rxe_pool** %2, align 8
  %46 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  ret i64 %48
}

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
