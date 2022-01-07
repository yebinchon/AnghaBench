; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_wr_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_wr_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@USTORE_ADDRESS = common dso_local global i32 0, align 4
@UA_ECS = common dso_local global i32 0, align 4
@USTORE_DATA_LOWER = common dso_local global i32 0, align 4
@USTORE_DATA_UPPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qat_hal_wr_umem(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i32 %2, i32 %3, i32* %4) #0 {
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
  %18 = load i32, i32* @USTORE_ADDRESS, align 4
  %19 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %16, i8 zeroext %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @UA_ECS, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %24 = load i8, i8* %7, align 1
  %25 = load i32, i32* @USTORE_ADDRESS, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %23, i8 zeroext %24, i32 %25, i32 %26)
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %99, %5
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %102

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 268369920
  %39 = shl i32 %38, 4
  %40 = or i32 %39, 786432
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 65280
  %47 = shl i32 %46, 2
  %48 = or i32 %40, %47
  %49 = or i32 %48, 768
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 255
  %56 = or i32 %49, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, -268435456
  %63 = lshr i32 %62, 28
  %64 = or i32 240, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 65535
  %71 = call i32 @hweight32(i32 %70)
  %72 = and i32 %71, 1
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 65535
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @hweight32(i32 %83)
  %85 = and i32 %84, 1
  %86 = shl i32 %85, 9
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %90 = load i8, i8* %7, align 1
  %91 = load i32, i32* @USTORE_DATA_LOWER, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %89, i8 zeroext %90, i32 %91, i32 %92)
  %94 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %95 = load i8, i8* %7, align 1
  %96 = load i32, i32* @USTORE_DATA_UPPER, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %94, i8 zeroext %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %32
  %100 = load i32, i32* %11, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %28

102:                                              ; preds = %28
  %103 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %104 = load i8, i8* %7, align 1
  %105 = load i32, i32* @USTORE_ADDRESS, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %103, i8 zeroext %104, i32 %105, i32 %106)
  ret void
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
