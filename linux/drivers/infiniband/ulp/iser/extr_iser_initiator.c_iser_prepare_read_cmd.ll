; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_prepare_read_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_prepare_read_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.iscsi_iser_task* }
%struct.iscsi_iser_task = type { %struct.iser_mem_reg*, %struct.iser_data_buf*, i32, %struct.iser_data_buf*, %struct.TYPE_3__ }
%struct.iser_mem_reg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iser_data_buf = type { i32 }
%struct.TYPE_3__ = type { %struct.iser_ctrl }
%struct.iser_ctrl = type { i32, i32, i32 }

@ISER_DIR_IN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to set up Data-IN RDMA\0A\00", align 1
@ISER_RSV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Cmd itt:%d READ tags RKEY:%#.4X VA:%#llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @iser_prepare_read_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_prepare_read_cmd(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_iser_task*, align 8
  %5 = alloca %struct.iser_mem_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iser_ctrl*, align 8
  %8 = alloca %struct.iser_data_buf*, align 8
  %9 = alloca %struct.iser_data_buf*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %10 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %10, i32 0, i32 1
  %12 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %11, align 8
  store %struct.iscsi_iser_task* %12, %struct.iscsi_iser_task** %4, align 8
  %13 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.iser_ctrl* %15, %struct.iser_ctrl** %7, align 8
  %16 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %16, i32 0, i32 3
  %18 = load %struct.iser_data_buf*, %struct.iser_data_buf** %17, align 8
  %19 = load i64, i64* @ISER_DIR_IN, align 8
  %20 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %18, i64 %19
  store %struct.iser_data_buf* %20, %struct.iser_data_buf** %8, align 8
  %21 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %22 = load %struct.iser_data_buf*, %struct.iser_data_buf** %8, align 8
  %23 = load i64, i64* @ISER_DIR_IN, align 8
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @iser_dma_map_task_data(%struct.iscsi_iser_task* %21, %struct.iser_data_buf* %22, i64 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %96

30:                                               ; preds = %1
  %31 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @scsi_prot_sg_count(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %37, i32 0, i32 1
  %39 = load %struct.iser_data_buf*, %struct.iser_data_buf** %38, align 8
  %40 = load i64, i64* @ISER_DIR_IN, align 8
  %41 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %39, i64 %40
  store %struct.iser_data_buf* %41, %struct.iser_data_buf** %9, align 8
  %42 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %43 = load %struct.iser_data_buf*, %struct.iser_data_buf** %9, align 8
  %44 = load i64, i64* @ISER_DIR_IN, align 8
  %45 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %46 = call i32 @iser_dma_map_task_data(%struct.iscsi_iser_task* %42, %struct.iser_data_buf* %43, i64 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %96

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %54 = load i64, i64* @ISER_DIR_IN, align 8
  %55 = call i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task* %53, i64 %54, i32 0)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = call i32 @iser_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %96

61:                                               ; preds = %52
  %62 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %63 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %62, i32 0, i32 0
  %64 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %63, align 8
  %65 = load i64, i64* @ISER_DIR_IN, align 8
  %66 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %64, i64 %65
  store %struct.iser_mem_reg* %66, %struct.iser_mem_reg** %5, align 8
  %67 = load i32, i32* @ISER_RSV, align 4
  %68 = load %struct.iser_ctrl*, %struct.iser_ctrl** %7, align 8
  %69 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %73 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @cpu_to_be32(i32 %74)
  %76 = load %struct.iser_ctrl*, %struct.iser_ctrl** %7, align 8
  %77 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %79 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @cpu_to_be64(i64 %81)
  %83 = load %struct.iser_ctrl*, %struct.iser_ctrl** %7, align 8
  %84 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %86 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %89 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %92 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @iser_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90, i64 %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %61, %58, %49, %28
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @iser_dma_map_task_data(%struct.iscsi_iser_task*, %struct.iser_data_buf*, i64, i32) #1

declare dso_local i64 @scsi_prot_sg_count(i32) #1

declare dso_local i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task*, i64, i32) #1

declare dso_local i32 @iser_err(i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
