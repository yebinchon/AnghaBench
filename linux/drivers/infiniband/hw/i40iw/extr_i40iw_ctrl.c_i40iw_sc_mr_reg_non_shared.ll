; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_mr_reg_non_shared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_mr_reg_non_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp*, %struct.TYPE_4__* }
%struct.i40iw_sc_cqp = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.i40iw_reg_ns_stag_info = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@I40IW_PAGE_SIZE_2M = common dso_local global i32 0, align 4
@I40IW_PAGE_SIZE_4K = common dso_local global i32 0, align 4
@I40IW_ACCESS_FLAGS_REMOTEREAD_ONLY = common dso_local global i32 0, align 4
@I40IW_ACCESS_FLAGS_REMOTEWRITE_ONLY = common dso_local global i32 0, align 4
@I40IW_HMC_IW_PBLE = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_PBLE_INDEX = common dso_local global i32 0, align 4
@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_ADDR_TYPE_VA_BASED = common dso_local global i64 0, align 8
@I40IW_CQPSQ_STAG_STAGLEN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_PDID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_KEY = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_IDX = common dso_local global i32 0, align 4
@I40IW_CQP_OP_REG_MR = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_MR = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_LPBLSIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_HPAGESIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_ARIGHTS = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_REMACCENABLED = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_VABASEDTO = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_USEHMCFNIDX = common dso_local global i32 0, align 4
@I40IW_CQPSQ_STAG_USEPFRID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"MR_REG_NS WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_reg_ns_stag_info*, i32, i32)* @i40iw_sc_mr_reg_non_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_mr_reg_non_shared(%struct.i40iw_sc_dev* %0, %struct.i40iw_reg_ns_stag_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca %struct.i40iw_reg_ns_stag_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40iw_sc_cqp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %6, align 8
  store %struct.i40iw_reg_ns_stag_info* %1, %struct.i40iw_reg_ns_stag_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %19 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 2097152
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @I40IW_PAGE_SIZE_2M, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @I40IW_PAGE_SIZE_4K, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %17, align 4
  %28 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %29 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I40IW_ACCESS_FLAGS_REMOTEREAD_ONLY, align 4
  %32 = load i32, i32* @I40IW_ACCESS_FLAGS_REMOTEWRITE_ONLY, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 1, i32* %15, align 4
  br label %38

37:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %40 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  %48 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %49 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %38
  %53 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %54 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @I40IW_ERR_INVALID_PBLE_INDEX, align 4
  store i32 %59, i32* %5, align 4
  br label %215

60:                                               ; preds = %52, %38
  %61 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %62 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %61, i32 0, i32 0
  %63 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %62, align 8
  store %struct.i40iw_sc_cqp* %63, %struct.i40iw_sc_cqp** %12, align 8
  %64 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %64, i32 %65)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %70, i32* %5, align 4
  br label %215

71:                                               ; preds = %60
  %72 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %73 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @I40IW_ADDR_TYPE_VA_BASED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %79 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %78, i32 0, i32 14
  %80 = load i64, i64* %79, align 8
  br label %85

81:                                               ; preds = %71
  %82 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %83 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i64 [ %80, %77 ], [ %84, %81 ]
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %11, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @set_64bit_val(i32* %88, i32 0, i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %93 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @I40IW_CQPSQ_STAG_STAGLEN, align 4
  %96 = call i32 @LS_64(i32 %94, i32 %95)
  %97 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %98 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @I40IW_CQPSQ_STAG_PDID, align 4
  %101 = call i32 @LS_64(i32 %99, i32 %100)
  %102 = or i32 %96, %101
  %103 = call i32 @set_64bit_val(i32* %91, i32 8, i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %106 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @I40IW_CQPSQ_STAG_KEY, align 4
  %109 = call i32 @LS_64(i32 %107, i32 %108)
  %110 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %111 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @I40IW_CQPSQ_STAG_IDX, align 4
  %114 = call i32 @LS_64(i32 %112, i32 %113)
  %115 = or i32 %109, %114
  %116 = call i32 @set_64bit_val(i32* %104, i32 16, i32 %115)
  %117 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %118 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %85
  %122 = load i32*, i32** %10, align 8
  %123 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %124 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @set_64bit_val(i32* %122, i32 32, i32 %125)
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @set_64bit_val(i32* %127, i32 48, i32 0)
  br label %137

129:                                              ; preds = %85
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @set_64bit_val(i32* %130, i32 32, i32 0)
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %134 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @set_64bit_val(i32* %132, i32 48, i32 %135)
  br label %137

137:                                              ; preds = %129, %121
  %138 = load i32*, i32** %10, align 8
  %139 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %140 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @set_64bit_val(i32* %138, i32 40, i32 %141)
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @set_64bit_val(i32* %143, i32 56, i32 0)
  %145 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %146 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @I40IW_ADDR_TYPE_VA_BASED, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 1, i32 0
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* @I40IW_CQP_OP_REG_MR, align 4
  %153 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %154 = call i32 @LS_64(i32 %152, i32 %153)
  %155 = load i32, i32* @I40IW_CQPSQ_STAG_MR, align 4
  %156 = call i32 @LS_64(i32 1, i32 %155)
  %157 = or i32 %154, %156
  %158 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %159 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @I40IW_CQPSQ_STAG_LPBLSIZE, align 4
  %162 = call i32 @LS_64(i32 %160, i32 %161)
  %163 = or i32 %157, %162
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* @I40IW_CQPSQ_STAG_HPAGESIZE, align 4
  %166 = call i32 @LS_64(i32 %164, i32 %165)
  %167 = or i32 %163, %166
  %168 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %169 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @I40IW_CQPSQ_STAG_ARIGHTS, align 4
  %172 = call i32 @LS_64(i32 %170, i32 %171)
  %173 = or i32 %167, %172
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* @I40IW_CQPSQ_STAG_REMACCENABLED, align 4
  %176 = call i32 @LS_64(i32 %174, i32 %175)
  %177 = or i32 %173, %176
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @I40IW_CQPSQ_STAG_VABASEDTO, align 4
  %180 = call i32 @LS_64(i32 %178, i32 %179)
  %181 = or i32 %177, %180
  %182 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %183 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %182, i32 0, i32 12
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @I40IW_CQPSQ_STAG_USEHMCFNIDX, align 4
  %186 = call i32 @LS_64(i32 %184, i32 %185)
  %187 = or i32 %181, %186
  %188 = load %struct.i40iw_reg_ns_stag_info*, %struct.i40iw_reg_ns_stag_info** %7, align 8
  %189 = getelementptr inbounds %struct.i40iw_reg_ns_stag_info, %struct.i40iw_reg_ns_stag_info* %188, i32 0, i32 13
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @I40IW_CQPSQ_STAG_USEPFRID, align 4
  %192 = call i32 @LS_64(i32 %190, i32 %191)
  %193 = or i32 %187, %192
  %194 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %195 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %198 = call i32 @LS_64(i32 %196, i32 %197)
  %199 = or i32 %193, %198
  store i32 %199, i32* %13, align 4
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @i40iw_insert_wqe_hdr(i32* %200, i32 %201)
  %203 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %204 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %207 = mul nsw i32 %206, 8
  %208 = call i32 @i40iw_debug_buf(%struct.i40iw_sc_dev* %203, i32 %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %205, i32 %207)
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %137
  %212 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  %213 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %212)
  br label %214

214:                                              ; preds = %211, %137
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %214, %69, %58
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i32) #1

declare dso_local i32 @set_64bit_val(i32*, i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i32*, i32) #1

declare dso_local i32 @i40iw_debug_buf(%struct.i40iw_sc_dev*, i32, i8*, i32*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
