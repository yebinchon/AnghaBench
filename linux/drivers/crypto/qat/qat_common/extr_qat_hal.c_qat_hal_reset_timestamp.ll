; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_reset_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_reset_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }

@MISC_CONTROL = common dso_local global i32 0, align 4
@MC_TIMESTAMP_ENABLE = common dso_local global i32 0, align 4
@TIMESTAMP_LOW = common dso_local global i32 0, align 4
@TIMESTAMP_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*)* @qat_hal_reset_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_hal_reset_timestamp(%struct.icp_qat_fw_loader_handle* %0) #0 {
  %2 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %2, align 8
  %5 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %6 = load i32, i32* @MISC_CONTROL, align 4
  %7 = call i32 @GET_GLB_CSR(%struct.icp_qat_fw_loader_handle* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MC_TIMESTAMP_ENABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %14 = load i32, i32* @MISC_CONTROL, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MC_TIMESTAMP_ENABLE, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @SET_GLB_CSR(%struct.icp_qat_fw_loader_handle* %13, i32 %14, i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  store i8 0, i8* %4, align 1
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %25 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %23, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %33 = load i8, i8* %4, align 1
  %34 = load i32, i32* @TIMESTAMP_LOW, align 4
  %35 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %32, i8 zeroext %33, i32 %34, i32 0)
  %36 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %37 = load i8, i8* %4, align 1
  %38 = load i32, i32* @TIMESTAMP_HIGH, align 4
  %39 = call i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle* %36, i8 zeroext %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %31
  %41 = load i8, i8* %4, align 1
  %42 = add i8 %41, 1
  store i8 %42, i8* %4, align 1
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %2, align 8
  %45 = load i32, i32* @MISC_CONTROL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @MC_TIMESTAMP_ENABLE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @SET_GLB_CSR(%struct.icp_qat_fw_loader_handle* %44, i32 %45, i32 %48)
  ret void
}

declare dso_local i32 @GET_GLB_CSR(%struct.icp_qat_fw_loader_handle*, i32) #1

declare dso_local i32 @SET_GLB_CSR(%struct.icp_qat_fw_loader_handle*, i32, i32) #1

declare dso_local i32 @qat_hal_wr_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
