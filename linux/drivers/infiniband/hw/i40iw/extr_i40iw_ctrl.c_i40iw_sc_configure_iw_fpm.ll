; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_configure_iw_fpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_configure_iw_fpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i64, i32*, i32, i32, %struct.i40iw_hmc_info* }
%struct.i40iw_hmc_info = type { %struct.TYPE_2__, %struct.i40iw_hmc_obj_info*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40iw_hmc_obj_info = type { i64 }
%struct.i40iw_dma_mem = type { i32*, i32 }

@I40IW_MAX_VF_FPM_ID = common dso_local global i64 0, align 8
@I40IW_FIRST_VF_FPM_ID = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_HMCFN_ID = common dso_local global i32 0, align 4
@I40IW_ERR_BAD_PTR = common dso_local global i32 0, align 4
@I40IW_HMC_IW_QP = common dso_local global i64 0, align 8
@I40IW_HMC_IW_PBLE = common dso_local global i64 0, align 8
@I40IW_CQP_WAIT_POLL_REGS = common dso_local global i64 0, align 8
@I40IW_CQP_WAIT_POLL_CQ = common dso_local global i64 0, align 8
@I40IW_DEBUG_HMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"COMMIT FPM BUFFER\00", align 1
@I40IW_COMMIT_FPM_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, i64)* @i40iw_sc_configure_iw_fpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_configure_iw_fpm(%struct.i40iw_sc_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40iw_hmc_info*, align 8
  %7 = alloca %struct.i40iw_hmc_obj_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.i40iw_dma_mem, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @I40IW_MAX_VF_FPM_ID, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %20 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @I40IW_FIRST_VF_FPM_ID, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @I40IW_ERR_INVALID_HMCFN_ID, align 4
  store i32 %29, i32* %3, align 4
  br label %125

30:                                               ; preds = %24, %18
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %33 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %38 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %37, i32 0, i32 4
  %39 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %38, align 8
  store %struct.i40iw_hmc_info* %39, %struct.i40iw_hmc_info** %6, align 8
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call %struct.i40iw_hmc_info* @i40iw_vf_hmcinfo_from_fpm(%struct.i40iw_sc_dev* %41, i64 %42)
  store %struct.i40iw_hmc_info* %43, %struct.i40iw_hmc_info** %6, align 8
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %46 = icmp ne %struct.i40iw_hmc_info* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @I40IW_ERR_BAD_PTR, align 4
  store i32 %48, i32* %3, align 4
  br label %125

49:                                               ; preds = %44
  %50 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %51 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %50, i32 0, i32 1
  %52 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %51, align 8
  store %struct.i40iw_hmc_obj_info* %52, %struct.i40iw_hmc_obj_info** %7, align 8
  %53 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %54 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %8, align 8
  %56 = load i64, i64* @I40IW_HMC_IW_QP, align 8
  store i64 %56, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %57

57:                                               ; preds = %72, %49
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %60 = icmp ule i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %11, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %7, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %65, i64 %66
  %68 = getelementptr inbounds %struct.i40iw_hmc_obj_info, %struct.i40iw_hmc_obj_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @set_64bit_val(i32* %62, i32 %64, i32 %70)
  br label %72

72:                                               ; preds = %61
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 8
  store i64 %76, i64* %11, align 8
  br label %57

77:                                               ; preds = %57
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @set_64bit_val(i32* %78, i32 40, i32 0)
  %80 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %81 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %9, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %85 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %9, i32 0, i32 0
  store i32* %86, i32** %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i64, i64* @I40IW_CQP_WAIT_POLL_REGS, align 8
  br label %94

92:                                               ; preds = %77
  %93 = load i64, i64* @I40IW_CQP_WAIT_POLL_CQ, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  store i64 %95, i64* %14, align 8
  %96 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %97 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %100 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %14, align 8
  %103 = call i32 @i40iw_sc_commit_fpm_values(i32 %98, i32 0, i32 %101, %struct.i40iw_dma_mem* %9, i32 1, i64 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %94
  %107 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %108 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %111 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %110, i32 0, i32 1
  %112 = load %struct.i40iw_hmc_obj_info*, %struct.i40iw_hmc_obj_info** %111, align 8
  %113 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %6, align 8
  %114 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @i40iw_sc_parse_fpm_commit_buf(i32* %109, %struct.i40iw_hmc_obj_info* %112, i32* %115)
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %106, %94
  %118 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %119 = load i32, i32* @I40IW_DEBUG_HMC, align 4
  %120 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %9, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @I40IW_COMMIT_FPM_BUF_SIZE, align 4
  %123 = call i32 @i40iw_debug_buf(%struct.i40iw_sc_dev* %118, i32 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %121, i32 %122)
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %47, %28
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.i40iw_hmc_info* @i40iw_vf_hmcinfo_from_fpm(%struct.i40iw_sc_dev*, i64) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @i40iw_sc_commit_fpm_values(i32, i32, i32, %struct.i40iw_dma_mem*, i32, i64) #1

declare dso_local i32 @i40iw_sc_parse_fpm_commit_buf(i32*, %struct.i40iw_hmc_obj_info*, i32*) #1

declare dso_local i32 @i40iw_debug_buf(%struct.i40iw_sc_dev*, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
