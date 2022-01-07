; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_pf_del_hmc_obj_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_pf_del_hmc_obj_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_vfdev = type { i32, i32, i32, i32, %struct.TYPE_2__, %struct.i40iw_hmc_info }
%struct.TYPE_2__ = type { %struct.i40iw_virtchnl_op_buf }
%struct.i40iw_virtchnl_op_buf = type { i64 }
%struct.i40iw_hmc_info = type { i32 }
%struct.i40iw_hmc_del_obj_info = type { i32, i64, i32, i32, %struct.i40iw_hmc_info* }
%struct.i40iw_virtchnl_hmc_obj_range = type { i32, i32, i64 }

@I40IW_SUCCESS = common dso_local global i32 0, align 4
@I40IW_DEBUG_VIRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"I40IW_VCHNL_OP_DEL_HMC_OBJ_RANGE.  Delete %u type %u objects\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pf_del_hmc_obj_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_del_hmc_obj_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i40iw_vfdev*, align 8
  %4 = alloca %struct.i40iw_hmc_info*, align 8
  %5 = alloca %struct.i40iw_virtchnl_op_buf*, align 8
  %6 = alloca %struct.i40iw_hmc_del_obj_info, align 8
  %7 = alloca %struct.i40iw_virtchnl_hmc_obj_range*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.i40iw_vfdev*
  store %struct.i40iw_vfdev* %10, %struct.i40iw_vfdev** %3, align 8
  %11 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %11, i32 0, i32 5
  store %struct.i40iw_hmc_info* %12, %struct.i40iw_hmc_info** %4, align 8
  %13 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %14 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.i40iw_virtchnl_op_buf* %15, %struct.i40iw_virtchnl_op_buf** %5, align 8
  %16 = load i32, i32* @I40IW_SUCCESS, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %18 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %56

22:                                               ; preds = %1
  %23 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %5, align 8
  %24 = getelementptr inbounds %struct.i40iw_virtchnl_op_buf, %struct.i40iw_virtchnl_op_buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.i40iw_virtchnl_hmc_obj_range*
  store %struct.i40iw_virtchnl_hmc_obj_range* %26, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %27 = call i32 @memset(%struct.i40iw_hmc_del_obj_info* %6, i32 0, i32 32)
  %28 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %29 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %6, i32 0, i32 4
  store %struct.i40iw_hmc_info* %28, %struct.i40iw_hmc_info** %29, align 8
  %30 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %6, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.i40iw_virtchnl_hmc_obj_range*, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %32 = getelementptr inbounds %struct.i40iw_virtchnl_hmc_obj_range, %struct.i40iw_virtchnl_hmc_obj_range* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %6, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  %35 = load %struct.i40iw_virtchnl_hmc_obj_range*, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %36 = getelementptr inbounds %struct.i40iw_virtchnl_hmc_obj_range, %struct.i40iw_virtchnl_hmc_obj_range* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %6, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.i40iw_virtchnl_hmc_obj_range*, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %40 = getelementptr inbounds %struct.i40iw_virtchnl_hmc_obj_range, %struct.i40iw_virtchnl_hmc_obj_range* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %6, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %44 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @I40IW_DEBUG_VIRT, align 4
  %47 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %6, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.i40iw_hmc_del_obj_info, %struct.i40iw_hmc_del_obj_info* %6, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @i40iw_debug(i32 %45, i32 %46, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %50)
  %52 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %53 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @i40iw_sc_del_hmc_obj(i32 %54, %struct.i40iw_hmc_del_obj_info* %6, i32 0)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %22, %21
  %57 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %58 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %62 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %65 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @vchnl_pf_send_error_resp(i32 %63, i32 %66, %struct.i40iw_virtchnl_op_buf* %67, i32 %68)
  ret void
}

declare dso_local i32 @memset(%struct.i40iw_hmc_del_obj_info*, i32, i32) #1

declare dso_local i32 @i40iw_debug(i32, i32, i8*, i32, i64) #1

declare dso_local i32 @i40iw_sc_del_hmc_obj(i32, %struct.i40iw_hmc_del_obj_info*, i32) #1

declare dso_local i32 @vchnl_pf_send_error_resp(i32, i32, %struct.i40iw_virtchnl_op_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
