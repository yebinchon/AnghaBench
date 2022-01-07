; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_pf_add_hmc_obj_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_virtchnl.c_pf_add_hmc_obj_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_vfdev = type { i32, i32, i32, i32, %struct.i40iw_hmc_info, i64, %struct.TYPE_3__ }
%struct.i40iw_hmc_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.i40iw_virtchnl_op_buf }
%struct.i40iw_virtchnl_op_buf = type { i64 }
%struct.i40iw_hmc_create_obj_info = type { i32, i64, i32, i32, i32, %struct.i40iw_hmc_info* }
%struct.i40iw_virtchnl_hmc_obj_range = type { i64, i32, i32 }

@I40IW_HMC_IW_PBLE = common dso_local global i64 0, align 8
@I40IW_SD_TYPE_PAGED = common dso_local global i32 0, align 4
@I40IW_SD_TYPE_DIRECT = common dso_local global i32 0, align 4
@I40IW_DEBUG_VIRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"I40IW_VCHNL_OP_ADD_HMC_OBJ_RANGE.  Add %u type %u objects\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pf_add_hmc_obj_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_add_hmc_obj_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i40iw_vfdev*, align 8
  %4 = alloca %struct.i40iw_hmc_info*, align 8
  %5 = alloca %struct.i40iw_virtchnl_op_buf*, align 8
  %6 = alloca %struct.i40iw_hmc_create_obj_info, align 8
  %7 = alloca %struct.i40iw_virtchnl_hmc_obj_range*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.i40iw_vfdev*
  store %struct.i40iw_vfdev* %10, %struct.i40iw_vfdev** %3, align 8
  %11 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %11, i32 0, i32 4
  store %struct.i40iw_hmc_info* %12, %struct.i40iw_hmc_info** %4, align 8
  %13 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %14 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.i40iw_virtchnl_op_buf* %15, %struct.i40iw_virtchnl_op_buf** %5, align 8
  %16 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %17 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %1
  %21 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %22 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %25 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @i40iw_pf_init_vfhmc(i32 %23, i32 %27, i32* null)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %96

32:                                               ; preds = %20
  %33 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %34 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %5, align 8
  %37 = getelementptr inbounds %struct.i40iw_virtchnl_op_buf, %struct.i40iw_virtchnl_op_buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.i40iw_virtchnl_hmc_obj_range*
  store %struct.i40iw_virtchnl_hmc_obj_range* %39, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %40 = call i32 @memset(%struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 40)
  %41 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %4, align 8
  %42 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 5
  store %struct.i40iw_hmc_info* %41, %struct.i40iw_hmc_info** %42, align 8
  %43 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.i40iw_virtchnl_hmc_obj_range*, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %45 = getelementptr inbounds %struct.i40iw_virtchnl_hmc_obj_range, %struct.i40iw_virtchnl_hmc_obj_range* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* @I40IW_SD_TYPE_PAGED, align 4
  br label %56

54:                                               ; preds = %35
  %55 = load i32, i32* @I40IW_SD_TYPE_DIRECT, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 4
  store i32 %57, i32* %58, align 8
  %59 = load %struct.i40iw_virtchnl_hmc_obj_range*, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %60 = getelementptr inbounds %struct.i40iw_virtchnl_hmc_obj_range, %struct.i40iw_virtchnl_hmc_obj_range* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = load %struct.i40iw_virtchnl_hmc_obj_range*, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %64 = getelementptr inbounds %struct.i40iw_virtchnl_hmc_obj_range, %struct.i40iw_virtchnl_hmc_obj_range* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %68 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @I40IW_DEBUG_VIRT, align 4
  %71 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.i40iw_hmc_create_obj_info, %struct.i40iw_hmc_create_obj_info* %6, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @i40iw_debug(i32 %69, i32 %70, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %72, i64 %74)
  %76 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %77 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @i40iw_sc_create_hmc_obj(i32 %78, %struct.i40iw_hmc_create_obj_info* %6)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %56
  %83 = load %struct.i40iw_virtchnl_hmc_obj_range*, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %84 = getelementptr inbounds %struct.i40iw_virtchnl_hmc_obj_range, %struct.i40iw_virtchnl_hmc_obj_range* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %87 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load %struct.i40iw_virtchnl_hmc_obj_range*, %struct.i40iw_virtchnl_hmc_obj_range** %7, align 8
  %91 = getelementptr inbounds %struct.i40iw_virtchnl_hmc_obj_range, %struct.i40iw_virtchnl_hmc_obj_range* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %85, i32* %94, align 4
  br label %95

95:                                               ; preds = %82, %56
  br label %96

96:                                               ; preds = %95, %31
  %97 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %98 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %102 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.i40iw_vfdev*, %struct.i40iw_vfdev** %3, align 8
  %105 = getelementptr inbounds %struct.i40iw_vfdev, %struct.i40iw_vfdev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.i40iw_virtchnl_op_buf*, %struct.i40iw_virtchnl_op_buf** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @vchnl_pf_send_error_resp(i32 %103, i32 %106, %struct.i40iw_virtchnl_op_buf* %107, i32 %108)
  ret void
}

declare dso_local i32 @i40iw_pf_init_vfhmc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.i40iw_hmc_create_obj_info*, i32, i32) #1

declare dso_local i32 @i40iw_debug(i32, i32, i8*, i32, i64) #1

declare dso_local i32 @i40iw_sc_create_hmc_obj(i32, %struct.i40iw_hmc_create_obj_info*) #1

declare dso_local i32 @vchnl_pf_send_error_resp(i32, i32, %struct.i40iw_virtchnl_op_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
