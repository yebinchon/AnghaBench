; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_handle_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_handle_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.isert_cmd = type { i32 }
%struct.iscsi_cmd = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }
%struct.iser_rx_desc = type { i32* }
%struct.iscsi_scsi_req = type { i32 }

@SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Copy Immediate sg_nents: %u imm_data_len: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Transfer Immediate imm_data_len: %d\0A\00", align 1
@ICF_GOT_LAST_DATAOUT = common dso_local global i32 0, align 4
@ISTATE_RECEIVED_LAST_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, %struct.isert_cmd*, %struct.iscsi_cmd*, %struct.iser_rx_desc*, i8*)* @isert_handle_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_handle_scsi_cmd(%struct.isert_conn* %0, %struct.isert_cmd* %1, %struct.iscsi_cmd* %2, %struct.iser_rx_desc* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.isert_conn*, align 8
  %8 = alloca %struct.isert_cmd*, align 8
  %9 = alloca %struct.iscsi_cmd*, align 8
  %10 = alloca %struct.iser_rx_desc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.iscsi_conn*, align 8
  %13 = alloca %struct.iscsi_scsi_req*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %7, align 8
  store %struct.isert_cmd* %1, %struct.isert_cmd** %8, align 8
  store %struct.iscsi_cmd* %2, %struct.iscsi_cmd** %9, align 8
  store %struct.iser_rx_desc* %3, %struct.iser_rx_desc** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %22 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %21, i32 0, i32 0
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %22, align 8
  store %struct.iscsi_conn* %23, %struct.iscsi_conn** %12, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to %struct.iscsi_scsi_req*
  store %struct.iscsi_scsi_req* %25, %struct.iscsi_scsi_req** %13, align 8
  store i32 0, i32* %19, align 4
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @iscsit_setup_scsi_cmd(%struct.iscsi_conn* %26, %struct.iscsi_cmd* %27, i8* %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %6, align 4
  br label %184

34:                                               ; preds = %5
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  %38 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %39 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %42 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %16, align 4
  %44 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %45 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %34
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %20, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %57 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %54, %50, %34
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %64 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %13, align 8
  %65 = call i32 @iscsit_process_scsi_cmd(%struct.iscsi_conn* %62, %struct.iscsi_cmd* %63, %struct.iscsi_scsi_req* %64)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %184

69:                                               ; preds = %61
  %70 = load i32, i32* %18, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %19, align 4
  br label %153

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %184

78:                                               ; preds = %74
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = call i32 @DIV_ROUND_UP(i32 %83, i32 %84)
  %86 = call i32 @max(i64 1, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %88 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %10, align 8
  %93 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @sg_copy_from_buffer(i32* %90, i32 %91, i32* %95, i32 %96)
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 (i8*, i32, ...) @isert_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  br label %123

101:                                              ; preds = %78
  %102 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %103 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %102, i32 0, i32 0
  %104 = call i32 @sg_init_table(i32* %103, i32 1)
  %105 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %106 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %105, i32 0, i32 0
  %107 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %108 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i32* %106, i32** %109, align 8
  %110 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %111 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.isert_cmd*, %struct.isert_cmd** %8, align 8
  %114 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %113, i32 0, i32 0
  %115 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %10, align 8
  %116 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @sg_set_buf(i32* %114, i32* %118, i32 %119)
  %121 = load i32, i32* %15, align 4
  %122 = call i32 (i8*, i32, ...) @isert_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %101, %82
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %126 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %130 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %133 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %131, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %123
  %138 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %139 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %138, i32 0, i32 5
  %140 = call i32 @spin_lock_bh(i32* %139)
  %141 = load i32, i32* @ICF_GOT_LAST_DATAOUT, align 4
  %142 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %143 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* @ISTATE_RECEIVED_LAST_DATAOUT, align 4
  %147 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %148 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 4
  %149 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %150 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %149, i32 0, i32 5
  %151 = call i32 @spin_unlock_bh(i32* %150)
  br label %152

152:                                              ; preds = %137, %123
  br label %153

153:                                              ; preds = %152, %72
  %154 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  %155 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %13, align 8
  %158 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @iscsit_sequence_cmd(%struct.iscsi_conn* %154, %struct.iscsi_cmd* %155, i8* %156, i32 %159)
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %153
  %164 = load i32, i32* %19, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %171 = call i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd* %170)
  br label %183

172:                                              ; preds = %166, %163, %153
  %173 = load i32, i32* %19, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %180 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %179, i32 0, i32 4
  %181 = call i32 @target_put_sess_cmd(%struct.TYPE_2__* %180)
  br label %182

182:                                              ; preds = %178, %175, %172
  br label %183

183:                                              ; preds = %182, %169
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %183, %77, %68, %32
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local i32 @iscsit_setup_scsi_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_process_scsi_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_scsi_req*) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32*, i32, i32*, i32) #1

declare dso_local i32 @isert_dbg(i8*, i32, ...) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i32 @sg_set_buf(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_sequence_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*, i32) #1

declare dso_local i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd*) #1

declare dso_local i32 @target_put_sess_cmd(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
