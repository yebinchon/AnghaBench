; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rx_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rx_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iser_rx_desc = type { %struct.iscsi_hdr }
%struct.iscsi_hdr = type { i32, i32, i32 }
%struct.iscsi_cmd = type { i32 }
%struct.isert_cmd = type { i8*, i8*, i8*, i8*, i8* }
%struct.iscsi_text = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Got illegal opcode: 0x%02x in SessionType=Discovery, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Got unknown iSCSI OpCode: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, %struct.iser_rx_desc*, i8*, i8*, i8*, i8*)* @isert_rx_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_rx_opcode(%struct.isert_conn* %0, %struct.iser_rx_desc* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.isert_conn*, align 8
  %9 = alloca %struct.iser_rx_desc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.iscsi_hdr*, align 8
  %15 = alloca %struct.iscsi_conn*, align 8
  %16 = alloca %struct.iscsi_cmd*, align 8
  %17 = alloca %struct.isert_cmd*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %8, align 8
  store %struct.iser_rx_desc* %1, %struct.iser_rx_desc** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %21 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %20, i32 0, i32 0
  store %struct.iscsi_hdr* %21, %struct.iscsi_hdr** %14, align 8
  %22 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %23 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %22, i32 0, i32 0
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %23, align 8
  store %struct.iscsi_conn* %24, %struct.iscsi_conn** %15, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %18, align 4
  %27 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %28 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %19, align 4
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %6
  %41 = load i32, i32* %19, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %19, align 4
  %46 = and i32 %45, 133
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @isert_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 0, i32* %7, align 4
  br label %177

51:                                               ; preds = %44, %6
  %52 = load i32, i32* %19, align 4
  switch i32 %52, label %171 [
    i32 131, label %53
    i32 132, label %92
    i32 130, label %109
    i32 129, label %115
    i32 133, label %128
    i32 128, label %141
  ]

53:                                               ; preds = %51
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  %55 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %56 = call %struct.iscsi_cmd* @isert_allocate_cmd(%struct.iscsi_conn* %54, %struct.iser_rx_desc* %55)
  store %struct.iscsi_cmd* %56, %struct.iscsi_cmd** %16, align 8
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %58 = icmp ne %struct.iscsi_cmd* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %175

60:                                               ; preds = %53
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %62 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %61)
  store %struct.isert_cmd* %62, %struct.isert_cmd** %17, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.isert_cmd*, %struct.isert_cmd** %17, align 8
  %65 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.isert_cmd*, %struct.isert_cmd** %17, align 8
  %68 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.isert_cmd*, %struct.isert_cmd** %17, align 8
  %71 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load %struct.isert_cmd*, %struct.isert_cmd** %17, align 8
  %74 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %60
  %78 = load i8*, i8** %10, align 8
  br label %81

79:                                               ; preds = %60
  %80 = load i8*, i8** %12, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i8* [ %78, %77 ], [ %80, %79 ]
  %83 = load %struct.isert_cmd*, %struct.isert_cmd** %17, align 8
  %84 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %86 = load %struct.isert_cmd*, %struct.isert_cmd** %17, align 8
  %87 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %88 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %89 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %90 = bitcast %struct.iscsi_hdr* %89 to i8*
  %91 = call i32 @isert_handle_scsi_cmd(%struct.isert_conn* %85, %struct.isert_cmd* %86, %struct.iscsi_cmd* %87, %struct.iser_rx_desc* %88, i8* %90)
  store i32 %91, i32* %18, align 4
  br label %175

92:                                               ; preds = %51
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  %94 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %95 = call %struct.iscsi_cmd* @isert_allocate_cmd(%struct.iscsi_conn* %93, %struct.iser_rx_desc* %94)
  store %struct.iscsi_cmd* %95, %struct.iscsi_cmd** %16, align 8
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %97 = icmp ne %struct.iscsi_cmd* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %175

99:                                               ; preds = %92
  %100 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %101 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %100)
  store %struct.isert_cmd* %101, %struct.isert_cmd** %17, align 8
  %102 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %103 = load %struct.isert_cmd*, %struct.isert_cmd** %17, align 8
  %104 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %105 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %106 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %107 = bitcast %struct.iscsi_hdr* %106 to i8*
  %108 = call i32 @isert_handle_nop_out(%struct.isert_conn* %102, %struct.isert_cmd* %103, %struct.iscsi_cmd* %104, %struct.iser_rx_desc* %105, i8* %107)
  store i32 %108, i32* %18, align 4
  br label %175

109:                                              ; preds = %51
  %110 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %111 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %112 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %113 = bitcast %struct.iscsi_hdr* %112 to i8*
  %114 = call i32 @isert_handle_iscsi_dataout(%struct.isert_conn* %110, %struct.iser_rx_desc* %111, i8* %113)
  store i32 %114, i32* %18, align 4
  br label %175

115:                                              ; preds = %51
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  %117 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %118 = call %struct.iscsi_cmd* @isert_allocate_cmd(%struct.iscsi_conn* %116, %struct.iser_rx_desc* %117)
  store %struct.iscsi_cmd* %118, %struct.iscsi_cmd** %16, align 8
  %119 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %120 = icmp ne %struct.iscsi_cmd* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  br label %175

122:                                              ; preds = %115
  %123 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  %124 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %125 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %126 = bitcast %struct.iscsi_hdr* %125 to i8*
  %127 = call i32 @iscsit_handle_task_mgt_cmd(%struct.iscsi_conn* %123, %struct.iscsi_cmd* %124, i8* %126)
  store i32 %127, i32* %18, align 4
  br label %175

128:                                              ; preds = %51
  %129 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  %130 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %131 = call %struct.iscsi_cmd* @isert_allocate_cmd(%struct.iscsi_conn* %129, %struct.iser_rx_desc* %130)
  store %struct.iscsi_cmd* %131, %struct.iscsi_cmd** %16, align 8
  %132 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %133 = icmp ne %struct.iscsi_cmd* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  br label %175

135:                                              ; preds = %128
  %136 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  %137 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %138 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %139 = bitcast %struct.iscsi_hdr* %138 to i8*
  %140 = call i32 @iscsit_handle_logout_cmd(%struct.iscsi_conn* %136, %struct.iscsi_cmd* %137, i8* %139)
  store i32 %140, i32* %18, align 4
  br label %175

141:                                              ; preds = %51
  %142 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %143 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @be32_to_cpu(i32 %144)
  %146 = icmp ne i32 %145, -1
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  %149 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %150 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call %struct.iscsi_cmd* @iscsit_find_cmd_from_itt(%struct.iscsi_conn* %148, i32 %151)
  store %struct.iscsi_cmd* %152, %struct.iscsi_cmd** %16, align 8
  br label %157

153:                                              ; preds = %141
  %154 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  %155 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %156 = call %struct.iscsi_cmd* @isert_allocate_cmd(%struct.iscsi_conn* %154, %struct.iser_rx_desc* %155)
  store %struct.iscsi_cmd* %156, %struct.iscsi_cmd** %16, align 8
  br label %157

157:                                              ; preds = %153, %147
  %158 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %159 = icmp ne %struct.iscsi_cmd* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %175

161:                                              ; preds = %157
  %162 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %163 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %162)
  store %struct.isert_cmd* %163, %struct.isert_cmd** %17, align 8
  %164 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %165 = load %struct.isert_cmd*, %struct.isert_cmd** %17, align 8
  %166 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %16, align 8
  %167 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %168 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  %169 = bitcast %struct.iscsi_hdr* %168 to %struct.iscsi_text*
  %170 = call i32 @isert_handle_text_cmd(%struct.isert_conn* %164, %struct.isert_cmd* %165, %struct.iscsi_cmd* %166, %struct.iser_rx_desc* %167, %struct.iscsi_text* %169)
  store i32 %170, i32* %18, align 4
  br label %175

171:                                              ; preds = %51
  %172 = load i32, i32* %19, align 4
  %173 = call i32 @isert_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = call i32 (...) @dump_stack()
  br label %175

175:                                              ; preds = %171, %161, %160, %135, %134, %122, %121, %109, %99, %98, %81, %59
  %176 = load i32, i32* %18, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %175, %48
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @isert_err(i8*, i32) #1

declare dso_local %struct.iscsi_cmd* @isert_allocate_cmd(%struct.iscsi_conn*, %struct.iser_rx_desc*) #1

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @isert_handle_scsi_cmd(%struct.isert_conn*, %struct.isert_cmd*, %struct.iscsi_cmd*, %struct.iser_rx_desc*, i8*) #1

declare dso_local i32 @isert_handle_nop_out(%struct.isert_conn*, %struct.isert_cmd*, %struct.iscsi_cmd*, %struct.iser_rx_desc*, i8*) #1

declare dso_local i32 @isert_handle_iscsi_dataout(%struct.isert_conn*, %struct.iser_rx_desc*, i8*) #1

declare dso_local i32 @iscsit_handle_task_mgt_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_handle_logout_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.iscsi_cmd* @iscsit_find_cmd_from_itt(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @isert_handle_text_cmd(%struct.isert_conn*, %struct.isert_cmd*, %struct.iscsi_cmd*, %struct.iser_rx_desc*, %struct.iscsi_text*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
