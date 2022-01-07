; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iser_conn* }
%struct.iser_conn = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.iscsi_task = type { i32, %struct.TYPE_7__, i64, %struct.scsi_cmnd*, i64, %struct.iscsi_iser_task* }
%struct.TYPE_7__ = type { i64 }
%struct.scsi_cmnd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.iscsi_iser_task = type { i32, %struct.iser_data_buf*, %struct.iser_data_buf*, %struct.iser_tx_desc }
%struct.iser_data_buf = type { i32, i64, i32 }
%struct.iser_tx_desc = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_scsi_req = type { i32, i32 }

@ISCSI_TX_SCSI_COMMAND = common dso_local global i32 0, align 4
@iser_cmd_comp = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_READ = common dso_local global i32 0, align 4
@ISER_DIR_IN = common dso_local global i64 0, align 8
@ISER_DIR_OUT = common dso_local global i64 0, align 8
@ISCSI_FLAG_CMD_WRITE = common dso_local global i32 0, align 4
@ISER_TASK_STATUS_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"conn %p failed task->itt %d err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_send_command(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca %struct.iscsi_iser_task*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iser_data_buf*, align 8
  %11 = alloca %struct.iser_data_buf*, align 8
  %12 = alloca %struct.iscsi_scsi_req*, align 8
  %13 = alloca %struct.scsi_cmnd*, align 8
  %14 = alloca %struct.iser_tx_desc*, align 8
  %15 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load %struct.iser_conn*, %struct.iser_conn** %17, align 8
  store %struct.iser_conn* %18, %struct.iser_conn** %6, align 8
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %20 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %19, i32 0, i32 5
  %21 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %20, align 8
  store %struct.iscsi_iser_task* %21, %struct.iscsi_iser_task** %7, align 8
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %23 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.iscsi_scsi_req*
  store %struct.iscsi_scsi_req* %25, %struct.iscsi_scsi_req** %12, align 8
  %26 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %26, i32 0, i32 3
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %27, align 8
  store %struct.scsi_cmnd* %28, %struct.scsi_cmnd** %13, align 8
  %29 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %30 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %29, i32 0, i32 3
  store %struct.iser_tx_desc* %30, %struct.iser_tx_desc** %14, align 8
  %31 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %32 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %12, align 8
  %37 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohl(i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* @ISCSI_TX_SCSI_COMMAND, align 4
  %41 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %14, align 8
  %42 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @iser_cmd_comp, align 4
  %44 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %14, align 8
  %45 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %48 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %14, align 8
  %49 = call i32 @iser_create_send_desc(%struct.iser_conn* %47, %struct.iser_tx_desc* %48)
  %50 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %12, align 8
  %51 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ISCSI_FLAG_CMD_READ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %2
  %57 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %58 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %57, i32 0, i32 2
  %59 = load %struct.iser_data_buf*, %struct.iser_data_buf** %58, align 8
  %60 = load i64, i64* @ISER_DIR_IN, align 8
  %61 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %59, i64 %60
  store %struct.iser_data_buf* %61, %struct.iser_data_buf** %10, align 8
  %62 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %63 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %62, i32 0, i32 1
  %64 = load %struct.iser_data_buf*, %struct.iser_data_buf** %63, align 8
  %65 = load i64, i64* @ISER_DIR_IN, align 8
  %66 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %64, i64 %65
  store %struct.iser_data_buf* %66, %struct.iser_data_buf** %11, align 8
  br label %78

67:                                               ; preds = %2
  %68 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %69 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %68, i32 0, i32 2
  %70 = load %struct.iser_data_buf*, %struct.iser_data_buf** %69, align 8
  %71 = load i64, i64* @ISER_DIR_OUT, align 8
  %72 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %70, i64 %71
  store %struct.iser_data_buf* %72, %struct.iser_data_buf** %10, align 8
  %73 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %74 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %73, i32 0, i32 1
  %75 = load %struct.iser_data_buf*, %struct.iser_data_buf** %74, align 8
  %76 = load i64, i64* @ISER_DIR_OUT, align 8
  %77 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %75, i64 %76
  store %struct.iser_data_buf* %77, %struct.iser_data_buf** %11, align 8
  br label %78

78:                                               ; preds = %67, %56
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %80 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %84 = call i32 @scsi_sglist(%struct.scsi_cmnd* %83)
  %85 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %86 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %88 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %87)
  %89 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %90 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %82, %78
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %93 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %92)
  %94 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %95 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %97 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %91
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %101 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %100)
  %102 = load %struct.iser_data_buf*, %struct.iser_data_buf** %11, align 8
  %103 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %105 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %104)
  %106 = load %struct.iser_data_buf*, %struct.iser_data_buf** %11, align 8
  %107 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.iser_data_buf*, %struct.iser_data_buf** %10, align 8
  %109 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %112 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ilog2(i32 %115)
  %117 = ashr i32 %110, %116
  %118 = mul nsw i32 %117, 8
  %119 = load %struct.iser_data_buf*, %struct.iser_data_buf** %11, align 8
  %120 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %99, %91
  %122 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %12, align 8
  %123 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ISCSI_FLAG_CMD_READ, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %130 = call i32 @iser_prepare_read_cmd(%struct.iscsi_task* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %175

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %121
  %136 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %12, align 8
  %137 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ISCSI_FLAG_CMD_WRITE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %135
  %143 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %144 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %145 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %148 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %151 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %149, %153
  %155 = load i64, i64* %8, align 8
  %156 = call i32 @iser_prepare_write_cmd(%struct.iscsi_task* %143, i64 %146, i64 %154, i64 %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %142
  br label %175

160:                                              ; preds = %142
  br label %161

161:                                              ; preds = %160, %135
  %162 = load i32, i32* @ISER_TASK_STATUS_STARTED, align 4
  %163 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %164 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %166 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %165, i32 0, i32 0
  %167 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %14, align 8
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @iser_signal_comp(i32 %168)
  %170 = call i32 @iser_post_send(%struct.TYPE_8__* %166, %struct.iser_tx_desc* %167, i32 %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %183

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %159, %133
  %176 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %177 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %178 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @iser_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.iscsi_conn* %176, i32 %179, i32 %180)
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %175, %173
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @iser_create_send_desc(%struct.iser_conn*, %struct.iser_tx_desc*) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @iser_prepare_read_cmd(%struct.iscsi_task*) #1

declare dso_local i32 @iser_prepare_write_cmd(%struct.iscsi_task*, i64, i64, i64) #1

declare dso_local i32 @iser_post_send(%struct.TYPE_8__*, %struct.iser_tx_desc*, i32) #1

declare dso_local i32 @iser_signal_comp(i32) #1

declare dso_local i32 @iser_err(i8*, %struct.iscsi_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
