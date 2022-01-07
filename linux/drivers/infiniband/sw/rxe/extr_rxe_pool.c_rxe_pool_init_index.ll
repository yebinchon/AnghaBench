; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_pool_init_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_pool.c_rxe_pool_init_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pool = type { i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"not enough indices for max_elem\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_pool*, i64, i64)* @rxe_pool_init_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_pool_init_index(%struct.rxe_pool* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rxe_pool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.rxe_pool* %0, %struct.rxe_pool** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = sub nsw i64 %9, %10
  %12 = add nsw i64 %11, 1
  %13 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %14 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %24 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %27 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 %28, %29
  %31 = add nsw i64 %30, 1
  %32 = call i32 @BITS_TO_LONGS(i64 %31)
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @kmalloc(i64 %35, i32 %36)
  %38 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %39 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %41 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %21
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %59

47:                                               ; preds = %21
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %50 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.rxe_pool*, %struct.rxe_pool** %4, align 8
  %52 = getelementptr inbounds %struct.rxe_pool, %struct.rxe_pool* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub nsw i64 %54, %55
  %57 = add nsw i64 %56, 1
  %58 = call i32 @bitmap_zero(i32 %53, i64 %57)
  br label %59

59:                                               ; preds = %47, %44, %17
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @bitmap_zero(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
