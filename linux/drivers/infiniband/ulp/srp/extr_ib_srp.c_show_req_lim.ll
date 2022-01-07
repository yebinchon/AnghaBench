; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_show_req_lim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_show_req_lim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.srp_target_port = type { i32, %struct.srp_rdma_ch* }
%struct.srp_rdma_ch = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_req_lim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_req_lim(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.srp_target_port*, align 8
  %8 = alloca %struct.srp_rdma_ch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @class_to_shost(%struct.device* %11)
  %13 = call %struct.srp_target_port* @host_to_target(i32 %12)
  store %struct.srp_target_port* %13, %struct.srp_target_port** %7, align 8
  %14 = load i32, i32* @INT_MAX, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %33, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %18 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %23 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %22, i32 0, i32 1
  %24 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %24, i64 %26
  store %struct.srp_rdma_ch* %27, %struct.srp_rdma_ch** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %8, align 8
  %30 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @min(i32 %28, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  ret i32 %39
}

declare dso_local %struct.srp_target_port* @host_to_target(i32) #1

declare dso_local i32 @class_to_shost(%struct.device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
