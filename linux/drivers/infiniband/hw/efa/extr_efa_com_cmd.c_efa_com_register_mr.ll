; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_register_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com_cmd.c_efa_com_register_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, %struct.efa_com_admin_queue }
%struct.efa_com_admin_queue = type { i32 }
%struct.efa_com_reg_mr_params = type { i32, i32, i64, %struct.TYPE_13__, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.efa_com_reg_mr_result = type { i32, i32 }
%struct.efa_admin_reg_mr_resp = type { i32, i32 }
%struct.efa_admin_reg_mr_cmd = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.efa_admin_aq_entry = type { i32 }
%struct.efa_admin_acq_entry = type { i32 }

@EFA_ADMIN_REG_MR = common dso_local global i32 0, align 4
@EFA_ADMIN_REG_MR_CMD_PHYS_PAGE_SIZE_SHIFT_MASK = common dso_local global i32 0, align 4
@EFA_ADMIN_REG_MR_CMD_LOCAL_WRITE_ENABLE_MASK = common dso_local global i32 0, align 4
@EFA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_MASK = common dso_local global i32 0, align 4
@EFA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to register mr [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_register_mr(%struct.efa_com_dev* %0, %struct.efa_com_reg_mr_params* %1, %struct.efa_com_reg_mr_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efa_com_dev*, align 8
  %6 = alloca %struct.efa_com_reg_mr_params*, align 8
  %7 = alloca %struct.efa_com_reg_mr_result*, align 8
  %8 = alloca %struct.efa_admin_reg_mr_resp, align 4
  %9 = alloca %struct.efa_com_admin_queue*, align 8
  %10 = alloca %struct.efa_admin_reg_mr_cmd, align 4
  %11 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %5, align 8
  store %struct.efa_com_reg_mr_params* %1, %struct.efa_com_reg_mr_params** %6, align 8
  store %struct.efa_com_reg_mr_result* %2, %struct.efa_com_reg_mr_result** %7, align 8
  %12 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %13 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %12, i32 0, i32 1
  store %struct.efa_com_admin_queue* %13, %struct.efa_com_admin_queue** %9, align 8
  %14 = bitcast %struct.efa_admin_reg_mr_cmd* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 44, i1 false)
  %15 = load i32, i32* @EFA_ADMIN_REG_MR, align 4
  %16 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %19 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 6
  store i32 %20, i32* %21, align 4
  %22 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %23 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %27 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EFA_ADMIN_REG_MR_CMD_PHYS_PAGE_SIZE_SHIFT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %35 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %39 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EFA_ADMIN_REG_MR_CMD_LOCAL_WRITE_ENABLE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %47 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %55 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32 %53, i32 %57, i32 4)
  br label %104

59:                                               ; preds = %3
  %60 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %61 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %69 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %79 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* @EFA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_MASK, align 4
  %89 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %6, align 8
  %94 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %59
  %98 = load i32, i32* @EFA_ADMIN_AQ_COMMON_DESC_CTRL_DATA_INDIRECT_MASK, align 4
  %99 = getelementptr inbounds %struct.efa_admin_reg_mr_cmd, %struct.efa_admin_reg_mr_cmd* %10, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %59
  br label %104

104:                                              ; preds = %103, %50
  %105 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %9, align 8
  %106 = bitcast %struct.efa_admin_reg_mr_cmd* %10 to %struct.efa_admin_aq_entry*
  %107 = bitcast %struct.efa_admin_reg_mr_resp* %8 to %struct.efa_admin_acq_entry*
  %108 = call i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue* %105, %struct.efa_admin_aq_entry* %106, i32 44, %struct.efa_admin_acq_entry* %107, i32 8)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load %struct.efa_com_dev*, %struct.efa_com_dev** %5, align 8
  %113 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @ibdev_err_ratelimited(i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %4, align 4
  br label %127

118:                                              ; preds = %104
  %119 = getelementptr inbounds %struct.efa_admin_reg_mr_resp, %struct.efa_admin_reg_mr_resp* %8, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.efa_com_reg_mr_result*, %struct.efa_com_reg_mr_result** %7, align 8
  %122 = getelementptr inbounds %struct.efa_com_reg_mr_result, %struct.efa_com_reg_mr_result* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds %struct.efa_admin_reg_mr_resp, %struct.efa_admin_reg_mr_resp* %8, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.efa_com_reg_mr_result*, %struct.efa_com_reg_mr_result** %7, align 8
  %126 = getelementptr inbounds %struct.efa_com_reg_mr_result, %struct.efa_com_reg_mr_result* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %118, %111
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @efa_com_cmd_exec(%struct.efa_com_admin_queue*, %struct.efa_admin_aq_entry*, i32, %struct.efa_admin_acq_entry*, i32) #2

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
