; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_create_ah_from_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_create_ah_from_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.rdma_ah_attr = type { i32 }

@RDMA_CREATE_AH_SLEEPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ah* @ib_create_ah_from_wc(%struct.ib_pd* %0, %struct.ib_wc* %1, %struct.ib_grh* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_ah*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.ib_grh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdma_ah_attr, align 4
  %11 = alloca %struct.ib_ah*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %7, align 8
  store %struct.ib_grh* %2, %struct.ib_grh** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %18 = load %struct.ib_grh*, %struct.ib_grh** %8, align 8
  %19 = call i32 @ib_init_ah_attr_from_wc(i32 %15, i32 %16, %struct.ib_wc* %17, %struct.ib_grh* %18, %struct.rdma_ah_attr* %10)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.ib_ah* @ERR_PTR(i32 %23)
  store %struct.ib_ah* %24, %struct.ib_ah** %5, align 8
  br label %31

25:                                               ; preds = %4
  %26 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %27 = load i32, i32* @RDMA_CREATE_AH_SLEEPABLE, align 4
  %28 = call %struct.ib_ah* @rdma_create_ah(%struct.ib_pd* %26, %struct.rdma_ah_attr* %10, i32 %27)
  store %struct.ib_ah* %28, %struct.ib_ah** %11, align 8
  %29 = call i32 @rdma_destroy_ah_attr(%struct.rdma_ah_attr* %10)
  %30 = load %struct.ib_ah*, %struct.ib_ah** %11, align 8
  store %struct.ib_ah* %30, %struct.ib_ah** %5, align 8
  br label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  ret %struct.ib_ah* %32
}

declare dso_local i32 @ib_init_ah_attr_from_wc(i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.rdma_ah_attr*) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local %struct.ib_ah* @rdma_create_ah(%struct.ib_pd*, %struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_destroy_ah_attr(%struct.rdma_ah_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
