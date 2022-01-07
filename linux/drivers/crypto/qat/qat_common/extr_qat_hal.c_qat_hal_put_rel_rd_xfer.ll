; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_put_rel_rd_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_put_rel_rd_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@CTX_ENABLES = common dso_local global i32 0, align 4
@CE_INUSE_CONTEXTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"QAT: bad 4-ctx mode,ctx=0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i8, i32, i16, i32)* @qat_hal_put_rel_rd_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_put_rel_rd_xfer(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i16 16, i16* %18, align 2
  %19 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %20 = load i8, i8* %9, align 1
  %21 = load i32, i32* @CTX_ENABLES, align 4
  %22 = call i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle* %19, i8 zeroext %20, i32 %21)
  store i32 %22, i32* %16, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @CE_INUSE_CONTEXTS, align 4
  %24 = load i32, i32* %16, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %6
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8, i8* %10, align 1
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 zeroext %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %78

37:                                               ; preds = %27
  store i16 31, i16* %17, align 2
  store i16 32, i16* %18, align 2
  br label %39

38:                                               ; preds = %6
  store i16 15, i16* %17, align 2
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i16, i16* %12, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %17, align 2
  %43 = zext i16 %42 to i32
  %44 = xor i32 %43, -1
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %78

50:                                               ; preds = %39
  %51 = load i16, i16* %12, align 2
  %52 = zext i16 %51 to i32
  %53 = load i8, i8* %10, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 5
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %73 [
    i32 129, label %58
    i32 128, label %58
    i32 131, label %64
    i32 130, label %64
  ]

58:                                               ; preds = %50, %50
  %59 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %60 = load i8, i8* %9, align 1
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @SET_AE_XFER(%struct.icp_qat_fw_loader_handle* %59, i8 zeroext %60, i32 %61, i32 %62)
  br label %76

64:                                               ; preds = %50, %50
  %65 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %66 = load i8, i8* %9, align 1
  %67 = load i32, i32* %15, align 4
  %68 = load i16, i16* %18, align 2
  %69 = zext i16 %68 to i32
  %70 = add i32 %67, %69
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @SET_AE_XFER(%struct.icp_qat_fw_loader_handle* %65, i8 zeroext %66, i32 %70, i32 %71)
  br label %76

73:                                               ; preds = %50
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %73, %64, %58
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %47, %32
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @qat_hal_rd_ae_csr(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @pr_err(i8*, i8 zeroext) #1

declare dso_local i32 @SET_AE_XFER(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
