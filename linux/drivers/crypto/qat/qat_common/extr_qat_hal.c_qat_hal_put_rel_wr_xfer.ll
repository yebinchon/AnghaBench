; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_put_rel_wr_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_put_rel_wr_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@__const.qat_hal_put_rel_wr_xfer.micro_inst = private unnamed_addr constant [5 x i32] [i32 1073741824, i32 1073741824, i32 0, i32 787200, i32 65536], align 16
@CTX_ENABLES = common dso_local global i32 0, align 4
@CE_INUSE_CONTEXTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"QAT: 4-ctx mode,ctx=0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BAD_REGADDR = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [23 x i8] c"QAT: bad xfrAddr=0x%x\0A\00", align 1
@ICP_GPB_REL = common dso_local global i32 0, align 4
@ICP_NO_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i8, i32, i16, i32)* @qat_hal_put_rel_wr_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_put_rel_wr_xfer(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i32, align 4
  %24 = alloca [5 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i16, align 2
  %28 = alloca i16, align 2
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %23, align 4
  %29 = bitcast [5 x i32]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([5 x i32]* @__const.qat_hal_put_rel_wr_xfer.micro_inst to i8*), i64 20, i1 false)
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 0
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  store i32 %31, i32* %25, align 4
  store i32 1, i32* %26, align 4
  store i16 0, i16* %27, align 2
  %32 = load i32, i32* %25, align 4
  %33 = mul nsw i32 %32, 5
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %28, align 2
  %35 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %36 = load i8, i8* %9, align 1
  %37 = load i32, i32* @CTX_ENABLES, align 4
  %38 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %35, i8 zeroext %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* @CE_INUSE_CONTEXTS, align 4
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %6
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i16
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i16 zeroext %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %168

54:                                               ; preds = %43
  store i16 -32, i16* %22, align 2
  br label %56

55:                                               ; preds = %6
  store i16 -16, i16* %22, align 2
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i16, i16* %12, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* %22, align 2
  %60 = zext i16 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %168

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = load i16, i16* %12, align 2
  %69 = call zeroext i16 @qat_hal_get_reg_addr(i32 %67, i16 zeroext %68)
  store i16 %69, i16* %19, align 2
  %70 = load i16, i16* %19, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* @BAD_REGADDR, align 2
  %73 = zext i16 %72 to i32
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load i16, i16* %19, align 2
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %168

80:                                               ; preds = %66
  %81 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %82 = load i8, i8* %9, align 1
  %83 = load i8, i8* %10, align 1
  %84 = load i32, i32* @ICP_GPB_REL, align 4
  %85 = call i32 @qat_hal_rd_rel_reg(%struct.icp_qat_fw_loader_handle* %81, i8 zeroext %82, i8 zeroext %83, i32 %84, i16 zeroext 0, i32* %14)
  %86 = load i32, i32* @ICP_GPB_REL, align 4
  %87 = call zeroext i16 @qat_hal_get_reg_addr(i32 %86, i16 zeroext 0)
  store i16 %87, i16* %18, align 2
  %88 = load i32, i32* %13, align 4
  %89 = and i32 65535, %88
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %21, align 2
  %91 = load i32, i32* %13, align 4
  %92 = lshr i32 %91, 16
  %93 = and i32 65535, %92
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %20, align 2
  %95 = load i32, i32* @ICP_NO_DEST, align 4
  %96 = load i16, i16* %20, align 2
  %97 = zext i16 %96 to i32
  %98 = and i32 255, %97
  %99 = trunc i32 %98 to i16
  %100 = call zeroext i16 @qat_hal_get_reg_addr(i32 %95, i16 zeroext %99)
  store i16 %100, i16* %16, align 2
  %101 = load i32, i32* @ICP_NO_DEST, align 4
  %102 = load i16, i16* %21, align 2
  %103 = zext i16 %102 to i32
  %104 = and i32 255, %103
  %105 = trunc i32 %104 to i16
  %106 = call zeroext i16 @qat_hal_get_reg_addr(i32 %101, i16 zeroext %105)
  store i16 %106, i16* %17, align 2
  %107 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = load i16, i16* %20, align 2
  %110 = zext i16 %109 to i32
  %111 = ashr i32 %110, 8
  %112 = shl i32 %111, 20
  %113 = or i32 %108, %112
  %114 = load i16, i16* %18, align 2
  %115 = zext i16 %114 to i32
  %116 = and i32 %115, 1023
  %117 = shl i32 %116, 10
  %118 = or i32 %113, %117
  %119 = load i16, i16* %16, align 2
  %120 = zext i16 %119 to i32
  %121 = and i32 %120, 1023
  %122 = or i32 %118, %121
  %123 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 0
  store i32 %122, i32* %123, align 16
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load i16, i16* %21, align 2
  %127 = zext i16 %126 to i32
  %128 = ashr i32 %127, 8
  %129 = shl i32 %128, 20
  %130 = or i32 %125, %129
  %131 = load i16, i16* %18, align 2
  %132 = zext i16 %131 to i32
  %133 = and i32 %132, 1023
  %134 = shl i32 %133, 10
  %135 = or i32 %130, %134
  %136 = load i16, i16* %17, align 2
  %137 = zext i16 %136 to i32
  %138 = and i32 %137, 1023
  %139 = or i32 %135, %138
  %140 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 1
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 2
  %142 = load i32, i32* %141, align 8
  %143 = load i16, i16* %19, align 2
  %144 = zext i16 %143 to i32
  %145 = and i32 %144, 1023
  %146 = shl i32 %145, 20
  %147 = or i32 %142, %146
  %148 = load i16, i16* %18, align 2
  %149 = zext i16 %148 to i32
  %150 = and i32 %149, 1023
  %151 = shl i32 %150, 10
  %152 = or i32 %147, %151
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 2
  store i32 %152, i32* %153, align 8
  %154 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %155 = load i8, i8* %9, align 1
  %156 = load i8, i8* %10, align 1
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %24, i64 0, i64 0
  %158 = load i32, i32* %25, align 4
  %159 = load i16, i16* %28, align 2
  %160 = call i32 @qat_hal_exec_micro_inst(%struct.icp_qat_fw_loader_handle* %154, i8 zeroext %155, i8 zeroext %156, i32* %157, i32 %158, i32 1, i16 zeroext %159, i32* null)
  store i32 %160, i32* %23, align 4
  %161 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %162 = load i8, i8* %9, align 1
  %163 = load i8, i8* %10, align 1
  %164 = load i32, i32* @ICP_GPB_REL, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @qat_hal_wr_rel_reg(%struct.icp_qat_fw_loader_handle* %161, i8 zeroext %162, i8 zeroext %163, i32 %164, i16 zeroext 0, i32 %165)
  %167 = load i32, i32* %23, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %80, %75, %63, %48
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #2

declare dso_local i32 @pr_err(i8*, i16 zeroext) #2

declare dso_local zeroext i16 @qat_hal_get_reg_addr(i32, i16 zeroext) #2

declare dso_local i32 @qat_hal_rd_rel_reg(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32, i16 zeroext, i32*) #2

declare dso_local i32 @qat_hal_exec_micro_inst(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32*, i32, i32, i16 zeroext, i32*) #2

declare dso_local i32 @qat_hal_wr_rel_reg(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32, i16 zeroext, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
