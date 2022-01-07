; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_create_idx_que.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_create_idx_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.hns_roce_srq = type { %struct.hns_roce_idx_que, i32 }
%struct.hns_roce_idx_que = type { i32, i32, i32 }
%struct.hns_roce_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.hns_roce_srq*, i32)* @hns_roce_create_idx_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_create_idx_que(%struct.ib_pd* %0, %struct.hns_roce_srq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.hns_roce_srq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_idx_que*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.hns_roce_srq* %1, %struct.hns_roce_srq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %11 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hns_roce_dev* @to_hr_dev(i32 %12)
  store %struct.hns_roce_dev* %13, %struct.hns_roce_dev** %8, align 8
  %14 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %15 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %14, i32 0, i32 0
  store %struct.hns_roce_idx_que* %15, %struct.hns_roce_idx_que** %9, align 8
  %16 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %17 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @bitmap_zalloc(i32 %18, i32 %19)
  %21 = load %struct.hns_roce_idx_que*, %struct.hns_roce_idx_que** %9, align 8
  %22 = getelementptr inbounds %struct.hns_roce_idx_que, %struct.hns_roce_idx_que* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hns_roce_idx_que*, %struct.hns_roce_idx_que** %9, align 8
  %24 = getelementptr inbounds %struct.hns_roce_idx_que, %struct.hns_roce_idx_que* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %57

30:                                               ; preds = %3
  %31 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %32 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.hns_roce_idx_que, %struct.hns_roce_idx_que* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hns_roce_idx_que*, %struct.hns_roce_idx_que** %9, align 8
  %36 = getelementptr inbounds %struct.hns_roce_idx_que, %struct.hns_roce_idx_que* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %38 = load %struct.hns_roce_idx_que*, %struct.hns_roce_idx_que** %9, align 8
  %39 = getelementptr inbounds %struct.hns_roce_idx_que, %struct.hns_roce_idx_que* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 1, %41
  %43 = mul nsw i32 %42, 2
  %44 = load %struct.hns_roce_idx_que*, %struct.hns_roce_idx_que** %9, align 8
  %45 = getelementptr inbounds %struct.hns_roce_idx_que, %struct.hns_roce_idx_que* %44, i32 0, i32 1
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @hns_roce_buf_alloc(%struct.hns_roce_dev* %37, i32 %40, i32 %43, i32* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %30
  %50 = load %struct.hns_roce_idx_que*, %struct.hns_roce_idx_que** %9, align 8
  %51 = getelementptr inbounds %struct.hns_roce_idx_que, %struct.hns_roce_idx_que* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bitmap_free(i32 %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %49, %27
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local i32 @bitmap_zalloc(i32, i32) #1

declare dso_local i64 @hns_roce_buf_alloc(%struct.hns_roce_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @bitmap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
