; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_exec_micro_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_exec_micro_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_EXEC_INST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"QAT: invalid instruction num %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LM_ADDR_0_INDIRECT = common dso_local global i32 0, align 4
@LM_ADDR_1_INDIRECT = common dso_local global i32 0, align 4
@INDIRECT_LM_ADDR_0_BYTE_INDEX = common dso_local global i32 0, align 4
@INDIRECT_LM_ADDR_1_BYTE_INDEX = common dso_local global i32 0, align 4
@CTX_STS_INDIRECT = common dso_local global i32 0, align 4
@CTX_ENABLES = common dso_local global i32 0, align 4
@IGNORE_W1C_MASK = common dso_local global i32 0, align 4
@CC_ENABLE = common dso_local global i32 0, align 4
@ACTIVE_CTX_STATUS = common dso_local global i32 0, align 4
@CTX_ARB_CNTL = common dso_local global i32 0, align 4
@FUTURE_COUNT_SIGNAL_INDIRECT = common dso_local global i32 0, align 4
@CTX_SIG_EVENTS_INDIRECT = common dso_local global i32 0, align 4
@CTX_SIG_EVENTS_ACTIVE = common dso_local global i32 0, align 4
@ACS_ACNO = common dso_local global i8 0, align 1
@XCWE_VOLUNTARY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@AE_MISC_CONTROL = common dso_local global i32 0, align 4
@MMC_SHARE_CS_BITPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i8, i32*, i32, i32, i32, i32*)* @qat_hal_exec_micro_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_exec_micro_inst(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i32* %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %10, align 8
  store i8 %1, i8* %11, align 1
  store i8 %2, i8* %12, align 1
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %37 = load i32, i32* @MAX_EXEC_INST, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %18, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %19, align 8
  store i32 0, i32* %27, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %43 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ugt i32 %41, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %8
  %49 = load i32*, i32** %13, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48, %8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  store i32 1, i32* %35, align 4
  br label %346

56:                                               ; preds = %48
  %57 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %58 = load i8, i8* %11, align 1
  %59 = load i8, i8* %12, align 1
  %60 = load i32, i32* @LM_ADDR_0_INDIRECT, align 4
  %61 = call i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle* %57, i8 zeroext %58, i8 zeroext %59, i32 %60)
  store i32 %61, i32* %20, align 4
  %62 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %63 = load i8, i8* %11, align 1
  %64 = load i8, i8* %12, align 1
  %65 = load i32, i32* @LM_ADDR_1_INDIRECT, align 4
  %66 = call i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle* %62, i8 zeroext %63, i8 zeroext %64, i32 %65)
  store i32 %66, i32* %21, align 4
  %67 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %68 = load i8, i8* %11, align 1
  %69 = load i8, i8* %12, align 1
  %70 = load i32, i32* @INDIRECT_LM_ADDR_0_BYTE_INDEX, align 4
  %71 = call i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle* %67, i8 zeroext %68, i8 zeroext %69, i32 %70)
  store i32 %71, i32* %22, align 4
  %72 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %73 = load i8, i8* %11, align 1
  %74 = load i8, i8* %12, align 1
  %75 = load i32, i32* @INDIRECT_LM_ADDR_1_BYTE_INDEX, align 4
  %76 = call i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle* %72, i8 zeroext %73, i8 zeroext %74, i32 %75)
  store i32 %76, i32* %23, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @MAX_EXEC_INST, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %56
  %81 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %82 = load i8, i8* %11, align 1
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @qat_hal_get_uwords(%struct.icp_qat_fw_loader_handle* %81, i8 zeroext %82, i32 0, i32 %83, i32* %40)
  br label %85

85:                                               ; preds = %80, %56
  %86 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %87 = load i8, i8* %11, align 1
  %88 = load i8, i8* %12, align 1
  %89 = call i32 @qat_hal_get_wakeup_event(%struct.icp_qat_fw_loader_handle* %86, i8 zeroext %87, i8 zeroext %88, i32* %31)
  %90 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %91 = load i8, i8* %11, align 1
  %92 = load i8, i8* %12, align 1
  %93 = load i32, i32* @CTX_STS_INDIRECT, align 4
  %94 = call i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle* %90, i8 zeroext %91, i8 zeroext %92, i32 %93)
  store i32 %94, i32* %32, align 4
  %95 = load i32, i32* %32, align 4
  %96 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %97 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %95, %100
  %102 = lshr i32 %101, 0
  store i32 %102, i32* %32, align 4
  %103 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %104 = load i8, i8* %11, align 1
  %105 = load i32, i32* @CTX_ENABLES, align 4
  %106 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %103, i8 zeroext %104, i32 %105)
  store i32 %106, i32* %34, align 4
  %107 = load i32, i32* @IGNORE_W1C_MASK, align 4
  %108 = load i32, i32* %34, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %34, align 4
  %110 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %111 = load i8, i8* %11, align 1
  %112 = load i32, i32* @CC_ENABLE, align 4
  %113 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %110, i8 zeroext %111, i32 %112)
  store i32 %113, i32* %30, align 4
  %114 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %115 = load i8, i8* %11, align 1
  %116 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %117 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %114, i8 zeroext %115, i32 %116)
  store i32 %117, i32* %29, align 4
  %118 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %119 = load i8, i8* %11, align 1
  %120 = load i32, i32* @CTX_ARB_CNTL, align 4
  %121 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %118, i8 zeroext %119, i32 %120)
  store i32 %121, i32* %33, align 4
  %122 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %123 = load i8, i8* %11, align 1
  %124 = load i8, i8* %12, align 1
  %125 = load i32, i32* @FUTURE_COUNT_SIGNAL_INDIRECT, align 4
  %126 = call i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle* %122, i8 zeroext %123, i8 zeroext %124, i32 %125)
  store i32 %126, i32* %24, align 4
  %127 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %128 = load i8, i8* %11, align 1
  %129 = load i8, i8* %12, align 1
  %130 = load i32, i32* @CTX_SIG_EVENTS_INDIRECT, align 4
  %131 = call i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle* %127, i8 zeroext %128, i8 zeroext %129, i32 %130)
  store i32 %131, i32* %25, align 4
  %132 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %133 = load i8, i8* %11, align 1
  %134 = load i32, i32* @CTX_SIG_EVENTS_ACTIVE, align 4
  %135 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %132, i8 zeroext %133, i32 %134)
  store i32 %135, i32* %26, align 4
  %136 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %137 = load i8, i8* %11, align 1
  %138 = load i32, i32* @CTX_ENABLES, align 4
  %139 = load i32, i32* %34, align 4
  %140 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %136, i8 zeroext %137, i32 %138, i32 %139)
  %141 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %142 = load i8, i8* %11, align 1
  %143 = load i32, i32* %14, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle* %141, i8 zeroext %142, i32 0, i32 %143, i32* %144)
  %146 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %147 = load i8, i8* %11, align 1
  %148 = load i8, i8* %12, align 1
  %149 = zext i8 %148 to i32
  %150 = shl i32 1, %149
  %151 = load i32, i32* @CTX_STS_INDIRECT, align 4
  %152 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %146, i8 zeroext %147, i32 %150, i32 %151, i32 0)
  %153 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %154 = load i8, i8* %11, align 1
  %155 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %156 = load i8, i8* %12, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* @ACS_ACNO, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %157, %159
  %161 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %153, i8 zeroext %154, i32 %155, i32 %160)
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %85
  %165 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %166 = load i8, i8* %11, align 1
  %167 = load i32, i32* @CC_ENABLE, align 4
  %168 = load i32, i32* %30, align 4
  %169 = and i32 %168, -8193
  %170 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %165, i8 zeroext %166, i32 %167, i32 %169)
  br label %171

171:                                              ; preds = %164, %85
  %172 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %173 = load i8, i8* %11, align 1
  %174 = load i8, i8* %12, align 1
  %175 = zext i8 %174 to i32
  %176 = shl i32 1, %175
  %177 = load i32, i32* @XCWE_VOLUNTARY, align 4
  %178 = call i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle* %172, i8 zeroext %173, i32 %176, i32 %177)
  %179 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %180 = load i8, i8* %11, align 1
  %181 = load i8, i8* %12, align 1
  %182 = zext i8 %181 to i32
  %183 = shl i32 1, %182
  %184 = load i32, i32* @CTX_SIG_EVENTS_INDIRECT, align 4
  %185 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %179, i8 zeroext %180, i32 %183, i32 %184, i32 0)
  %186 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %187 = load i8, i8* %11, align 1
  %188 = load i32, i32* @CTX_SIG_EVENTS_ACTIVE, align 4
  %189 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %186, i8 zeroext %187, i32 %188, i32 0)
  %190 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %191 = load i8, i8* %11, align 1
  %192 = load i8, i8* %12, align 1
  %193 = zext i8 %192 to i32
  %194 = shl i32 1, %193
  %195 = call i32 @qat_hal_enable_ctx(%struct.icp_qat_fw_loader_handle* %190, i8 zeroext %191, i32 %194)
  %196 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %197 = load i8, i8* %11, align 1
  %198 = load i32, i32* %16, align 4
  %199 = call i64 @qat_hal_wait_cycles(%struct.icp_qat_fw_loader_handle* %196, i8 zeroext %197, i32 %198, i32 1)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %171
  %202 = load i32, i32* @EFAULT, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %9, align 4
  store i32 1, i32* %35, align 4
  br label %346

204:                                              ; preds = %171
  %205 = load i32*, i32** %17, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %221

207:                                              ; preds = %204
  %208 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %209 = load i8, i8* %11, align 1
  %210 = load i8, i8* %12, align 1
  %211 = load i32, i32* @CTX_STS_INDIRECT, align 4
  %212 = call i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle* %208, i8 zeroext %209, i8 zeroext %210, i32 %211)
  store i32 %212, i32* %36, align 4
  %213 = load i32, i32* %36, align 4
  %214 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %215 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %214, i32 0, i32 0
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %213, %218
  %220 = load i32*, i32** %17, align 8
  store i32 %219, i32* %220, align 4
  br label %221

221:                                              ; preds = %207, %204
  %222 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %223 = load i8, i8* %11, align 1
  %224 = load i8, i8* %12, align 1
  %225 = zext i8 %224 to i32
  %226 = shl i32 1, %225
  %227 = call i32 @qat_hal_disable_ctx(%struct.icp_qat_fw_loader_handle* %222, i8 zeroext %223, i32 %226)
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* @MAX_EXEC_INST, align 4
  %230 = icmp ule i32 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %221
  %232 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %233 = load i8, i8* %11, align 1
  %234 = load i32, i32* %14, align 4
  %235 = call i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle* %232, i8 zeroext %233, i32 0, i32 %234, i32* %40)
  br label %236

236:                                              ; preds = %231, %221
  %237 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %238 = load i8, i8* %11, align 1
  %239 = load i8, i8* %12, align 1
  %240 = zext i8 %239 to i32
  %241 = shl i32 1, %240
  %242 = load i32, i32* %31, align 4
  %243 = call i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle* %237, i8 zeroext %238, i32 %241, i32 %242)
  %244 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %245 = load i8, i8* %11, align 1
  %246 = load i8, i8* %12, align 1
  %247 = zext i8 %246 to i32
  %248 = shl i32 1, %247
  %249 = load i32, i32* @CTX_STS_INDIRECT, align 4
  %250 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %251 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %250, i32 0, i32 0
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %32, align 4
  %256 = and i32 %254, %255
  %257 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %244, i8 zeroext %245, i32 %248, i32 %249, i32 %256)
  %258 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %259 = load i8, i8* %11, align 1
  %260 = load i32, i32* @AE_MISC_CONTROL, align 4
  %261 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %258, i8 zeroext %259, i32 %260)
  store i32 %261, i32* %27, align 4
  %262 = load i32, i32* %27, align 4
  %263 = load i32, i32* @MMC_SHARE_CS_BITPOS, align 4
  %264 = call i32 @CLR_BIT(i32 %262, i32 %263)
  store i32 %264, i32* %28, align 4
  %265 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %266 = load i8, i8* %11, align 1
  %267 = load i32, i32* @AE_MISC_CONTROL, align 4
  %268 = load i32, i32* %28, align 4
  %269 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %265, i8 zeroext %266, i32 %267, i32 %268)
  %270 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %271 = load i8, i8* %11, align 1
  %272 = load i32, i32* @CC_ENABLE, align 4
  %273 = load i32, i32* %30, align 4
  %274 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %270, i8 zeroext %271, i32 %272, i32 %273)
  %275 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %276 = load i8, i8* %11, align 1
  %277 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %278 = load i32, i32* %29, align 4
  %279 = load i8, i8* @ACS_ACNO, align 1
  %280 = zext i8 %279 to i32
  %281 = and i32 %278, %280
  %282 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %275, i8 zeroext %276, i32 %277, i32 %281)
  %283 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %284 = load i8, i8* %11, align 1
  %285 = load i32, i32* @CTX_ARB_CNTL, align 4
  %286 = load i32, i32* %33, align 4
  %287 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %283, i8 zeroext %284, i32 %285, i32 %286)
  %288 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %289 = load i8, i8* %11, align 1
  %290 = load i8, i8* %12, align 1
  %291 = zext i8 %290 to i32
  %292 = shl i32 1, %291
  %293 = load i32, i32* @LM_ADDR_0_INDIRECT, align 4
  %294 = load i32, i32* %20, align 4
  %295 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %288, i8 zeroext %289, i32 %292, i32 %293, i32 %294)
  %296 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %297 = load i8, i8* %11, align 1
  %298 = load i8, i8* %12, align 1
  %299 = zext i8 %298 to i32
  %300 = shl i32 1, %299
  %301 = load i32, i32* @LM_ADDR_1_INDIRECT, align 4
  %302 = load i32, i32* %21, align 4
  %303 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %296, i8 zeroext %297, i32 %300, i32 %301, i32 %302)
  %304 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %305 = load i8, i8* %11, align 1
  %306 = load i8, i8* %12, align 1
  %307 = zext i8 %306 to i32
  %308 = shl i32 1, %307
  %309 = load i32, i32* @INDIRECT_LM_ADDR_0_BYTE_INDEX, align 4
  %310 = load i32, i32* %22, align 4
  %311 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %304, i8 zeroext %305, i32 %308, i32 %309, i32 %310)
  %312 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %313 = load i8, i8* %11, align 1
  %314 = load i8, i8* %12, align 1
  %315 = zext i8 %314 to i32
  %316 = shl i32 1, %315
  %317 = load i32, i32* @INDIRECT_LM_ADDR_1_BYTE_INDEX, align 4
  %318 = load i32, i32* %23, align 4
  %319 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %312, i8 zeroext %313, i32 %316, i32 %317, i32 %318)
  %320 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %321 = load i8, i8* %11, align 1
  %322 = load i8, i8* %12, align 1
  %323 = zext i8 %322 to i32
  %324 = shl i32 1, %323
  %325 = load i32, i32* @FUTURE_COUNT_SIGNAL_INDIRECT, align 4
  %326 = load i32, i32* %24, align 4
  %327 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %320, i8 zeroext %321, i32 %324, i32 %325, i32 %326)
  %328 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %329 = load i8, i8* %11, align 1
  %330 = load i8, i8* %12, align 1
  %331 = zext i8 %330 to i32
  %332 = shl i32 1, %331
  %333 = load i32, i32* @CTX_SIG_EVENTS_INDIRECT, align 4
  %334 = load i32, i32* %25, align 4
  %335 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %328, i8 zeroext %329, i32 %332, i32 %333, i32 %334)
  %336 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %337 = load i8, i8* %11, align 1
  %338 = load i32, i32* @CTX_SIG_EVENTS_ACTIVE, align 4
  %339 = load i32, i32* %26, align 4
  %340 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %336, i8 zeroext %337, i32 %338, i32 %339)
  %341 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %10, align 8
  %342 = load i8, i8* %11, align 1
  %343 = load i32, i32* @CTX_ENABLES, align 4
  %344 = load i32, i32* %34, align 4
  %345 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %341, i8 zeroext %342, i32 %343, i32 %344)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %35, align 4
  br label %346

346:                                              ; preds = %236, %201, %51
  %347 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %347)
  %348 = load i32, i32* %9, align 4
  ret i32 %348
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @qat_hal_rd_indr_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32) #2

declare dso_local i32 @qat_hal_get_uwords(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i32*) #2

declare dso_local i32 @qat_hal_get_wakeup_event(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32*) #2

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #2

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #2

declare dso_local i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i32*) #2

declare dso_local i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i32) #2

declare dso_local i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #2

declare dso_local i32 @qat_hal_enable_ctx(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #2

declare dso_local i64 @qat_hal_wait_cycles(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #2

declare dso_local i32 @qat_hal_disable_ctx(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #2

declare dso_local i32 @CLR_BIT(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
