; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_map_mr_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_map_mr_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.rxe_mem = type { i32, i32, i32, i32, i32, i32, i64 }

@rxe_set_page = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*)* @rxe_map_mr_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_map_mr_sg(%struct.ib_mr* %0, %struct.scatterlist* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rxe_mem*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %12 = call %struct.rxe_mem* @to_rmr(%struct.ib_mr* %11)
  store %struct.rxe_mem* %12, %struct.rxe_mem** %9, align 8
  %13 = load %struct.rxe_mem*, %struct.rxe_mem** %9, align 8
  %14 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %13, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @rxe_set_page, align 4
  %20 = call i32 @ib_sg_to_pages(%struct.ib_mr* %15, %struct.scatterlist* %16, i32 %17, i32* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %22 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rxe_mem*, %struct.rxe_mem** %9, align 8
  %25 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %27 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rxe_mem*, %struct.rxe_mem** %9, align 8
  %30 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %32 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rxe_mem*, %struct.rxe_mem** %9, align 8
  %35 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %37 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ilog2(i32 %38)
  %40 = load %struct.rxe_mem*, %struct.rxe_mem** %9, align 8
  %41 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.rxe_mem*, %struct.rxe_mem** %9, align 8
  %47 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rxe_mem*, %struct.rxe_mem** %9, align 8
  %49 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rxe_mem*, %struct.rxe_mem** %9, align 8
  %52 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %50, %53
  %55 = load %struct.rxe_mem*, %struct.rxe_mem** %9, align 8
  %56 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local %struct.rxe_mem* @to_rmr(%struct.ib_mr*) #1

declare dso_local i32 @ib_sg_to_pages(%struct.ib_mr*, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
