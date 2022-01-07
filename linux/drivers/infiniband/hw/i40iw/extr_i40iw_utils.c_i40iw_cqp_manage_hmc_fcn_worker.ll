; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_manage_hmc_fcn_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_cqp_manage_hmc_fcn_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.i40iw_cqp_request = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__*, %struct.i40iw_hmc_fcn_info }
%struct.TYPE_12__ = type { i64 }
%struct.i40iw_hmc_fcn_info = type { i32, i32 (%struct.TYPE_12__*, i32, %struct.i40iw_ccq_cqe_info*)* }
%struct.i40iw_ccq_cqe_info = type opaque
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.i40iw_ccq_cqe_info.0 = type { i32, i64, i32, i32, i32, i32, i32* }
%struct.i40iw_device = type { i32 }
%struct.virtchnl_work = type { %struct.i40iw_cqp_request* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @i40iw_cqp_manage_hmc_fcn_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_cqp_manage_hmc_fcn_worker(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.i40iw_cqp_request*, align 8
  %4 = alloca %struct.i40iw_ccq_cqe_info.0, align 8
  %5 = alloca %struct.i40iw_hmc_fcn_info*, align 8
  %6 = alloca %struct.i40iw_device*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %8 = bitcast %struct.work_struct* %7 to %struct.virtchnl_work*
  %9 = getelementptr inbounds %struct.virtchnl_work, %struct.virtchnl_work* %8, i32 0, i32 0
  %10 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %9, align 8
  store %struct.i40iw_cqp_request* %10, %struct.i40iw_cqp_request** %3, align 8
  %11 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store %struct.i40iw_hmc_fcn_info* %16, %struct.i40iw_hmc_fcn_info** %5, align 8
  %17 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %3, align 8
  %18 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.i40iw_device*
  store %struct.i40iw_device* %26, %struct.i40iw_device** %6, align 8
  %27 = getelementptr inbounds %struct.i40iw_ccq_cqe_info.0, %struct.i40iw_ccq_cqe_info.0* %4, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %3, align 8
  %29 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.i40iw_ccq_cqe_info.0, %struct.i40iw_ccq_cqe_info.0* %4, i32 0, i32 5
  store i32 %31, i32* %32, align 4
  %33 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %3, align 8
  %34 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.i40iw_ccq_cqe_info.0, %struct.i40iw_ccq_cqe_info.0* %4, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %3, align 8
  %39 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.i40iw_ccq_cqe_info.0, %struct.i40iw_ccq_cqe_info.0* %4, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %3, align 8
  %44 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.i40iw_ccq_cqe_info.0, %struct.i40iw_ccq_cqe_info.0* %4, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.i40iw_ccq_cqe_info.0, %struct.i40iw_ccq_cqe_info.0* %4, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %3, align 8
  %50 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.i40iw_ccq_cqe_info.0, %struct.i40iw_ccq_cqe_info.0* %4, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.i40iw_hmc_fcn_info*, %struct.i40iw_hmc_fcn_info** %5, align 8
  %55 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_12__*, i32, %struct.i40iw_ccq_cqe_info*)*, i32 (%struct.TYPE_12__*, i32, %struct.i40iw_ccq_cqe_info*)** %55, align 8
  %57 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %3, align 8
  %58 = getelementptr inbounds %struct.i40iw_cqp_request, %struct.i40iw_cqp_request* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load %struct.i40iw_hmc_fcn_info*, %struct.i40iw_hmc_fcn_info** %5, align 8
  %65 = getelementptr inbounds %struct.i40iw_hmc_fcn_info, %struct.i40iw_hmc_fcn_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = bitcast %struct.i40iw_ccq_cqe_info.0* %4 to %struct.i40iw_ccq_cqe_info*
  %68 = call i32 %56(%struct.TYPE_12__* %63, i32 %66, %struct.i40iw_ccq_cqe_info* %67)
  %69 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %70 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %69, i32 0, i32 0
  %71 = load %struct.i40iw_cqp_request*, %struct.i40iw_cqp_request** %3, align 8
  %72 = call i32 @i40iw_put_cqp_request(i32* %70, %struct.i40iw_cqp_request* %71)
  ret void
}

declare dso_local i32 @i40iw_put_cqp_request(i32*, %struct.i40iw_cqp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
