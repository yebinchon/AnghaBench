; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_prepare_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_prepare_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.iscsi_iser_task* }
%struct.iscsi_iser_task = type { %struct.TYPE_4__, %struct.iser_mem_reg*, %struct.iser_data_buf*, i32, %struct.iser_data_buf* }
%struct.TYPE_4__ = type { i32, %struct.ib_sge*, %struct.iser_ctrl }
%struct.ib_sge = type { i32, i32, i64 }
%struct.iser_ctrl = type { i32, i32, i32 }
%struct.iser_mem_reg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iser_data_buf = type { i32 }

@ISER_DIR_OUT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to register write cmd RDMA mem\0A\00", align 1
@ISER_WSV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Cmd itt:%d, WRITE tags, RKEY:%#.4X VA:%#llX + unsol:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Cmd itt:%d, WRITE, adding imm.data sz: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32, i32, i32)* @iser_prepare_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_prepare_write_cmd(%struct.iscsi_task* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_iser_task*, align 8
  %11 = alloca %struct.iser_mem_reg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iser_ctrl*, align 8
  %14 = alloca %struct.iser_data_buf*, align 8
  %15 = alloca %struct.ib_sge*, align 8
  %16 = alloca %struct.iser_data_buf*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %17, i32 0, i32 1
  %19 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %18, align 8
  store %struct.iscsi_iser_task* %19, %struct.iscsi_iser_task** %10, align 8
  %20 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %21 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store %struct.iser_ctrl* %22, %struct.iser_ctrl** %13, align 8
  %23 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %24 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %23, i32 0, i32 4
  %25 = load %struct.iser_data_buf*, %struct.iser_data_buf** %24, align 8
  %26 = load i64, i64* @ISER_DIR_OUT, align 8
  %27 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %25, i64 %26
  store %struct.iser_data_buf* %27, %struct.iser_data_buf** %14, align 8
  %28 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %29 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.ib_sge*, %struct.ib_sge** %30, align 8
  %32 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %31, i64 1
  store %struct.ib_sge* %32, %struct.ib_sge** %15, align 8
  %33 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %34 = load %struct.iser_data_buf*, %struct.iser_data_buf** %14, align 8
  %35 = load i64, i64* @ISER_DIR_OUT, align 8
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @iser_dma_map_task_data(%struct.iscsi_iser_task* %33, %struct.iser_data_buf* %34, i64 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %157

42:                                               ; preds = %4
  %43 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %44 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @scsi_prot_sg_count(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %50 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %49, i32 0, i32 2
  %51 = load %struct.iser_data_buf*, %struct.iser_data_buf** %50, align 8
  %52 = load i64, i64* @ISER_DIR_OUT, align 8
  %53 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %51, i64 %52
  store %struct.iser_data_buf* %53, %struct.iser_data_buf** %16, align 8
  %54 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %55 = load %struct.iser_data_buf*, %struct.iser_data_buf** %16, align 8
  %56 = load i64, i64* @ISER_DIR_OUT, align 8
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @iser_dma_map_task_data(%struct.iscsi_iser_task* %54, %struct.iser_data_buf* %55, i64 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %157

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %66 = load i64, i64* @ISER_DIR_OUT, align 8
  %67 = load %struct.iser_data_buf*, %struct.iser_data_buf** %14, align 8
  %68 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task* %65, i64 %66, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = call i32 @iser_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %157

79:                                               ; preds = %64
  %80 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %81 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %80, i32 0, i32 1
  %82 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %81, align 8
  %83 = load i64, i64* @ISER_DIR_OUT, align 8
  %84 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %82, i64 %83
  store %struct.iser_mem_reg* %84, %struct.iser_mem_reg** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %129

88:                                               ; preds = %79
  %89 = load i32, i32* @ISER_WSV, align 4
  %90 = load %struct.iser_ctrl*, %struct.iser_ctrl** %13, align 8
  %91 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.iser_data_buf*, %struct.iser_data_buf** %14, align 8
  %95 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ugt i32 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %88
  %100 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %11, align 8
  %101 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @cpu_to_be32(i32 %102)
  %104 = load %struct.iser_ctrl*, %struct.iser_ctrl** %13, align 8
  %105 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %11, align 8
  %107 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = call i32 @cpu_to_be64(i64 %112)
  %114 = load %struct.iser_ctrl*, %struct.iser_ctrl** %13, align 8
  %115 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %99, %88
  %117 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %118 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %11, align 8
  %121 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %11, align 8
  %124 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i8*, i32, i32, ...) @iser_dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %122, i64 %126, i32 %127)
  br label %129

129:                                              ; preds = %116, %79
  %130 = load i32, i32* %7, align 4
  %131 = icmp ugt i32 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %129
  %133 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %134 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i8*, i32, i32, ...) @iser_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %11, align 8
  %139 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ib_sge*, %struct.ib_sge** %15, align 8
  %143 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.ib_sge*, %struct.ib_sge** %15, align 8
  %146 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %11, align 8
  %148 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ib_sge*, %struct.ib_sge** %15, align 8
  %152 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %10, align 8
  %154 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i32 2, i32* %155, align 8
  br label %156

156:                                              ; preds = %132, %129
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %156, %76, %61, %40
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @iser_dma_map_task_data(%struct.iscsi_iser_task*, %struct.iser_data_buf*, i64, i32) #1

declare dso_local i64 @scsi_prot_sg_count(i32) #1

declare dso_local i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task*, i64, i32) #1

declare dso_local i32 @iser_err(i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
