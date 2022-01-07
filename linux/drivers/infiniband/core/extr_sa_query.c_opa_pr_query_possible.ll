; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_opa_pr_query_possible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_opa_pr_query_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_client = type { i32 }
%struct.ib_device = type { i32 }
%struct.sa_path_rec = type { i32 }
%struct.ib_port_attr = type { i64 }

@PR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PR_OPA_SUPPORTED = common dso_local global i32 0, align 4
@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@PR_IB_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_client*, %struct.ib_device*, i32, %struct.sa_path_rec*)* @opa_pr_query_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa_pr_query_possible(%struct.ib_sa_client* %0, %struct.ib_device* %1, i32 %2, %struct.sa_path_rec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_sa_client*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sa_path_rec*, align 8
  %10 = alloca %struct.ib_port_attr, align 8
  store %struct.ib_sa_client* %0, %struct.ib_sa_client** %6, align 8
  store %struct.ib_device* %1, %struct.ib_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sa_path_rec* %3, %struct.sa_path_rec** %9, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @ib_query_port(%struct.ib_device* %11, i32 %12, %struct.ib_port_attr* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @PR_NOT_SUPPORTED, align 4
  store i32 %16, i32* %5, align 4
  br label %35

17:                                               ; preds = %4
  %18 = load %struct.ib_sa_client*, %struct.ib_sa_client** %6, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @ib_sa_opa_pathrecord_support(%struct.ib_sa_client* %18, %struct.ib_device* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @PR_OPA_SUPPORTED, align 4
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %29 = call i64 @be16_to_cpu(i32 %28)
  %30 = icmp sge i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @PR_NOT_SUPPORTED, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @PR_IB_SUPPORTED, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %31, %23, %15
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i64 @ib_sa_opa_pathrecord_support(%struct.ib_sa_client*, %struct.ib_device*, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
