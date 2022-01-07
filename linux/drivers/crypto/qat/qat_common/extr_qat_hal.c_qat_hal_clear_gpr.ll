; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_clear_gpr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_clear_gpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i32 }

@ICP_QAT_UCLO_AE_ALL_CTX = common dso_local global i32 0, align 4
@MAX_RETRY_TIMES = common dso_local global i32 0, align 4
@AE_MISC_CONTROL = common dso_local global i32 0, align 4
@MMC_SHARE_CS_BITPOS = common dso_local global i32 0, align 4
@CTX_ENABLES = common dso_local global i32 0, align 4
@IGNORE_W1C_MASK = common dso_local global i32 0, align 4
@CE_NN_MODE = common dso_local global i32 0, align 4
@inst = common dso_local global i64 0, align 8
@CTX_STS_INDIRECT = common dso_local global i32 0, align 4
@INIT_PC_VALUE = common dso_local global i32 0, align 4
@ACTIVE_CTX_STATUS = common dso_local global i32 0, align 4
@XCWE_VOLUNTARY = common dso_local global i32 0, align 4
@CTX_SIG_EVENTS_INDIRECT = common dso_local global i32 0, align 4
@CTX_SIG_EVENTS_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"QAT: clear GPR of AE %d failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ACS_ACNO = common dso_local global i32 0, align 4
@INIT_CTX_ENABLE_VALUE = common dso_local global i32 0, align 4
@CTX_ARB_CNTL = common dso_local global i32 0, align 4
@INIT_CTX_ARB_VALUE = common dso_local global i32 0, align 4
@CC_ENABLE = common dso_local global i32 0, align 4
@INIT_CCENABLE_VALUE = common dso_local global i32 0, align 4
@INIT_WAKEUP_EVENTS_VALUE = common dso_local global i32 0, align 4
@INIT_SIG_EVENTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*)* @qat_hal_clear_gpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_clear_gpr(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  %10 = load i32, i32* @ICP_QAT_UCLO_AE_ALL_CTX, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @MAX_RETRY_TIMES, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8 0, i8* %4, align 1
  br label %12

12:                                               ; preds = %97, %1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %16 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 4
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %100

22:                                               ; preds = %12
  %23 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %24 = load i8, i8* %4, align 1
  %25 = load i32, i32* @AE_MISC_CONTROL, align 4
  %26 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %23, i8 zeroext %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @MMC_SHARE_CS_BITPOS, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %33 = load i8, i8* %4, align 1
  %34 = load i32, i32* @AE_MISC_CONTROL, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %32, i8 zeroext %33, i32 %34, i32 %35)
  %37 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %38 = load i8, i8* %4, align 1
  %39 = load i32, i32* @CTX_ENABLES, align 4
  %40 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %37, i8 zeroext %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @IGNORE_W1C_MASK, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @CE_NN_MODE, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %48 = load i8, i8* %4, align 1
  %49 = load i32, i32* @CTX_ENABLES, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %47, i8 zeroext %48, i32 %49, i32 %50)
  %52 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %53 = load i8, i8* %4, align 1
  %54 = load i64, i64* @inst, align 8
  %55 = call i32 @ARRAY_SIZE(i64 %54)
  %56 = load i64, i64* @inst, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle* %52, i8 zeroext %53, i32 0, i32 %55, i32* %57)
  %59 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %60 = load i8, i8* %4, align 1
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @CTX_STS_INDIRECT, align 4
  %63 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %64 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @INIT_PC_VALUE, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %59, i8 zeroext %60, i32 %61, i32 %62, i32 %69)
  %71 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %72 = load i8, i8* %4, align 1
  %73 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %74 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %71, i8 zeroext %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %76 = load i8, i8* %4, align 1
  %77 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %78 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %75, i8 zeroext %76, i32 %77, i32 0)
  %79 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %80 = load i8, i8* %4, align 1
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @XCWE_VOLUNTARY, align 4
  %83 = call i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle* %79, i8 zeroext %80, i32 %81, i32 %82)
  %84 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %85 = load i8, i8* %4, align 1
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @CTX_SIG_EVENTS_INDIRECT, align 4
  %88 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %84, i8 zeroext %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %90 = load i8, i8* %4, align 1
  %91 = load i32, i32* @CTX_SIG_EVENTS_ACTIVE, align 4
  %92 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %89, i8 zeroext %90, i32 %91, i32 0)
  %93 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %94 = load i8, i8* %4, align 1
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @qat_hal_enable_ctx(%struct.icp_qat_fw_loader_handle* %93, i8 zeroext %94, i32 %95)
  br label %97

97:                                               ; preds = %22
  %98 = load i8, i8* %4, align 1
  %99 = add i8 %98, 1
  store i8 %99, i8* %4, align 1
  br label %12

100:                                              ; preds = %12
  store i8 0, i8* %4, align 1
  br label %101

101:                                              ; preds = %182, %100
  %102 = load i8, i8* %4, align 1
  %103 = zext i8 %102 to i32
  %104 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %105 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i8, i8* %107, align 4
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %103, %109
  br i1 %110, label %111, label %185

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %123, %111
  %113 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %114 = load i8, i8* %4, align 1
  %115 = call i32 @qat_hal_wait_cycles(%struct.icp_qat_fw_loader_handle* %113, i8 zeroext %114, i32 20, i32 1)
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %6, align 4
  %122 = icmp ne i32 %120, 0
  br label %123

123:                                              ; preds = %119, %116
  %124 = phi i1 [ false, %116 ], [ %122, %119 ]
  br i1 %124, label %112, label %125

125:                                              ; preds = %123
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i8, i8* %4, align 1
  %130 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8 zeroext %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %186

133:                                              ; preds = %125
  %134 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %135 = load i8, i8* %4, align 1
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @qat_hal_disable_ctx(%struct.icp_qat_fw_loader_handle* %134, i8 zeroext %135, i32 %136)
  %138 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %139 = load i8, i8* %4, align 1
  %140 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @ACS_ACNO, align 4
  %143 = and i32 %141, %142
  %144 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %138, i8 zeroext %139, i32 %140, i32 %143)
  %145 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %146 = load i8, i8* %4, align 1
  %147 = load i32, i32* @CTX_ENABLES, align 4
  %148 = load i32, i32* @INIT_CTX_ENABLE_VALUE, align 4
  %149 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %145, i8 zeroext %146, i32 %147, i32 %148)
  %150 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %151 = load i8, i8* %4, align 1
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @CTX_STS_INDIRECT, align 4
  %154 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %155 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @INIT_PC_VALUE, align 4
  %160 = and i32 %158, %159
  %161 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %150, i8 zeroext %151, i32 %152, i32 %153, i32 %160)
  %162 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %163 = load i8, i8* %4, align 1
  %164 = load i32, i32* @CTX_ARB_CNTL, align 4
  %165 = load i32, i32* @INIT_CTX_ARB_VALUE, align 4
  %166 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %162, i8 zeroext %163, i32 %164, i32 %165)
  %167 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %168 = load i8, i8* %4, align 1
  %169 = load i32, i32* @CC_ENABLE, align 4
  %170 = load i32, i32* @INIT_CCENABLE_VALUE, align 4
  %171 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %167, i8 zeroext %168, i32 %169, i32 %170)
  %172 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %173 = load i8, i8* %4, align 1
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @INIT_WAKEUP_EVENTS_VALUE, align 4
  %176 = call i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle* %172, i8 zeroext %173, i32 %174, i32 %175)
  %177 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %178 = load i8, i8* %4, align 1
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @INIT_SIG_EVENTS_VALUE, align 4
  %181 = call i32 @qat_hal_put_sig_event(%struct.icp_qat_fw_loader_handle* %177, i8 zeroext %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %133
  %183 = load i8, i8* %4, align 1
  %184 = add i8 %183, 1
  store i8 %184, i8* %4, align 1
  br label %101

185:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %128
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i64) #1

declare dso_local i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i32) #1

declare dso_local i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @qat_hal_enable_ctx(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_wait_cycles(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8 zeroext) #1

declare dso_local i32 @qat_hal_disable_ctx(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_put_sig_event(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
