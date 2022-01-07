; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_init_tcp_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_init_tcp_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32, i32, i32*, i32*, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i40iw_tcp_offload_info = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i32, i64 }
%struct.i40iw_qp = type { i32 }

@I40IW_DEFAULT_TTL = common dso_local global i32 0, align 4
@I40IW_DEFAULT_RTT_VAR = common dso_local global i32 0, align 4
@I40IW_DEFAULT_SS_THRESH = common dso_local global i32 0, align 4
@I40IW_DEFAULT_REXMIT_THRESH = common dso_local global i32 0, align 4
@I40IW_TCP_STATE_ESTABLISHED = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@I40IW_VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@I40IW_ARP_RESOLVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, %struct.i40iw_tcp_offload_info*, %struct.i40iw_qp*)* @i40iw_init_tcp_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_init_tcp_ctx(%struct.i40iw_cm_node* %0, %struct.i40iw_tcp_offload_info* %1, %struct.i40iw_qp* %2) #0 {
  %4 = alloca %struct.i40iw_cm_node*, align 8
  %5 = alloca %struct.i40iw_tcp_offload_info*, align 8
  %6 = alloca %struct.i40iw_qp*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %4, align 8
  store %struct.i40iw_tcp_offload_info* %1, %struct.i40iw_tcp_offload_info** %5, align 8
  store %struct.i40iw_qp* %2, %struct.i40iw_qp** %6, align 8
  %7 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %8 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %11 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %10, i32 0, i32 37
  store i64 %9, i64* %11, align 8
  %12 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %15 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %17 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %16, i32 0, i32 2
  store i32 1, i32* %17, align 8
  %18 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %19 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %18, i32 0, i32 3
  store i32 1, i32* %19, align 4
  %20 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %21 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %20, i32 0, i32 4
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* @I40IW_DEFAULT_TTL, align 4
  %23 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %24 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %23, i32 0, i32 36
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @I40IW_DEFAULT_RTT_VAR, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %28 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %27, i32 0, i32 35
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @I40IW_DEFAULT_SS_THRESH, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %32 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %31, i32 0, i32 34
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @I40IW_DEFAULT_REXMIT_THRESH, align 4
  %34 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %35 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %34, i32 0, i32 33
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @I40IW_TCP_STATE_ESTABLISHED, align 4
  %37 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %38 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %37, i32 0, i32 32
  store i32 %36, i32* %38, align 4
  %39 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %40 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %44 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %43, i32 0, i32 31
  store i32 %42, i32* %44, align 8
  %45 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %46 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %50 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %52 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %57 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %56, i32 0, i32 30
  store i8* %55, i8** %57, align 8
  %58 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %59 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %64 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %63, i32 0, i32 29
  store i8* %62, i8** %64, align 8
  %65 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %66 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %71 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %70, i32 0, i32 28
  store i8* %69, i8** %71, align 8
  %72 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %73 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %78 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %77, i32 0, i32 27
  store i8* %76, i8** %78, align 8
  %79 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %80 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %85 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %84, i32 0, i32 26
  store i8* %83, i8** %85, align 8
  %86 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %87 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 2, %89
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %93 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %92, i32 0, i32 25
  store i8* %91, i8** %93, align 8
  %94 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %95 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %100 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %99, i32 0, i32 24
  store i8* %98, i8** %100, align 8
  %101 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %102 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %107 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %106, i32 0, i32 23
  store i8* %105, i8** %107, align 8
  %108 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %109 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %114 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %113, i32 0, i32 22
  store i8* %112, i8** %114, align 8
  %115 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %116 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %120 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %118, %122
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %126 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %125, i32 0, i32 21
  store i8* %124, i8** %126, align 8
  %127 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %128 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %127, i32 0, i32 20
  store i64 0, i64* %128, align 8
  %129 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %130 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %135 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %134, i32 0, i32 19
  store i8* %133, i8** %135, align 8
  %136 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %137 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @VLAN_VID_MASK, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %3
  %142 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %143 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %142, i32 0, i32 6
  store i32 1, i32* %143, align 8
  %144 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %145 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* @I40IW_VLAN_PRIO_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %151 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %149, %152
  %154 = call i8* @cpu_to_le16(i32 %153)
  %155 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %156 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %155, i32 0, i32 18
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %141, %3
  %158 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %159 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %202

162:                                              ; preds = %157
  %163 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %164 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @cpu_to_le16(i32 %165)
  %167 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %168 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %167, i32 0, i32 17
  store i8* %166, i8** %168, align 8
  %169 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %170 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @cpu_to_le16(i32 %171)
  %173 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %174 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %173, i32 0, i32 16
  store i8* %172, i8** %174, align 8
  %175 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %176 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @cpu_to_le32(i32 %179)
  %181 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %182 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %181, i32 0, i32 13
  store i8* %180, i8** %182, align 8
  %183 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %184 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @cpu_to_le32(i32 %187)
  %189 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %190 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %189, i32 0, i32 9
  store i8* %188, i8** %190, align 8
  %191 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %192 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %195 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %194, i32 0, i32 13
  %196 = load i32, i32* @I40IW_ARP_RESOLVE, align 4
  %197 = call i64 @i40iw_arp_table(i32 %193, i8** %195, i32 1, i32* null, i32 %196)
  %198 = trunc i64 %197 to i32
  %199 = call i8* @cpu_to_le16(i32 %198)
  %200 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %201 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %200, i32 0, i32 8
  store i8* %199, i8** %201, align 8
  br label %290

202:                                              ; preds = %157
  %203 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %204 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @cpu_to_le16(i32 %205)
  %207 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %208 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %207, i32 0, i32 17
  store i8* %206, i8** %208, align 8
  %209 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %210 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i8* @cpu_to_le16(i32 %211)
  %213 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %214 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %213, i32 0, i32 16
  store i8* %212, i8** %214, align 8
  %215 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %216 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @cpu_to_le32(i32 %219)
  %221 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %222 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %221, i32 0, i32 7
  store i8* %220, i8** %222, align 8
  %223 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %224 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = call i8* @cpu_to_le32(i32 %227)
  %229 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %230 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %229, i32 0, i32 15
  store i8* %228, i8** %230, align 8
  %231 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %232 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @cpu_to_le32(i32 %235)
  %237 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %238 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %237, i32 0, i32 14
  store i8* %236, i8** %238, align 8
  %239 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %240 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @cpu_to_le32(i32 %243)
  %245 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %246 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %245, i32 0, i32 13
  store i8* %244, i8** %246, align 8
  %247 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %248 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %247, i32 0, i32 4
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = call i8* @cpu_to_le32(i32 %251)
  %253 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %254 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %253, i32 0, i32 12
  store i8* %252, i8** %254, align 8
  %255 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %256 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = call i8* @cpu_to_le32(i32 %259)
  %261 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %262 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %261, i32 0, i32 11
  store i8* %260, i8** %262, align 8
  %263 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %264 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 2
  %267 = load i32, i32* %266, align 4
  %268 = call i8* @cpu_to_le32(i32 %267)
  %269 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %270 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %269, i32 0, i32 10
  store i8* %268, i8** %270, align 8
  %271 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %272 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %271, i32 0, i32 4
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 3
  %275 = load i32, i32* %274, align 4
  %276 = call i8* @cpu_to_le32(i32 %275)
  %277 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %278 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %277, i32 0, i32 9
  store i8* %276, i8** %278, align 8
  %279 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %280 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %283 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %282, i32 0, i32 7
  %284 = load i32, i32* @I40IW_ARP_RESOLVE, align 4
  %285 = call i64 @i40iw_arp_table(i32 %281, i8** %283, i32 0, i32* null, i32 %284)
  %286 = trunc i64 %285 to i32
  %287 = call i8* @cpu_to_le16(i32 %286)
  %288 = load %struct.i40iw_tcp_offload_info*, %struct.i40iw_tcp_offload_info** %5, align 8
  %289 = getelementptr inbounds %struct.i40iw_tcp_offload_info, %struct.i40iw_tcp_offload_info* %288, i32 0, i32 8
  store i8* %287, i8** %289, align 8
  br label %290

290:                                              ; preds = %202, %162
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @i40iw_arp_table(i32, i8**, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
