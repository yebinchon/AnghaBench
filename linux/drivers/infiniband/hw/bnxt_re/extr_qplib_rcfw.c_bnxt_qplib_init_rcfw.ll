; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_init_rcfw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_init_rcfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.bnxt_qplib_ctx = type { i64, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__* }
%struct.cmdq_initialize_fw = type { i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.creq_initialize_fw_resp = type { i32 }

@INITIALIZE_FW = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@RCFW_DBR_BASE_PAGE_SHIFT = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_QPC_LVL_SFT = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_MRW_LVL_SFT = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_SRQ_LVL_SFT = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_CQ_LVL_SFT = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_TIM_LVL_SFT = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_TQM_LVL_SFT = common dso_local global i64 0, align 8
@PBL_LVL_0 = common dso_local global i64 0, align 8
@FIRMWARE_INITIALIZED_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_init_rcfw(%struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %6 = alloca %struct.bnxt_qplib_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmdq_initialize_fw, align 8
  %9 = alloca %struct.creq_initialize_fw_resp, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %5, align 8
  store %struct.bnxt_qplib_ctx* %1, %struct.bnxt_qplib_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %13 = load i32, i32* @INITIALIZE_FW, align 4
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @RCFW_CMD_PREP(%struct.cmdq_initialize_fw* byval(%struct.cmdq_initialize_fw) align 8 %8, i32 %13, i64 %14)
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = load i64, i64* @RCFW_DBR_BASE_PAGE_SHIFT, align 8
  %18 = sub nsw i64 %16, %17
  %19 = call i32 @cpu_to_le16(i64 %18)
  %20 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 22
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %25 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @bnxt_qplib_is_chip_gen_p5(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %3
  br label %286

32:                                               ; preds = %23
  %33 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @CMDQ_INITIALIZE_FW_QPC_LVL_SFT, align 8
  %39 = shl i64 %37, %38
  %40 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %44
  %46 = call i64 @__get_pbl_pg_idx(%struct.TYPE_11__* %45)
  %47 = or i64 %39, %46
  %48 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @CMDQ_INITIALIZE_FW_MRW_LVL_SFT, align 8
  %55 = shl i64 %53, %54
  %56 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = call i64 @__get_pbl_pg_idx(%struct.TYPE_11__* %61)
  %63 = or i64 %55, %62
  %64 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @CMDQ_INITIALIZE_FW_SRQ_LVL_SFT, align 8
  %71 = shl i64 %69, %70
  %72 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %76
  %78 = call i64 @__get_pbl_pg_idx(%struct.TYPE_11__* %77)
  %79 = or i64 %71, %78
  %80 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 2
  store i64 %79, i64* %80, align 8
  %81 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @CMDQ_INITIALIZE_FW_CQ_LVL_SFT, align 8
  %87 = shl i64 %85, %86
  %88 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %89 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %92
  %94 = call i64 @__get_pbl_pg_idx(%struct.TYPE_11__* %93)
  %95 = or i64 %87, %94
  %96 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 3
  store i64 %95, i64* %96, align 8
  %97 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %98 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* @CMDQ_INITIALIZE_FW_SRQ_LVL_SFT, align 8
  %103 = shl i64 %101, %102
  %104 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %105 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %108
  %110 = call i64 @__get_pbl_pg_idx(%struct.TYPE_11__* %109)
  %111 = or i64 %103, %110
  %112 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 2
  store i64 %111, i64* %112, align 8
  %113 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %114 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @CMDQ_INITIALIZE_FW_CQ_LVL_SFT, align 8
  %119 = shl i64 %117, %118
  %120 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %121 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %124
  %126 = call i64 @__get_pbl_pg_idx(%struct.TYPE_11__* %125)
  %127 = or i64 %119, %126
  %128 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 3
  store i64 %127, i64* %128, align 8
  %129 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %130 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %129, i32 0, i32 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %11, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* @CMDQ_INITIALIZE_FW_TIM_LVL_SFT, align 8
  %135 = shl i64 %133, %134
  %136 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %137 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %140
  %142 = call i64 @__get_pbl_pg_idx(%struct.TYPE_11__* %141)
  %143 = or i64 %135, %142
  %144 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 4
  store i64 %143, i64* %144, align 8
  %145 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %146 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %11, align 8
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* @CMDQ_INITIALIZE_FW_TQM_LVL_SFT, align 8
  %150 = shl i64 %148, %149
  %151 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %152 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i64 %155
  %157 = call i64 @__get_pbl_pg_idx(%struct.TYPE_11__* %156)
  %158 = or i64 %150, %157
  %159 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 5
  store i64 %158, i64* %159, align 8
  %160 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %161 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = load i64, i64* @PBL_LVL_0, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @cpu_to_le64(i32 %169)
  %171 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 21
  store i8* %170, i8** %171, align 8
  %172 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %173 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = load i64, i64* @PBL_LVL_0, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @cpu_to_le64(i32 %181)
  %183 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 20
  store i8* %182, i8** %183, align 8
  %184 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %185 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = load i64, i64* @PBL_LVL_0, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @cpu_to_le64(i32 %193)
  %195 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 19
  store i8* %194, i8** %195, align 8
  %196 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %197 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = load i64, i64* @PBL_LVL_0, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @cpu_to_le64(i32 %205)
  %207 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 18
  store i8* %206, i8** %207, align 8
  %208 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %209 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %208, i32 0, i32 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = load i64, i64* @PBL_LVL_0, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call i8* @cpu_to_le64(i32 %217)
  %219 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 17
  store i8* %218, i8** %219, align 8
  %220 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %221 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %220, i32 0, i32 7
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = load i64, i64* @PBL_LVL_0, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @cpu_to_le64(i32 %229)
  %231 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 16
  store i8* %230, i8** %231, align 8
  %232 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %233 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i8* @cpu_to_le32(i32 %235)
  %237 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 15
  store i8* %236, i8** %237, align 8
  %238 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %239 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i8* @cpu_to_le32(i32 %241)
  %243 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 14
  store i8* %242, i8** %243, align 8
  %244 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %245 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i8* @cpu_to_le32(i32 %247)
  %249 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 13
  store i8* %248, i8** %249, align 8
  %250 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %251 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i8* @cpu_to_le32(i32 %253)
  %255 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 12
  store i8* %254, i8** %255, align 8
  %256 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %257 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = call i8* @cpu_to_le32(i32 %259)
  %261 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 11
  store i8* %260, i8** %261, align 8
  %262 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %263 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i8* @cpu_to_le32(i32 %265)
  %267 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 10
  store i8* %266, i8** %267, align 8
  %268 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %269 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = call i8* @cpu_to_le32(i32 %271)
  %273 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 9
  store i8* %272, i8** %273, align 8
  %274 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %275 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i8* @cpu_to_le32(i32 %277)
  %279 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 8
  store i8* %278, i8** %279, align 8
  %280 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %281 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @cpu_to_le32(i32 %283)
  %285 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 7
  store i8* %284, i8** %285, align 8
  br label %286

286:                                              ; preds = %32, %31
  %287 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %6, align 8
  %288 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i8* @cpu_to_le32(i32 %290)
  %292 = getelementptr inbounds %struct.cmdq_initialize_fw, %struct.cmdq_initialize_fw* %8, i32 0, i32 6
  store i8* %291, i8** %292, align 8
  %293 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %294 = bitcast %struct.cmdq_initialize_fw* %8 to i8*
  %295 = bitcast %struct.creq_initialize_fw_resp* %9 to i8*
  %296 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %293, i8* %294, i8* %295, i32* null, i32 0)
  store i32 %296, i32* %12, align 4
  %297 = load i32, i32* %12, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %286
  %300 = load i32, i32* %12, align 4
  store i32 %300, i32* %4, align 4
  br label %306

301:                                              ; preds = %286
  %302 = load i32, i32* @FIRMWARE_INITIALIZED_FLAG, align 4
  %303 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %304 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %303, i32 0, i32 0
  %305 = call i32 @set_bit(i32 %302, i32* %304)
  store i32 0, i32* %4, align 4
  br label %306

306:                                              ; preds = %301, %299
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @RCFW_CMD_PREP(%struct.cmdq_initialize_fw* byval(%struct.cmdq_initialize_fw) align 8, i32, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @bnxt_qplib_is_chip_gen_p5(i32) #1

declare dso_local i64 @__get_pbl_pg_idx(%struct.TYPE_11__*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
