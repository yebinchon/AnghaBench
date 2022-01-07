; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_get_uwords.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_get_uwords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@AE_MISC_CONTROL = common dso_local global i32 0, align 4
@USTORE_ADDRESS = common dso_local global i32 0, align 4
@UA_ECS = common dso_local global i32 0, align 4
@USTORE_DATA_LOWER = common dso_local global i32 0, align 4
@USTORE_DATA_UPPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, i8, i32, i32, i32*)* @qat_hal_get_uwords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_hal_get_uwords(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %17 = load i8, i8* %7, align 1
  %18 = load i32, i32* @AE_MISC_CONTROL, align 4
  %19 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %16, i8 zeroext %17, i32 %18)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %21 = load i8, i8* %7, align 1
  %22 = load i32, i32* @AE_MISC_CONTROL, align 4
  %23 = load i32, i32* %15, align 4
  %24 = and i32 %23, -5
  %25 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %20, i8 zeroext %21, i32 %22, i32 %24)
  %26 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %27 = load i8, i8* %7, align 1
  %28 = load i32, i32* @USTORE_ADDRESS, align 4
  %29 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %26, i8 zeroext %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @UA_ECS, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %70, %5
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %39 = load i8, i8* %7, align 1
  %40 = load i32, i32* @USTORE_ADDRESS, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %38, i8 zeroext %39, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %46 = load i8, i8* %7, align 1
  %47 = load i32, i32* @USTORE_DATA_LOWER, align 4
  %48 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %45, i8 zeroext %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %50 = load i8, i8* %7, align 1
  %51 = load i32, i32* @USTORE_DATA_UPPER, align 4
  %52 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %49, i8 zeroext %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 32
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %63, %64
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %37
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %33

73:                                               ; preds = %33
  %74 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %75 = load i8, i8* %7, align 1
  %76 = load i32, i32* @AE_MISC_CONTROL, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %74, i8 zeroext %75, i32 %76, i32 %77)
  %79 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %80 = load i8, i8* %7, align 1
  %81 = load i32, i32* @USTORE_ADDRESS, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %79, i8 zeroext %80, i32 %81, i32 %82)
  ret void
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
