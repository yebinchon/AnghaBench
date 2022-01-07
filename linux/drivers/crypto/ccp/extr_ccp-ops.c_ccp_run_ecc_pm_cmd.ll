; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_run_ecc_pm_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_run_ecc_pm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd_queue = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.ccp_op*)* }
%struct.ccp_op = type { i32, %struct.TYPE_36__, %struct.TYPE_34__, %struct.TYPE_30__, i32, %struct.ccp_cmd_queue* }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i64, i32 }
%struct.ccp_cmd = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.ccp_ecc_engine }
%struct.ccp_ecc_engine = type { i64, i64, i32, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_24__, i32, i32, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64, i64, i32, i32 }
%struct.TYPE_23__ = type { i64, i64, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i32, i32 }
%struct.ccp_dm_workarea = type { i32*, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }

@CCP_ECC_MODULUS_BYTES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CCP_ECC_FUNCTION_PADD_384BIT = common dso_local global i64 0, align 8
@CCP_ECC_FUNCTION_PMUL_384BIT = common dso_local global i64 0, align 8
@CCP_ECC_SRC_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CCP_ECC_OPERAND_SIZE = common dso_local global i32 0, align 4
@CCP_ECC_DST_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CCP_ECC_RESULT_OFFSET = common dso_local global i32 0, align 4
@CCP_ECC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CCP_ECC_OUTPUT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_cmd_queue*, %struct.ccp_cmd*)* @ccp_run_ecc_pm_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_run_ecc_pm_cmd(%struct.ccp_cmd_queue* %0, %struct.ccp_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccp_cmd_queue*, align 8
  %5 = alloca %struct.ccp_cmd*, align 8
  %6 = alloca %struct.ccp_ecc_engine*, align 8
  %7 = alloca %struct.ccp_dm_workarea, align 8
  %8 = alloca %struct.ccp_dm_workarea, align 8
  %9 = alloca %struct.ccp_op, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.ccp_cmd_queue* %0, %struct.ccp_cmd_queue** %4, align 8
  store %struct.ccp_cmd* %1, %struct.ccp_cmd** %5, align 8
  %12 = load %struct.ccp_cmd*, %struct.ccp_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store %struct.ccp_ecc_engine* %14, %struct.ccp_ecc_engine** %6, align 8
  %15 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %16 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %2
  %23 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %24 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %48, label %31

31:                                               ; preds = %22
  %32 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %33 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %41 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39, %31, %22, %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %494

51:                                               ; preds = %39
  %52 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %53 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CCP_ECC_FUNCTION_PADD_384BIT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %51
  %58 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %59 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %57
  %66 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %67 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %91, label %74

74:                                               ; preds = %65
  %75 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %76 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %84 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82, %74, %65, %57
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %494

94:                                               ; preds = %82
  br label %139

95:                                               ; preds = %51
  %96 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %97 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %104 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %102, %95
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %494

113:                                              ; preds = %102
  %114 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %115 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CCP_ECC_FUNCTION_PMUL_384BIT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %113
  %120 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %121 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %128 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %126, %119
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %494

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %113
  br label %139

139:                                              ; preds = %138, %94
  %140 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %141 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %139
  %148 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %149 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %173, label %156

156:                                              ; preds = %147
  %157 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %158 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %156
  %165 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %166 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %164, %156, %147, %139
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %3, align 4
  br label %494

176:                                              ; preds = %164
  %177 = call i32 @memset(%struct.ccp_op* %9, i32 0, i32 80)
  %178 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %179 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 5
  store %struct.ccp_cmd_queue* %178, %struct.ccp_cmd_queue** %179, align 8
  %180 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %181 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %180, i32 0, i32 1
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %181, align 8
  %183 = call i32 @CCP_NEW_JOBID(%struct.TYPE_27__* %182)
  %184 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 4
  store i32 %183, i32* %184, align 8
  %185 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %186 = load i32, i32* @CCP_ECC_SRC_BUF_SIZE, align 4
  %187 = load i32, i32* @DMA_TO_DEVICE, align 4
  %188 = call i32 @ccp_init_dm_workarea(%struct.ccp_dm_workarea* %7, %struct.ccp_cmd_queue* %185, i32 %186, i32 %187)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %176
  %192 = load i32, i32* %10, align 4
  store i32 %192, i32* %3, align 4
  br label %494

193:                                              ; preds = %176
  %194 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  store i32* %195, i32** %11, align 8
  %196 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %197 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %200 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @ccp_reverse_set_dm_area(%struct.ccp_dm_workarea* %7, i32 0, i32 %198, i32 0, i64 %201)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %193
  br label %491

206:                                              ; preds = %193
  %207 = load i32, i32* @CCP_ECC_OPERAND_SIZE, align 4
  %208 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = sext i32 %207 to i64
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32* %211, i32** %208, align 8
  %212 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %213 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %219 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @ccp_reverse_set_dm_area(%struct.ccp_dm_workarea* %7, i32 0, i32 %217, i32 0, i64 %223)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %206
  br label %491

228:                                              ; preds = %206
  %229 = load i32, i32* @CCP_ECC_OPERAND_SIZE, align 4
  %230 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = sext i32 %229 to i64
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32* %233, i32** %230, align 8
  %234 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %235 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %241 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @ccp_reverse_set_dm_area(%struct.ccp_dm_workarea* %7, i32 0, i32 %239, i32 0, i64 %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %228
  br label %491

250:                                              ; preds = %228
  %251 = load i32, i32* @CCP_ECC_OPERAND_SIZE, align 4
  %252 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = sext i32 %251 to i64
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  store i32* %255, i32** %252, align 8
  %256 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  store i32 1, i32* %257, align 4
  %258 = load i32, i32* @CCP_ECC_OPERAND_SIZE, align 4
  %259 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = sext i32 %258 to i64
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  store i32* %262, i32** %259, align 8
  %263 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %264 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @CCP_ECC_FUNCTION_PADD_384BIT, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %320

268:                                              ; preds = %250
  %269 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %270 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %276 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @ccp_reverse_set_dm_area(%struct.ccp_dm_workarea* %7, i32 0, i32 %274, i32 0, i64 %280)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %268
  br label %491

285:                                              ; preds = %268
  %286 = load i32, i32* @CCP_ECC_OPERAND_SIZE, align 4
  %287 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = sext i32 %286 to i64
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32* %290, i32** %287, align 8
  %291 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %292 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 5
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %298 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @ccp_reverse_set_dm_area(%struct.ccp_dm_workarea* %7, i32 0, i32 %296, i32 0, i64 %302)
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %10, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %285
  br label %491

307:                                              ; preds = %285
  %308 = load i32, i32* @CCP_ECC_OPERAND_SIZE, align 4
  %309 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = sext i32 %308 to i64
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  store i32* %312, i32** %309, align 8
  %313 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  store i32 1, i32* %314, align 4
  %315 = load i32, i32* @CCP_ECC_OPERAND_SIZE, align 4
  %316 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = sext i32 %315 to i64
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  store i32* %319, i32** %316, align 8
  br label %368

320:                                              ; preds = %250
  %321 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %322 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %327 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @ccp_reverse_set_dm_area(%struct.ccp_dm_workarea* %7, i32 0, i32 %325, i32 0, i64 %330)
  store i32 %331, i32* %10, align 4
  %332 = load i32, i32* %10, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %320
  br label %491

335:                                              ; preds = %320
  %336 = load i32, i32* @CCP_ECC_OPERAND_SIZE, align 4
  %337 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = sext i32 %336 to i64
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  store i32* %340, i32** %337, align 8
  %341 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %342 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @CCP_ECC_FUNCTION_PMUL_384BIT, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %367

346:                                              ; preds = %335
  %347 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %348 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %353 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = call i32 @ccp_reverse_set_dm_area(%struct.ccp_dm_workarea* %7, i32 0, i32 %351, i32 0, i64 %356)
  store i32 %357, i32* %10, align 4
  %358 = load i32, i32* %10, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %346
  br label %491

361:                                              ; preds = %346
  %362 = load i32, i32* @CCP_ECC_OPERAND_SIZE, align 4
  %363 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = sext i32 %362 to i64
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  store i32* %366, i32** %363, align 8
  br label %367

367:                                              ; preds = %361, %335
  br label %368

368:                                              ; preds = %367, %307
  %369 = load i32*, i32** %11, align 8
  %370 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 0
  store i32* %369, i32** %370, align 8
  %371 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %372 = load i32, i32* @CCP_ECC_DST_BUF_SIZE, align 4
  %373 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %374 = call i32 @ccp_init_dm_workarea(%struct.ccp_dm_workarea* %8, %struct.ccp_cmd_queue* %371, i32 %372, i32 %373)
  store i32 %374, i32* %10, align 4
  %375 = load i32, i32* %10, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %368
  br label %491

378:                                              ; preds = %368
  %379 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 0
  store i32 1, i32* %379, align 8
  %380 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 2
  store i32 %382, i32* %386, align 8
  %387 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %389, i32 0, i32 1
  store i64 0, i64* %390, align 8
  %391 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %7, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %395, i32 0, i32 0
  store i32 %392, i32* %396, align 8
  %397 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %8, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %402, i32 0, i32 2
  store i32 %399, i32* %403, align 8
  %404 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %406, i32 0, i32 1
  store i64 0, i64* %407, align 8
  %408 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %8, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %412, i32 0, i32 0
  store i32 %409, i32* %413, align 8
  %414 = load %struct.ccp_cmd*, %struct.ccp_cmd** %5, align 8
  %415 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = getelementptr inbounds %struct.ccp_op, %struct.ccp_op* %9, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %420, i32 0, i32 0
  store i64 %418, i64* %421, align 8
  %422 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %423 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %422, i32 0, i32 1
  %424 = load %struct.TYPE_27__*, %struct.TYPE_27__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %424, i32 0, i32 0
  %426 = load %struct.TYPE_20__*, %struct.TYPE_20__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %426, i32 0, i32 0
  %428 = load %struct.TYPE_19__*, %struct.TYPE_19__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %428, i32 0, i32 0
  %430 = load i32 (%struct.ccp_op*)*, i32 (%struct.ccp_op*)** %429, align 8
  %431 = call i32 %430(%struct.ccp_op* %9)
  store i32 %431, i32* %10, align 4
  %432 = load i32, i32* %10, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %378
  %435 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %436 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.ccp_cmd*, %struct.ccp_cmd** %5, align 8
  %439 = getelementptr inbounds %struct.ccp_cmd, %struct.ccp_cmd* %438, i32 0, i32 0
  store i32 %437, i32* %439, align 8
  br label %489

440:                                              ; preds = %378
  %441 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %8, i32 0, i32 0
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* @CCP_ECC_RESULT_OFFSET, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = call i32 @le16_to_cpup(i32* %445)
  %447 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %448 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %447, i32 0, i32 2
  store i32 %446, i32* %448, align 8
  %449 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %450 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @CCP_ECC_RESULT_SUCCESS, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %458, label %455

455:                                              ; preds = %440
  %456 = load i32, i32* @EIO, align 4
  %457 = sub nsw i32 0, %456
  store i32 %457, i32* %10, align 4
  br label %489

458:                                              ; preds = %440
  %459 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %8, i32 0, i32 0
  %460 = load i32*, i32** %459, align 8
  store i32* %460, i32** %11, align 8
  %461 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %462 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %461, i32 0, i32 3
  %463 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %468 = call i32 @ccp_reverse_get_dm_area(%struct.ccp_dm_workarea* %8, i32 0, i32 %466, i32 0, i64 %467)
  %469 = load i32, i32* @CCP_ECC_OUTPUT_SIZE, align 4
  %470 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %8, i32 0, i32 0
  %471 = load i32*, i32** %470, align 8
  %472 = sext i32 %469 to i64
  %473 = getelementptr inbounds i32, i32* %471, i64 %472
  store i32* %473, i32** %470, align 8
  %474 = load %struct.ccp_ecc_engine*, %struct.ccp_ecc_engine** %6, align 8
  %475 = getelementptr inbounds %struct.ccp_ecc_engine, %struct.ccp_ecc_engine* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %476, i32 0, i32 2
  %478 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 8
  %480 = load i64, i64* @CCP_ECC_MODULUS_BYTES, align 8
  %481 = call i32 @ccp_reverse_get_dm_area(%struct.ccp_dm_workarea* %8, i32 0, i32 %479, i32 0, i64 %480)
  %482 = load i32, i32* @CCP_ECC_OUTPUT_SIZE, align 4
  %483 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %8, i32 0, i32 0
  %484 = load i32*, i32** %483, align 8
  %485 = sext i32 %482 to i64
  %486 = getelementptr inbounds i32, i32* %484, i64 %485
  store i32* %486, i32** %483, align 8
  %487 = load i32*, i32** %11, align 8
  %488 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %8, i32 0, i32 0
  store i32* %487, i32** %488, align 8
  br label %489

489:                                              ; preds = %458, %455, %434
  %490 = call i32 @ccp_dm_free(%struct.ccp_dm_workarea* %8)
  br label %491

491:                                              ; preds = %489, %377, %360, %334, %306, %284, %249, %227, %205
  %492 = call i32 @ccp_dm_free(%struct.ccp_dm_workarea* %7)
  %493 = load i32, i32* %10, align 4
  store i32 %493, i32* %3, align 4
  br label %494

494:                                              ; preds = %491, %191, %173, %134, %110, %91, %48
  %495 = load i32, i32* %3, align 4
  ret i32 %495
}

declare dso_local i32 @memset(%struct.ccp_op*, i32, i32) #1

declare dso_local i32 @CCP_NEW_JOBID(%struct.TYPE_27__*) #1

declare dso_local i32 @ccp_init_dm_workarea(%struct.ccp_dm_workarea*, %struct.ccp_cmd_queue*, i32, i32) #1

declare dso_local i32 @ccp_reverse_set_dm_area(%struct.ccp_dm_workarea*, i32, i32, i32, i64) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @ccp_reverse_get_dm_area(%struct.ccp_dm_workarea*, i32, i32, i32, i64) #1

declare dso_local i32 @ccp_dm_free(%struct.ccp_dm_workarea*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
