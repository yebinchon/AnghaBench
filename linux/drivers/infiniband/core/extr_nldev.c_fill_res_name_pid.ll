; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_res_name_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_res_name_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rdma_restrack_entry = type { i32, i32 }

@RDMA_NLDEV_ATTR_RES_KERN_NAME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_RES_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.rdma_restrack_entry*)* @fill_res_name_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_res_name_pid(%struct.sk_buff* %0, %struct.rdma_restrack_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rdma_restrack_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.rdma_restrack_entry* %1, %struct.rdma_restrack_entry** %5, align 8
  %6 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %5, align 8
  %7 = call i64 @rdma_is_kernel_res(%struct.rdma_restrack_entry* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @RDMA_NLDEV_ATTR_RES_KERN_NAME, align 4
  %12 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %5, align 8
  %13 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nla_put_string(%struct.sk_buff* %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @EMSGSIZE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %9
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @RDMA_NLDEV_ATTR_RES_PID, align 4
  %24 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %5, align 8
  %25 = getelementptr inbounds %struct.rdma_restrack_entry, %struct.rdma_restrack_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @task_pid_vnr(i32 %26)
  %28 = call i64 @nla_put_u32(%struct.sk_buff* %22, i32 %23, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %20
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %30, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @rdma_is_kernel_res(%struct.rdma_restrack_entry*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @task_pid_vnr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
