; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_manage_qhash_table_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_manage_qhash_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cqp = type { i64, i32 }
%struct.i40iw_qhash_table_info = type { i32*, i64, i64, i64, i64*, i64, i64, i64, i64, i64, i64*, i64, %struct.i40iw_sc_vsi* }
%struct.i40iw_sc_vsi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_QPN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_DEST_PORT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_ADDR3 = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_ADDR0 = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_ADDR1 = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_ADDR2 = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_QS_HANDLE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_VLANID = common dso_local global i32 0, align 4
@I40IW_QHASH_TYPE_TCP_ESTABLISHED = common dso_local global i64 0, align 8
@I40IW_CQPSQ_QHASH_SRC_PORT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_WQEVALID = common dso_local global i32 0, align 4
@I40IW_CQP_OP_MANAGE_QUAD_HASH_TABLE_ENTRY = common dso_local global i64 0, align 8
@I40IW_CQPSQ_QHASH_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_MANAGE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_IPV4VALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_VLANVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_QHASH_ENTRYTYPE = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MANAGE_QHASH WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cqp*, %struct.i40iw_qhash_table_info*, i32, i32)* @i40iw_sc_manage_qhash_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_manage_qhash_table_entry(%struct.i40iw_sc_cqp* %0, %struct.i40iw_qhash_table_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_cqp*, align 8
  %7 = alloca %struct.i40iw_qhash_table_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40iw_sc_vsi*, align 8
  store %struct.i40iw_sc_cqp* %0, %struct.i40iw_sc_cqp** %6, align 8
  store %struct.i40iw_qhash_table_info* %1, %struct.i40iw_qhash_table_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %16 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %15, i32 0, i32 12
  %17 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %16, align 8
  store %struct.i40iw_sc_vsi* %17, %struct.i40iw_sc_vsi** %14, align 8
  %18 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %18, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %24, i32* %5, align 4
  br label %274

25:                                               ; preds = %4
  %26 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %27 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %32 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LS_64_1(i32 %35, i32 8)
  %37 = or i32 %30, %36
  %38 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %39 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @LS_64_1(i32 %42, i32 16)
  %44 = or i32 %37, %43
  %45 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @LS_64_1(i32 %49, i32 24)
  %51 = or i32 %44, %50
  %52 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %53 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LS_64_1(i32 %56, i32 32)
  %58 = or i32 %51, %57
  %59 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %60 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @LS_64_1(i32 %63, i32 40)
  %65 = or i32 %58, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @set_64bit_val(i32* %66, i32 0, i32 %67)
  %69 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %70 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @I40IW_CQPSQ_QHASH_QPN, align 4
  %73 = call i32 @LS_64(i64 %71, i32 %72)
  %74 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %75 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @I40IW_CQPSQ_QHASH_DEST_PORT, align 4
  %78 = call i32 @LS_64(i64 %76, i32 %77)
  %79 = or i32 %73, %78
  store i32 %79, i32* %11, align 4
  %80 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %81 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %25
  %85 = load i32*, i32** %10, align 8
  %86 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %87 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %86, i32 0, i32 4
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR3, align 4
  %92 = call i32 @LS_64(i64 %90, i32 %91)
  %93 = call i32 @set_64bit_val(i32* %85, i32 48, i32 %92)
  br label %129

94:                                               ; preds = %25
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %97 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %96, i32 0, i32 4
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR0, align 4
  %102 = call i32 @LS_64(i64 %100, i32 %101)
  %103 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %104 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %103, i32 0, i32 4
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR1, align 4
  %109 = call i32 @LS_64(i64 %107, i32 %108)
  %110 = or i32 %102, %109
  %111 = call i32 @set_64bit_val(i32* %95, i32 56, i32 %110)
  %112 = load i32*, i32** %10, align 8
  %113 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %114 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %113, i32 0, i32 4
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR2, align 4
  %119 = call i32 @LS_64(i64 %117, i32 %118)
  %120 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %121 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %120, i32 0, i32 4
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR3, align 4
  %126 = call i32 @LS_64(i64 %124, i32 %125)
  %127 = or i32 %119, %126
  %128 = call i32 @set_64bit_val(i32* %112, i32 48, i32 %127)
  br label %129

129:                                              ; preds = %94, %84
  %130 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %14, align 8
  %131 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %134 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @I40IW_CQPSQ_QHASH_QS_HANDLE, align 4
  %140 = call i32 @LS_64(i64 %138, i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %142 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %129
  %146 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %147 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* @I40IW_CQPSQ_QHASH_VLANID, align 4
  %150 = call i32 @LS_64(i64 %148, i32 %149)
  %151 = load i32, i32* %12, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %145, %129
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @set_64bit_val(i32* %154, i32 16, i32 %155)
  %157 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %158 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @I40IW_QHASH_TYPE_TCP_ESTABLISHED, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %220

162:                                              ; preds = %153
  %163 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %164 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %163, i32 0, i32 9
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @I40IW_CQPSQ_QHASH_SRC_PORT, align 4
  %167 = call i32 @LS_64(i64 %165, i32 %166)
  %168 = load i32, i32* %11, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %171 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %209, label %174

174:                                              ; preds = %162
  %175 = load i32*, i32** %10, align 8
  %176 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %177 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %176, i32 0, i32 10
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR0, align 4
  %182 = call i32 @LS_64(i64 %180, i32 %181)
  %183 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %184 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %183, i32 0, i32 10
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 1
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR1, align 4
  %189 = call i32 @LS_64(i64 %187, i32 %188)
  %190 = or i32 %182, %189
  %191 = call i32 @set_64bit_val(i32* %175, i32 40, i32 %190)
  %192 = load i32*, i32** %10, align 8
  %193 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %194 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %193, i32 0, i32 10
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 2
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR2, align 4
  %199 = call i32 @LS_64(i64 %197, i32 %198)
  %200 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %201 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %200, i32 0, i32 10
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 3
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR3, align 4
  %206 = call i32 @LS_64(i64 %204, i32 %205)
  %207 = or i32 %199, %206
  %208 = call i32 @set_64bit_val(i32* %192, i32 32, i32 %207)
  br label %219

209:                                              ; preds = %162
  %210 = load i32*, i32** %10, align 8
  %211 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %212 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %211, i32 0, i32 10
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @I40IW_CQPSQ_QHASH_ADDR3, align 4
  %217 = call i32 @LS_64(i64 %215, i32 %216)
  %218 = call i32 @set_64bit_val(i32* %210, i32 32, i32 %217)
  br label %219

219:                                              ; preds = %209, %174
  br label %220

220:                                              ; preds = %219, %153
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @set_64bit_val(i32* %221, i32 8, i32 %222)
  %224 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %225 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* @I40IW_CQPSQ_QHASH_WQEVALID, align 4
  %228 = call i32 @LS_64(i64 %226, i32 %227)
  %229 = load i64, i64* @I40IW_CQP_OP_MANAGE_QUAD_HASH_TABLE_ENTRY, align 8
  %230 = load i32, i32* @I40IW_CQPSQ_QHASH_OPCODE, align 4
  %231 = call i32 @LS_64(i64 %229, i32 %230)
  %232 = or i32 %228, %231
  %233 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %234 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %233, i32 0, i32 11
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* @I40IW_CQPSQ_QHASH_MANAGE, align 4
  %237 = call i32 @LS_64(i64 %235, i32 %236)
  %238 = or i32 %232, %237
  %239 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %240 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* @I40IW_CQPSQ_QHASH_IPV4VALID, align 4
  %243 = call i32 @LS_64(i64 %241, i32 %242)
  %244 = or i32 %238, %243
  %245 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %246 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %245, i32 0, i32 6
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* @I40IW_CQPSQ_QHASH_VLANVALID, align 4
  %249 = call i32 @LS_64(i64 %247, i32 %248)
  %250 = or i32 %244, %249
  %251 = load %struct.i40iw_qhash_table_info*, %struct.i40iw_qhash_table_info** %7, align 8
  %252 = getelementptr inbounds %struct.i40iw_qhash_table_info, %struct.i40iw_qhash_table_info* %251, i32 0, i32 8
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* @I40IW_CQPSQ_QHASH_ENTRYTYPE, align 4
  %255 = call i32 @LS_64(i64 %253, i32 %254)
  %256 = or i32 %250, %255
  store i32 %256, i32* %13, align 4
  %257 = load i32*, i32** %10, align 8
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @i40iw_insert_wqe_hdr(i32* %257, i32 %258)
  %260 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %261 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %264 = load i32*, i32** %10, align 8
  %265 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %266 = mul nsw i32 %265, 8
  %267 = call i32 @i40iw_debug_buf(i32 %262, i32 %263, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %264, i32 %266)
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %220
  %271 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %6, align 8
  %272 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %271)
  br label %273

273:                                              ; preds = %270, %220
  store i32 0, i32* %5, align 4
  br label %274

274:                                              ; preds = %273, %23
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @LS_64_1(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i64, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
