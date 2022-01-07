; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_convert_abs_to_rel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_convert_abs_to_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CTX_ENABLES = common dso_local global i32 0, align 4
@CE_INUSE_CONTEXTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i16, i16*, i8*)* @qat_hal_convert_abs_to_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_convert_abs_to_rel(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i16 zeroext %2, i16* %3, i8* %4) #0 {
  %6 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i16*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %6, align 8
  store i8 %1, i8* %7, align 1
  store i16 %2, i16* %8, align 2
  store i16* %3, i16** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %6, align 8
  %13 = load i8, i8* %7, align 1
  %14 = load i32, i32* @CTX_ENABLES, align 4
  %15 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %12, i8 zeroext %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @CE_INUSE_CONTEXTS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load i16, i16* %8, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 31
  %24 = trunc i32 %23 to i16
  %25 = load i16*, i16** %9, align 8
  store i16 %24, i16* %25, align 2
  %26 = load i16, i16* %8, align 2
  %27 = zext i16 %26 to i32
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 6
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %10, align 8
  store i8 %30, i8* %31, align 1
  br label %44

32:                                               ; preds = %5
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 15
  %36 = trunc i32 %35 to i16
  %37 = load i16*, i16** %9, align 8
  store i16 %36, i16* %37, align 2
  %38 = load i16, i16* %8, align 2
  %39 = zext i16 %38 to i32
  %40 = ashr i32 %39, 4
  %41 = and i32 %40, 7
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %10, align 8
  store i8 %42, i8* %43, align 1
  br label %44

44:                                               ; preds = %32, %20
  ret i32 0
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
