; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_fmr_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_fmr_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr_pool = type { i32 }
%struct.srp_target_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.srp_device* }
%struct.srp_device = type { i32, i32, i32 }
%struct.ib_fmr_pool_param = type { i32, i32, i32, i32, i32, i32 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_fmr_pool* (%struct.srp_target_port*)* @srp_alloc_fmr_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_fmr_pool* @srp_alloc_fmr_pool(%struct.srp_target_port* %0) #0 {
  %2 = alloca %struct.srp_target_port*, align 8
  %3 = alloca %struct.srp_device*, align 8
  %4 = alloca %struct.ib_fmr_pool_param, align 4
  store %struct.srp_target_port* %0, %struct.srp_target_port** %2, align 8
  %5 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %6 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.srp_device*, %struct.srp_device** %8, align 8
  store %struct.srp_device* %9, %struct.srp_device** %3, align 8
  %10 = call i32 @memset(%struct.ib_fmr_pool_param* %4, i32 0, i32 24)
  %11 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %12 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %4, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 4
  %18 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %4, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %4, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %21 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %4, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %25 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ilog2(i32 %26)
  %28 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %4, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %30 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.ib_fmr_pool_param, %struct.ib_fmr_pool_param* %4, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.srp_device*, %struct.srp_device** %3, align 8
  %36 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ib_fmr_pool* @ib_create_fmr_pool(i32 %37, %struct.ib_fmr_pool_param* %4)
  ret %struct.ib_fmr_pool* %38
}

declare dso_local i32 @memset(%struct.ib_fmr_pool_param*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local %struct.ib_fmr_pool* @ib_create_fmr_pool(i32, %struct.ib_fmr_pool_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
