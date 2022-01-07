; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_rdma_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_rdma_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { i32*, i32, %struct.iser_mem_reg*, %struct.iser_data_buf*, %struct.TYPE_3__* }
%struct.iser_mem_reg = type { %struct.iser_fr_desc* }
%struct.iser_fr_desc = type { i32, i32 }
%struct.iser_data_buf = type { i32 }
%struct.TYPE_3__ = type { %struct.ib_conn }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ib_conn*, %struct.iser_fr_desc*)*, %struct.iser_fr_desc* (%struct.ib_conn*)* }

@iser_always_reg = common dso_local global i32 0, align 4
@SCSI_PROT_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_reg_rdma_mem(%struct.iscsi_iser_task* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_iser_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_conn*, align 8
  %9 = alloca %struct.iser_device*, align 8
  %10 = alloca %struct.iser_data_buf*, align 8
  %11 = alloca %struct.iser_mem_reg*, align 8
  %12 = alloca %struct.iser_fr_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.ib_conn* %18, %struct.ib_conn** %8, align 8
  %19 = load %struct.ib_conn*, %struct.ib_conn** %8, align 8
  %20 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %19, i32 0, i32 0
  %21 = load %struct.iser_device*, %struct.iser_device** %20, align 8
  store %struct.iser_device* %21, %struct.iser_device** %9, align 8
  %22 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %23 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %22, i32 0, i32 3
  %24 = load %struct.iser_data_buf*, %struct.iser_data_buf** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %24, i64 %26
  store %struct.iser_data_buf* %27, %struct.iser_data_buf** %10, align 8
  %28 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %28, i32 0, i32 2
  %30 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %30, i64 %32
  store %struct.iser_mem_reg* %33, %struct.iser_mem_reg** %11, align 8
  store %struct.iser_fr_desc* null, %struct.iser_fr_desc** %12, align 8
  %34 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %35 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %51

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @iser_always_reg, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @scsi_get_prot_op(i32 %47)
  %49 = load i64, i64* @SCSI_PROT_NORMAL, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %44, %41, %3
  %52 = phi i1 [ false, %41 ], [ false, %3 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51
  %57 = load %struct.iser_device*, %struct.iser_device** %9, align 8
  %58 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.iser_fr_desc* (%struct.ib_conn*)*, %struct.iser_fr_desc* (%struct.ib_conn*)** %60, align 8
  %62 = load %struct.ib_conn*, %struct.ib_conn** %8, align 8
  %63 = call %struct.iser_fr_desc* %61(%struct.ib_conn* %62)
  store %struct.iser_fr_desc* %63, %struct.iser_fr_desc** %12, align 8
  %64 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %12, align 8
  %65 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %11, align 8
  %66 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %65, i32 0, i32 0
  store %struct.iser_fr_desc* %64, %struct.iser_fr_desc** %66, align 8
  br label %67

67:                                               ; preds = %56, %51
  %68 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %69 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @scsi_get_prot_op(i32 %70)
  %72 = load i64, i64* @SCSI_PROT_NORMAL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %76 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %77 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %11, align 8
  %80 = call i32 @iser_reg_data_sg(%struct.iscsi_iser_task* %75, %struct.iser_data_buf* %76, %struct.iser_fr_desc* %77, i32 %78, %struct.iser_mem_reg* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %107

85:                                               ; preds = %74
  br label %106

86:                                               ; preds = %67
  %87 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %88 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %89 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %90 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %12, align 8
  %96 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %95, i32 0, i32 1
  %97 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %11, align 8
  %98 = call i32 @iser_reg_sig_mr(%struct.iscsi_iser_task* %87, %struct.iser_data_buf* %88, i32* %94, i32* %96, %struct.iser_mem_reg* %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %107

103:                                              ; preds = %86
  %104 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %12, align 8
  %105 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %85
  store i32 0, i32* %4, align 4
  br label %121

107:                                              ; preds = %102, %84
  %108 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %12, align 8
  %109 = icmp ne %struct.iser_fr_desc* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.iser_device*, %struct.iser_device** %9, align 8
  %112 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32 (%struct.ib_conn*, %struct.iser_fr_desc*)*, i32 (%struct.ib_conn*, %struct.iser_fr_desc*)** %114, align 8
  %116 = load %struct.ib_conn*, %struct.ib_conn** %8, align 8
  %117 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %12, align 8
  %118 = call i32 %115(%struct.ib_conn* %116, %struct.iser_fr_desc* %117)
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %106
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @scsi_get_prot_op(i32) #1

declare dso_local i32 @iser_reg_data_sg(%struct.iscsi_iser_task*, %struct.iser_data_buf*, %struct.iser_fr_desc*, i32, %struct.iser_mem_reg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_reg_sig_mr(%struct.iscsi_iser_task*, %struct.iser_data_buf*, i32*, i32*, %struct.iser_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
