; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_pd = type { %struct.ib_mr }
%struct.rxe_mem = type { %struct.ib_mr }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mr* (%struct.ib_pd*, i32)* @rxe_get_dma_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mr* @rxe_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_dev*, align 8
  %7 = alloca %struct.rxe_pd*, align 8
  %8 = alloca %struct.rxe_mem*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %11 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rxe_dev* @to_rdev(i32 %12)
  store %struct.rxe_dev* %13, %struct.rxe_dev** %6, align 8
  %14 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %15 = call %struct.rxe_pd* @to_rpd(%struct.ib_pd* %14)
  store %struct.rxe_pd* %15, %struct.rxe_pd** %7, align 8
  %16 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %17 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %16, i32 0, i32 0
  %18 = call %struct.rxe_pd* @rxe_alloc(i32* %17)
  %19 = bitcast %struct.rxe_pd* %18 to %struct.rxe_mem*
  store %struct.rxe_mem* %19, %struct.rxe_mem** %8, align 8
  %20 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %21 = icmp ne %struct.rxe_mem* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %51

25:                                               ; preds = %2
  %26 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %27 = bitcast %struct.rxe_mem* %26 to %struct.rxe_pd*
  %28 = call i32 @rxe_add_index(%struct.rxe_pd* %27)
  %29 = load %struct.rxe_pd*, %struct.rxe_pd** %7, align 8
  %30 = call i32 @rxe_add_ref(%struct.rxe_pd* %29)
  %31 = load %struct.rxe_pd*, %struct.rxe_pd** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %34 = bitcast %struct.rxe_mem* %33 to %struct.rxe_pd*
  %35 = call i32 @rxe_mem_init_dma(%struct.rxe_pd* %31, i32 %32, %struct.rxe_pd* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %42

39:                                               ; preds = %25
  %40 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %41 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %40, i32 0, i32 0
  store %struct.ib_mr* %41, %struct.ib_mr** %3, align 8
  br label %54

42:                                               ; preds = %38
  %43 = load %struct.rxe_pd*, %struct.rxe_pd** %7, align 8
  %44 = call i32 @rxe_drop_ref(%struct.rxe_pd* %43)
  %45 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %46 = bitcast %struct.rxe_mem* %45 to %struct.rxe_pd*
  %47 = call i32 @rxe_drop_index(%struct.rxe_pd* %46)
  %48 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %49 = bitcast %struct.rxe_mem* %48 to %struct.rxe_pd*
  %50 = call i32 @rxe_drop_ref(%struct.rxe_pd* %49)
  br label %51

51:                                               ; preds = %42, %22
  %52 = load i32, i32* %9, align 4
  %53 = call %struct.ib_mr* @ERR_PTR(i32 %52)
  store %struct.ib_mr* %53, %struct.ib_mr** %3, align 8
  br label %54

54:                                               ; preds = %51, %39
  %55 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %55
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_pd* @to_rpd(%struct.ib_pd*) #1

declare dso_local %struct.rxe_pd* @rxe_alloc(i32*) #1

declare dso_local i32 @rxe_add_index(%struct.rxe_pd*) #1

declare dso_local i32 @rxe_add_ref(%struct.rxe_pd*) #1

declare dso_local i32 @rxe_mem_init_dma(%struct.rxe_pd*, i32, %struct.rxe_pd*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_pd*) #1

declare dso_local i32 @rxe_drop_index(%struct.rxe_pd*) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
