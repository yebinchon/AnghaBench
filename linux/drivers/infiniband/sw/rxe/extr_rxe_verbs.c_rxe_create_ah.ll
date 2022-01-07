; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_create_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_ah = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ah*, %struct.rdma_ah_attr*, i32, %struct.ib_udata*)* @rxe_create_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_create_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_ah*, align 8
  %7 = alloca %struct.rdma_ah_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxe_dev*, align 8
  %12 = alloca %struct.rxe_ah*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %6, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %13 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %14 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rxe_dev* @to_rdev(i32 %15)
  store %struct.rxe_dev* %16, %struct.rxe_dev** %11, align 8
  %17 = load %struct.ib_ah*, %struct.ib_ah** %6, align 8
  %18 = call %struct.rxe_ah* @to_rah(%struct.ib_ah* %17)
  store %struct.rxe_ah* %18, %struct.rxe_ah** %12, align 8
  %19 = load %struct.rxe_dev*, %struct.rxe_dev** %11, align 8
  %20 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %21 = call i32 @rxe_av_chk_attr(%struct.rxe_dev* %19, %struct.rdma_ah_attr* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %41

26:                                               ; preds = %4
  %27 = load %struct.rxe_dev*, %struct.rxe_dev** %11, align 8
  %28 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %27, i32 0, i32 0
  %29 = load %struct.rxe_ah*, %struct.rxe_ah** %12, align 8
  %30 = getelementptr inbounds %struct.rxe_ah, %struct.rxe_ah* %29, i32 0, i32 1
  %31 = call i32 @rxe_add_to_pool(i32* %28, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %7, align 8
  %38 = load %struct.rxe_ah*, %struct.rxe_ah** %12, align 8
  %39 = getelementptr inbounds %struct.rxe_ah, %struct.rxe_ah* %38, i32 0, i32 0
  %40 = call i32 @rxe_init_av(%struct.rdma_ah_attr* %37, i32* %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %34, %24
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_ah* @to_rah(%struct.ib_ah*) #1

declare dso_local i32 @rxe_av_chk_attr(%struct.rxe_dev*, %struct.rdma_ah_attr*) #1

declare dso_local i32 @rxe_add_to_pool(i32*, i32*) #1

declare dso_local i32 @rxe_init_av(%struct.rdma_ah_attr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
