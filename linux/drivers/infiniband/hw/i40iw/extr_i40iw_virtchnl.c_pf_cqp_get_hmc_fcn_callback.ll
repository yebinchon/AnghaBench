; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_pf_cqp_get_hmc_fcn_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_pf_cqp_get_hmc_fcn_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32, i32** }
%struct.i40iw_ccq_cqe_info = type { i64, i32, i32, i64 }
%struct.i40iw_vfdev = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40iw_virt_mem = type { i32, %struct.i40iw_vfdev* }

@I40IW_DEBUG_VIRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"CQP Completion Error on Get HMC Function.  Maj = 0x%04x, Minor = 0x%04x\0A\00", align 1
@I40IW_ERR_CQP_COMPL_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"CQP Completion Operation Return information = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_sc_dev*, i8*, %struct.i40iw_ccq_cqe_info*)* @pf_cqp_get_hmc_fcn_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_cqp_get_hmc_fcn_callback(%struct.i40iw_sc_dev* %0, i8* %1, %struct.i40iw_ccq_cqe_info* %2) #0 {
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i40iw_ccq_cqe_info*, align 8
  %7 = alloca %struct.i40iw_vfdev*, align 8
  %8 = alloca %struct.i40iw_virt_mem, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.i40iw_ccq_cqe_info* %2, %struct.i40iw_ccq_cqe_info** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.i40iw_vfdev*
  store %struct.i40iw_vfdev* %10, %struct.i40iw_vfdev** %7, align 8
  %11 = load %struct.i40iw_ccq_cqe_info*, %struct.i40iw_ccq_cqe_info** %6, align 8
  %12 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %17 = load i32, i32* @I40IW_DEBUG_VIRT, align 4
  %18 = load %struct.i40iw_ccq_cqe_info*, %struct.i40iw_ccq_cqe_info** %6, align 8
  %19 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.i40iw_ccq_cqe_info*, %struct.i40iw_ccq_cqe_info** %6, align 8
  %23 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, ...) @i40iw_debug(%struct.i40iw_sc_dev* %16, i32 %17, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %24)
  %26 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %27 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %7, align 8
  %30 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  store i32* null, i32** %32, align 8
  %33 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %34 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %7, align 8
  %35 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %7, align 8
  %38 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* @I40IW_ERR_CQP_COMPL_ERROR, align 8
  %41 = call i32 @vchnl_pf_send_error_resp(%struct.i40iw_sc_dev* %33, i32 %36, i32* %39, i64 %40)
  %42 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %7, align 8
  %43 = getelementptr inbounds %struct.i40iw_virt_mem, %struct.i40iw_virt_mem* %8, i32 0, i32 1
  store %struct.i40iw_vfdev* %42, %struct.i40iw_vfdev** %43, align 8
  %44 = getelementptr inbounds %struct.i40iw_virt_mem, %struct.i40iw_virt_mem* %8, i32 0, i32 0
  store i32 32, i32* %44, align 8
  %45 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %46 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @i40iw_free_virt_mem(i32 %47, %struct.i40iw_virt_mem* %8)
  br label %76

49:                                               ; preds = %3
  %50 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %51 = load i32, i32* @I40IW_DEBUG_VIRT, align 4
  %52 = load %struct.i40iw_ccq_cqe_info*, %struct.i40iw_ccq_cqe_info** %6, align 8
  %53 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, i64, ...) @i40iw_debug(%struct.i40iw_sc_dev* %50, i32 %51, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load %struct.i40iw_ccq_cqe_info*, %struct.i40iw_ccq_cqe_info** %6, align 8
  %57 = getelementptr inbounds %struct.i40iw_ccq_cqe_info, %struct.i40iw_ccq_cqe_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %7, align 8
  %60 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %7, align 8
  %62 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %66 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %7, align 8
  %67 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %7, align 8
  %70 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %7, align 8
  %73 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @vchnl_pf_send_get_hmc_fcn_resp(%struct.i40iw_sc_dev* %65, i32 %68, i32* %71, i64 %74)
  br label %76

76:                                               ; preds = %49, %15
  ret void
}

declare dso_local i32 @i40iw_debug(%struct.i40iw_sc_dev*, i32, i8*, i64, ...) #1

declare dso_local i32 @vchnl_pf_send_error_resp(%struct.i40iw_sc_dev*, i32, i32*, i64) #1

declare dso_local i32 @i40iw_free_virt_mem(i32, %struct.i40iw_virt_mem*) #1

declare dso_local i32 @vchnl_pf_send_get_hmc_fcn_resp(%struct.i40iw_sc_dev*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
