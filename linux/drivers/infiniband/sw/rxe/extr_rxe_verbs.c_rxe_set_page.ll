; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_set_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.rxe_mem = type { i64, i64, %struct.rxe_map** }
%struct.rxe_map = type { %struct.rxe_phys_buf* }
%struct.rxe_phys_buf = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@RXE_BUF_PER_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, i32)* @rxe_set_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_set_page(%struct.ib_mr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_mem*, align 8
  %7 = alloca %struct.rxe_map*, align 8
  %8 = alloca %struct.rxe_phys_buf*, align 8
  store %struct.ib_mr* %0, %struct.ib_mr** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %10 = call %struct.rxe_mem* @to_rmr(%struct.ib_mr* %9)
  store %struct.rxe_mem* %10, %struct.rxe_mem** %6, align 8
  %11 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %12 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %15 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %26 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %25, i32 0, i32 2
  %27 = load %struct.rxe_map**, %struct.rxe_map*** %26, align 8
  %28 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %29 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RXE_BUF_PER_MAP, align 8
  %32 = udiv i64 %30, %31
  %33 = getelementptr inbounds %struct.rxe_map*, %struct.rxe_map** %27, i64 %32
  %34 = load %struct.rxe_map*, %struct.rxe_map** %33, align 8
  store %struct.rxe_map* %34, %struct.rxe_map** %7, align 8
  %35 = load %struct.rxe_map*, %struct.rxe_map** %7, align 8
  %36 = getelementptr inbounds %struct.rxe_map, %struct.rxe_map* %35, i32 0, i32 0
  %37 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %36, align 8
  %38 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %39 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RXE_BUF_PER_MAP, align 8
  %42 = urem i64 %40, %41
  %43 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %37, i64 %42
  store %struct.rxe_phys_buf* %43, %struct.rxe_phys_buf** %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %8, align 8
  %46 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %48 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rxe_phys_buf*, %struct.rxe_phys_buf** %8, align 8
  %51 = getelementptr inbounds %struct.rxe_phys_buf, %struct.rxe_phys_buf* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rxe_mem*, %struct.rxe_mem** %6, align 8
  %53 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %24, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.rxe_mem* @to_rmr(%struct.ib_mr*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
