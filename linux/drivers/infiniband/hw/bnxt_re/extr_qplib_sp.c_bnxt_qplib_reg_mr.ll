; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_reg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_7__*, %struct.bnxt_qplib_rcfw* }
%struct.TYPE_7__ = type { i32 }
%struct.bnxt_qplib_rcfw = type { i32 }
%struct.bnxt_qplib_mrw = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.cmdq_register_mr = type { i32, i32, i8*, i32, i8*, i32, i8* }
%struct.creq_register_mr_resp = type { i32 }

@MAX_PBL_LVL_1_PGS_SHIFT = common dso_local global i32 0, align 4
@MAX_PBL_LVL_1_PGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"SP: Reg MR pages requested (0x%x) exceeded max (0x%x)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@HWQ_TYPE_CTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SP: Reg MR memory allocation failed\0A\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@PTU_PTE_VALID = common dso_local global i32 0, align 4
@REGISTER_MR = common dso_local global i32 0, align 4
@PBL_LVL_MAX = common dso_local global i64 0, align 8
@PBL_LVL_0 = common dso_local global i64 0, align 8
@CMDQ_REGISTER_MR_LVL_SFT = common dso_local global i32 0, align 4
@CMDQ_REGISTER_MR_LOG2_PG_SIZE_SFT = common dso_local global i32 0, align 4
@CMDQ_REGISTER_MR_LOG2_PG_SIZE_MASK = common dso_local global i32 0, align 4
@CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_SFT = common dso_local global i32 0, align 4
@CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_reg_mr(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_mrw* %1, i32* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_qplib_res*, align 8
  %9 = alloca %struct.bnxt_qplib_mrw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %15 = alloca %struct.cmdq_register_mr, align 8
  %16 = alloca %struct.creq_register_mr_resp, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32**, align 8
  %24 = alloca i64, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %8, align 8
  store %struct.bnxt_qplib_mrw* %1, %struct.bnxt_qplib_mrw** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %25 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %8, align 8
  %26 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %25, i32 0, i32 1
  %27 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %26, align 8
  store %struct.bnxt_qplib_rcfw* %27, %struct.bnxt_qplib_rcfw** %14, align 8
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %127

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @roundup_pow_of_two(i32 %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* @MAX_PBL_LVL_1_PGS_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %20, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %20, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* @MAX_PBL_LVL_1_PGS, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %8, align 8
  %47 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* @MAX_PBL_LVL_1_PGS, align 4
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %231

55:                                               ; preds = %41
  %56 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %57 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %8, align 8
  %63 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %66 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %65, i32 0, i32 1
  %67 = call i32 @bnxt_qplib_free_hwq(%struct.TYPE_7__* %64, %struct.TYPE_8__* %66)
  br label %68

68:                                               ; preds = %61, %55
  %69 = load i32, i32* %20, align 4
  %70 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %71 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %8, align 8
  %74 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %77 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %76, i32 0, i32 1
  %78 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %79 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %84 = call i32 @bnxt_qplib_alloc_init_hwq(%struct.TYPE_7__* %75, %struct.TYPE_8__* %77, i32* null, i32* %80, i64 %81, i32 0, i64 %82, i32 %83)
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %68
  %88 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %8, align 8
  %89 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %231

95:                                               ; preds = %68
  %96 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %97 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32**
  store i32** %100, i32*** %23, align 8
  store i32 0, i32* %21, align 4
  br label %101

101:                                              ; preds = %123, %95
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %21, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PAGE_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @PTU_PTE_VALID, align 4
  %114 = or i32 %112, %113
  %115 = load i32**, i32*** %23, align 8
  %116 = load i32, i32* %21, align 4
  %117 = call i64 @PTR_PG(i32 %116)
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %21, align 4
  %121 = call i64 @PTR_IDX(i32 %120)
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %114, i32* %122, align 4
  br label %123

123:                                              ; preds = %105
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %21, align 4
  br label %101

126:                                              ; preds = %101
  br label %127

127:                                              ; preds = %126, %6
  %128 = load i32, i32* @REGISTER_MR, align 4
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @RCFW_CMD_PREP(%struct.cmdq_register_mr* byval(%struct.cmdq_register_mr) align 8 %15, i32 %128, i32 %129)
  %131 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %132 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @PBL_LVL_MAX, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  store i32 0, i32* %18, align 4
  %138 = getelementptr inbounds %struct.cmdq_register_mr, %struct.cmdq_register_mr* %15, i32 0, i32 6
  store i8* null, i8** %138, align 8
  %139 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %139, i64* %24, align 8
  br label %159

140:                                              ; preds = %127
  %141 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %142 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 1
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %18, align 4
  %147 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %148 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i64, i64* @PBL_LVL_0, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @cpu_to_le64(i32 %156)
  %158 = getelementptr inbounds %struct.cmdq_register_mr, %struct.cmdq_register_mr* %15, i32 0, i32 6
  store i8* %157, i8** %158, align 8
  br label %159

159:                                              ; preds = %140, %137
  %160 = load i64, i64* %13, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i64, i64* %13, align 8
  br label %166

164:                                              ; preds = %159
  %165 = load i64, i64* @PAGE_SIZE, align 8
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i64 [ %163, %162 ], [ %165, %164 ]
  store i64 %167, i64* %24, align 8
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* @CMDQ_REGISTER_MR_LVL_SFT, align 4
  %170 = shl i32 %168, %169
  %171 = load i64, i64* %24, align 8
  %172 = call i32 @ilog2(i64 %171)
  %173 = load i32, i32* @CMDQ_REGISTER_MR_LOG2_PG_SIZE_SFT, align 4
  %174 = shl i32 %172, %173
  %175 = load i32, i32* @CMDQ_REGISTER_MR_LOG2_PG_SIZE_MASK, align 4
  %176 = and i32 %174, %175
  %177 = or i32 %170, %176
  %178 = getelementptr inbounds %struct.cmdq_register_mr, %struct.cmdq_register_mr* %15, i32 0, i32 0
  store i32 %177, i32* %178, align 8
  %179 = load i64, i64* @PAGE_SIZE, align 8
  %180 = call i32 @ilog2(i64 %179)
  %181 = load i32, i32* @CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_SFT, align 4
  %182 = shl i32 %180, %181
  %183 = load i32, i32* @CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_MASK, align 4
  %184 = and i32 %182, %183
  %185 = call i32 @cpu_to_le16(i32 %184)
  %186 = getelementptr inbounds %struct.cmdq_register_mr, %struct.cmdq_register_mr* %15, i32 0, i32 5
  store i32 %185, i32* %186, align 8
  %187 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %188 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, 65535
  %191 = getelementptr inbounds %struct.cmdq_register_mr, %struct.cmdq_register_mr* %15, i32 0, i32 1
  store i32 %190, i32* %191, align 4
  %192 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %193 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i8* @cpu_to_le64(i32 %194)
  %196 = getelementptr inbounds %struct.cmdq_register_mr, %struct.cmdq_register_mr* %15, i32 0, i32 4
  store i8* %195, i8** %196, align 8
  %197 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %198 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @cpu_to_le32(i32 %199)
  %201 = getelementptr inbounds %struct.cmdq_register_mr, %struct.cmdq_register_mr* %15, i32 0, i32 3
  store i32 %200, i32* %201, align 8
  %202 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %203 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i8* @cpu_to_le64(i32 %204)
  %206 = getelementptr inbounds %struct.cmdq_register_mr, %struct.cmdq_register_mr* %15, i32 0, i32 2
  store i8* %205, i8** %206, align 8
  %207 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %14, align 8
  %208 = bitcast %struct.cmdq_register_mr* %15 to i8*
  %209 = bitcast %struct.creq_register_mr_resp* %16 to i8*
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %207, i8* %208, i8* %209, i32* null, i32 %210)
  store i32 %211, i32* %22, align 4
  %212 = load i32, i32* %22, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %166
  br label %216

215:                                              ; preds = %166
  store i32 0, i32* %7, align 4
  br label %231

216:                                              ; preds = %214
  %217 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %218 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %216
  %223 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %8, align 8
  %224 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %223, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %9, align 8
  %227 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %226, i32 0, i32 1
  %228 = call i32 @bnxt_qplib_free_hwq(%struct.TYPE_7__* %225, %struct.TYPE_8__* %227)
  br label %229

229:                                              ; preds = %222, %216
  %230 = load i32, i32* %22, align 4
  store i32 %230, i32* %7, align 4
  br label %231

231:                                              ; preds = %229, %215, %87, %45
  %232 = load i32, i32* %7, align 4
  ret i32 %232
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @bnxt_qplib_free_hwq(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @bnxt_qplib_alloc_init_hwq(%struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i32*, i64, i32, i64, i32) #1

declare dso_local i64 @PTR_PG(i32) #1

declare dso_local i64 @PTR_IDX(i32) #1

declare dso_local i32 @RCFW_CMD_PREP(%struct.cmdq_register_mr* byval(%struct.cmdq_register_mr) align 8, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
