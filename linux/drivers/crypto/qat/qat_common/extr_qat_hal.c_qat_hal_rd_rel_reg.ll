; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_rd_rel_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_rd_rel_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@BAD_REGADDR = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [23 x i8] c"QAT: bad regaddr=0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ACTIVE_CTX_STATUS = common dso_local global i32 0, align 4
@CTX_ARB_CNTL = common dso_local global i32 0, align 4
@CTX_ENABLES = common dso_local global i32 0, align 4
@IGNORE_W1C_MASK = common dso_local global i32 0, align 4
@ACS_ACNO = common dso_local global i32 0, align 4
@USTORE_ADDRESS = common dso_local global i32 0, align 4
@UA_ECS = common dso_local global i32 0, align 4
@USTORE_DATA_LOWER = common dso_local global i32 0, align 4
@USTORE_DATA_UPPER = common dso_local global i32 0, align 4
@ALU_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i8, i32, i16, i32*)* @qat_hal_rd_rel_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_rd_rel_reg(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i32 %3, i16 zeroext %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i16, align 2
  %22 = alloca i32, align 4
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %22, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i16, i16* %12, align 2
  %27 = call zeroext i16 @qat_hal_get_reg_addr(i32 %25, i16 zeroext %26)
  store i16 %27, i16* %21, align 2
  %28 = load i16, i16* %21, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @BAD_REGADDR, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %6
  %34 = load i16, i16* %21, align 2
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i16 zeroext %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %168

38:                                               ; preds = %6
  %39 = load i32, i32* %11, align 4
  switch i32 %39, label %47 [
    i32 128, label %40
  ]

40:                                               ; preds = %38
  %41 = load i16, i16* %21, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 1023
  %44 = sext i32 %43 to i64
  %45 = or i64 689073815552, %44
  %46 = trunc i64 %45 to i16
  store i16 %46, i16* %23, align 2
  br label %54

47:                                               ; preds = %38
  %48 = load i16, i16* %21, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 1023
  %51 = shl i32 %50, 10
  %52 = or i32 0, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %23, align 2
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %56 = load i8, i8* %9, align 1
  %57 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %58 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %55, i8 zeroext %56, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %60 = load i8, i8* %9, align 1
  %61 = load i32, i32* @CTX_ARB_CNTL, align 4
  %62 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %59, i8 zeroext %60, i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %64 = load i8, i8* %9, align 1
  %65 = load i32, i32* @CTX_ENABLES, align 4
  %66 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %63, i8 zeroext %64, i32 %65)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* @IGNORE_W1C_MASK, align 4
  %68 = load i32, i32* %20, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %20, align 4
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @ACS_ACNO, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %54
  %77 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %78 = load i8, i8* %9, align 1
  %79 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %80 = load i8, i8* %10, align 1
  %81 = zext i8 %80 to i32
  %82 = load i32, i32* @ACS_ACNO, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %77, i8 zeroext %78, i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %76, %54
  %86 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %87 = load i8, i8* %9, align 1
  %88 = call i32 @qat_hal_get_uwords(%struct.icp_qat_fw_loader_handle* %86, i8 zeroext %87, i32 0, i32 1, i16* %24)
  %89 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %90 = load i8, i8* %9, align 1
  %91 = load i32, i32* @CTX_ENABLES, align 4
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %89, i8 zeroext %90, i32 %91, i32 %92)
  %94 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %95 = load i8, i8* %9, align 1
  %96 = load i32, i32* @USTORE_ADDRESS, align 4
  %97 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %94, i8 zeroext %95, i32 %96)
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* @UA_ECS, align 4
  store i32 %98, i32* %15, align 4
  %99 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %100 = load i8, i8* %9, align 1
  %101 = load i32, i32* @USTORE_ADDRESS, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %99, i8 zeroext %100, i32 %101, i32 %102)
  %104 = load i16, i16* %23, align 2
  %105 = call zeroext i16 @qat_hal_set_uword_ecc(i16 zeroext %104)
  store i16 %105, i16* %23, align 2
  %106 = load i16, i16* %23, align 2
  %107 = zext i16 %106 to i32
  store i32 %107, i32* %16, align 4
  %108 = load i16, i16* %23, align 2
  %109 = zext i16 %108 to i32
  %110 = ashr i32 %109, 32
  store i32 %110, i32* %17, align 4
  %111 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %112 = load i8, i8* %9, align 1
  %113 = load i32, i32* @USTORE_DATA_LOWER, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %111, i8 zeroext %112, i32 %113, i32 %114)
  %116 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %117 = load i8, i8* %9, align 1
  %118 = load i32, i32* @USTORE_DATA_UPPER, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %116, i8 zeroext %117, i32 %118, i32 %119)
  %121 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %122 = load i8, i8* %9, align 1
  %123 = load i32, i32* @USTORE_ADDRESS, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %121, i8 zeroext %122, i32 %123, i32 %124)
  %126 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %127 = load i8, i8* %9, align 1
  %128 = call i32 @qat_hal_wait_cycles(%struct.icp_qat_fw_loader_handle* %126, i8 zeroext %127, i32 8, i32 0)
  %129 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %130 = load i8, i8* %9, align 1
  %131 = load i32, i32* @ALU_OUT, align 4
  %132 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %129, i8 zeroext %130, i32 %131)
  %133 = load i32*, i32** %13, align 8
  store i32 %132, i32* %133, align 4
  %134 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %135 = load i8, i8* %9, align 1
  %136 = load i32, i32* @USTORE_ADDRESS, align 4
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %134, i8 zeroext %135, i32 %136, i32 %137)
  %139 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %140 = load i8, i8* %9, align 1
  %141 = call i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle* %139, i8 zeroext %140, i32 0, i32 1, i16* %24)
  %142 = load i8, i8* %10, align 1
  %143 = zext i8 %142 to i32
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @ACS_ACNO, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %85
  %149 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %150 = load i8, i8* %9, align 1
  %151 = load i32, i32* @ACTIVE_CTX_STATUS, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @ACS_ACNO, align 4
  %154 = and i32 %152, %153
  %155 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %149, i8 zeroext %150, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %148, %85
  %157 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %158 = load i8, i8* %9, align 1
  %159 = load i32, i32* @CTX_ARB_CNTL, align 4
  %160 = load i32, i32* %18, align 4
  %161 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %157, i8 zeroext %158, i32 %159, i32 %160)
  %162 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %163 = load i8, i8* %9, align 1
  %164 = load i32, i32* @CTX_ENABLES, align 4
  %165 = load i32, i32* %20, align 4
  %166 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %162, i8 zeroext %163, i32 %164, i32 %165)
  %167 = load i32, i32* %22, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %156, %33
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local zeroext i16 @qat_hal_get_reg_addr(i32, i16 zeroext) #1

declare dso_local i32 @pr_err(i8*, i16 zeroext) #1

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @qat_hal_get_uwords(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i16*) #1

declare dso_local zeroext i16 @qat_hal_set_uword_ecc(i16 zeroext) #1

declare dso_local i32 @qat_hal_wait_cycles(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @qat_hal_wr_uwords(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
