; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_clr_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_clr_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i8, i32 }

@ICP_RESET = common dso_local global i32 0, align 4
@RST_CSR_AE_LSB = common dso_local global i32 0, align 4
@RST_CSR_QAT_LSB = common dso_local global i32 0, align 4
@ICP_GLOBAL_CLK_ENABLE = common dso_local global i32 0, align 4
@CTX_ENABLES = common dso_local global i32 0, align 4
@INIT_CTX_ENABLE_VALUE = common dso_local global i32 0, align 4
@ICP_QAT_UCLO_AE_ALL_CTX = common dso_local global i32 0, align 4
@CTX_STS_INDIRECT = common dso_local global i32 0, align 4
@INIT_PC_VALUE = common dso_local global i32 0, align 4
@CTX_ARB_CNTL = common dso_local global i32 0, align 4
@INIT_CTX_ARB_VALUE = common dso_local global i32 0, align 4
@CC_ENABLE = common dso_local global i32 0, align 4
@INIT_CCENABLE_VALUE = common dso_local global i32 0, align 4
@INIT_WAKEUP_EVENTS_VALUE = common dso_local global i32 0, align 4
@INIT_SIG_EVENTS_VALUE = common dso_local global i32 0, align 4
@SHRAM_INIT_CYCLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"QAT: failed to get device out of reset\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qat_hal_clr_reset(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  store i32 100, i32* %7, align 4
  %9 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %10 = load i32, i32* @ICP_RESET, align 4
  %11 = call i32 @GET_GLB_CSR(%struct.icp_qat_fw_loader_handle* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %13 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RST_CSR_AE_LSB, align 4
  %18 = shl i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %23 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RST_CSR_QAT_LSB, align 4
  %28 = shl i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %45, %1
  %33 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %34 = load i32, i32* @ICP_RESET, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @SET_GLB_CSR(%struct.icp_qat_fw_loader_handle* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %156

41:                                               ; preds = %32
  %42 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %43 = load i32, i32* @ICP_RESET, align 4
  %44 = call i32 @GET_GLB_CSR(%struct.icp_qat_fw_loader_handle* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41
  %46 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %47 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %52 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RST_CSR_QAT_LSB, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %50, %57
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %32, label %62

62:                                               ; preds = %45
  %63 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %64 = load i32, i32* @ICP_GLOBAL_CLK_ENABLE, align 4
  %65 = call i32 @GET_GLB_CSR(%struct.icp_qat_fw_loader_handle* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %67 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 0
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %75 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 20
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %83 = load i32, i32* @ICP_GLOBAL_CLK_ENABLE, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @SET_GLB_CSR(%struct.icp_qat_fw_loader_handle* %82, i32 %83, i32 %84)
  %86 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %87 = call i64 @qat_hal_check_ae_alive(%struct.icp_qat_fw_loader_handle* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %62
  br label %156

90:                                               ; preds = %62
  store i8 0, i8* %5, align 1
  br label %91

91:                                               ; preds = %139, %90
  %92 = load i8, i8* %5, align 1
  %93 = zext i8 %92 to i32
  %94 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %95 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i8, i8* %97, align 4
  %99 = zext i8 %98 to i32
  %100 = icmp slt i32 %93, %99
  br i1 %100, label %101, label %142

101:                                              ; preds = %91
  %102 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %103 = load i8, i8* %5, align 1
  %104 = load i32, i32* @CTX_ENABLES, align 4
  %105 = load i32, i32* @INIT_CTX_ENABLE_VALUE, align 4
  %106 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %102, i8 zeroext %103, i32 %104, i32 %105)
  %107 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %108 = load i8, i8* %5, align 1
  %109 = load i32, i32* @ICP_QAT_UCLO_AE_ALL_CTX, align 4
  %110 = load i32, i32* @CTX_STS_INDIRECT, align 4
  %111 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %112 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @INIT_PC_VALUE, align 4
  %117 = and i32 %115, %116
  %118 = call i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle* %107, i8 zeroext %108, i32 %109, i32 %110, i32 %117)
  %119 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %120 = load i8, i8* %5, align 1
  %121 = load i32, i32* @CTX_ARB_CNTL, align 4
  %122 = load i32, i32* @INIT_CTX_ARB_VALUE, align 4
  %123 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %119, i8 zeroext %120, i32 %121, i32 %122)
  %124 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %125 = load i8, i8* %5, align 1
  %126 = load i32, i32* @CC_ENABLE, align 4
  %127 = load i32, i32* @INIT_CCENABLE_VALUE, align 4
  %128 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %124, i8 zeroext %125, i32 %126, i32 %127)
  %129 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %130 = load i8, i8* %5, align 1
  %131 = load i32, i32* @ICP_QAT_UCLO_AE_ALL_CTX, align 4
  %132 = load i32, i32* @INIT_WAKEUP_EVENTS_VALUE, align 4
  %133 = call i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle* %129, i8 zeroext %130, i32 %131, i32 %132)
  %134 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %135 = load i8, i8* %5, align 1
  %136 = load i32, i32* @ICP_QAT_UCLO_AE_ALL_CTX, align 4
  %137 = load i32, i32* @INIT_SIG_EVENTS_VALUE, align 4
  %138 = call i32 @qat_hal_put_sig_event(%struct.icp_qat_fw_loader_handle* %134, i8 zeroext %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %101
  %140 = load i8, i8* %5, align 1
  %141 = add i8 %140, 1
  store i8 %141, i8* %5, align 1
  br label %91

142:                                              ; preds = %91
  %143 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %144 = call i64 @qat_hal_init_esram(%struct.icp_qat_fw_loader_handle* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %156

147:                                              ; preds = %142
  %148 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %149 = load i32, i32* @SHRAM_INIT_CYCLES, align 4
  %150 = call i64 @qat_hal_wait_cycles(%struct.icp_qat_fw_loader_handle* %148, i32 0, i32 %149, i32 0)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %156

153:                                              ; preds = %147
  %154 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %155 = call i32 @qat_hal_reset_timestamp(%struct.icp_qat_fw_loader_handle* %154)
  store i32 0, i32* %2, align 4
  br label %160

156:                                              ; preds = %152, %146, %89, %40
  %157 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %158 = load i32, i32* @EFAULT, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %156, %153
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @GET_GLB_CSR(%struct.icp_qat_fw_loader_handle*, i32) #1

declare dso_local i32 @SET_GLB_CSR(%struct.icp_qat_fw_loader_handle*, i32, i32) #1

declare dso_local i64 @qat_hal_check_ae_alive(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @qat_hal_wr_indr_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i32) #1

declare dso_local i32 @qat_hal_put_wakeup_event(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @qat_hal_put_sig_event(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i64 @qat_hal_init_esram(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i64 @qat_hal_wait_cycles(%struct.icp_qat_fw_loader_handle*, i32, i32, i32) #1

declare dso_local i32 @qat_hal_reset_timestamp(%struct.icp_qat_fw_loader_handle*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
