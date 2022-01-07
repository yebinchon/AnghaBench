; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_mem_init_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_rxe_mem_init_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_pd = type { i32 }
%struct.rxe_mem = type { i32, i32, i32, %struct.rxe_pd*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RXE_MEM_STATE_FREE = common dso_local global i32 0, align 4
@RXE_MEM_TYPE_MR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_mem_init_fast(%struct.rxe_pd* %0, i32 %1, %struct.rxe_mem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxe_mem*, align 8
  %8 = alloca i32, align 4
  store %struct.rxe_pd* %0, %struct.rxe_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rxe_mem* %2, %struct.rxe_mem** %7, align 8
  %9 = load %struct.rxe_mem*, %struct.rxe_mem** %7, align 8
  %10 = call i32 @rxe_mem_init(i32 0, %struct.rxe_mem* %9)
  %11 = load %struct.rxe_mem*, %struct.rxe_mem** %7, align 8
  %12 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rxe_mem*, %struct.rxe_mem** %7, align 8
  %16 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.rxe_mem*, %struct.rxe_mem** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rxe_mem_alloc(%struct.rxe_mem* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %37

24:                                               ; preds = %3
  %25 = load %struct.rxe_pd*, %struct.rxe_pd** %5, align 8
  %26 = load %struct.rxe_mem*, %struct.rxe_mem** %7, align 8
  %27 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %26, i32 0, i32 3
  store %struct.rxe_pd* %25, %struct.rxe_pd** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.rxe_mem*, %struct.rxe_mem** %7, align 8
  %30 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @RXE_MEM_STATE_FREE, align 4
  %32 = load %struct.rxe_mem*, %struct.rxe_mem** %7, align 8
  %33 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @RXE_MEM_TYPE_MR, align 4
  %35 = load %struct.rxe_mem*, %struct.rxe_mem** %7, align 8
  %36 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @rxe_mem_init(i32, %struct.rxe_mem*) #1

declare dso_local i32 @rxe_mem_alloc(%struct.rxe_mem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
