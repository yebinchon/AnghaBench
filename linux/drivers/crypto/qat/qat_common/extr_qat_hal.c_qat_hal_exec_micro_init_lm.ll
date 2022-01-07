; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_exec_micro_init_lm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_hal.c_qat_hal_exec_micro_init_lm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }

@ICP_GPA_REL = common dso_local global i32 0, align 4
@ICP_GPB_REL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i8, i8, i32*, i32*, i32)* @qat_hal_exec_micro_init_lm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_hal_exec_micro_init_lm(%struct.icp_qat_fw_loader_handle* %0, i8 zeroext %1, i8 zeroext %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %6
  %24 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %25 = load i8, i8* %9, align 1
  %26 = load i8, i8* %10, align 1
  %27 = load i32, i32* @ICP_GPA_REL, align 4
  %28 = call i32 @qat_hal_rd_rel_reg(%struct.icp_qat_fw_loader_handle* %24, i8 zeroext %25, i8 zeroext %26, i32 %27, i32 0, i32* %15)
  %29 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %30 = load i8, i8* %9, align 1
  %31 = load i8, i8* %10, align 1
  %32 = load i32, i32* @ICP_GPA_REL, align 4
  %33 = call i32 @qat_hal_rd_rel_reg(%struct.icp_qat_fw_loader_handle* %29, i8 zeroext %30, i8 zeroext %31, i32 %32, i32 1, i32* %16)
  %34 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %35 = load i8, i8* %9, align 1
  %36 = load i8, i8* %10, align 1
  %37 = load i32, i32* @ICP_GPA_REL, align 4
  %38 = call i32 @qat_hal_rd_rel_reg(%struct.icp_qat_fw_loader_handle* %34, i8 zeroext %35, i8 zeroext %36, i32 %37, i32 2, i32* %17)
  %39 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %40 = load i8, i8* %9, align 1
  %41 = load i8, i8* %10, align 1
  %42 = load i32, i32* @ICP_GPB_REL, align 4
  %43 = call i32 @qat_hal_rd_rel_reg(%struct.icp_qat_fw_loader_handle* %39, i8 zeroext %40, i8 zeroext %41, i32 %42, i32 0, i32* %18)
  %44 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %45 = load i8, i8* %9, align 1
  %46 = load i8, i8* %10, align 1
  %47 = load i32, i32* @ICP_GPB_REL, align 4
  %48 = call i32 @qat_hal_rd_rel_reg(%struct.icp_qat_fw_loader_handle* %44, i8 zeroext %45, i8 zeroext %46, i32 %47, i32 1, i32* %19)
  %49 = load i32*, i32** %11, align 8
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %23, %6
  %51 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %52 = load i8, i8* %9, align 1
  %53 = load i8, i8* %10, align 1
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul i32 %56, 5
  %58 = call i32 @qat_hal_exec_micro_inst(%struct.icp_qat_fw_loader_handle* %51, i8 zeroext %52, i8 zeroext %53, i32* %54, i32 %55, i32 1, i32 %57, i32* null)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %95

64:                                               ; preds = %50
  %65 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %66 = load i8, i8* %9, align 1
  %67 = load i8, i8* %10, align 1
  %68 = load i32, i32* @ICP_GPA_REL, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @qat_hal_wr_rel_reg(%struct.icp_qat_fw_loader_handle* %65, i8 zeroext %66, i8 zeroext %67, i32 %68, i32 0, i32 %69)
  %71 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %72 = load i8, i8* %9, align 1
  %73 = load i8, i8* %10, align 1
  %74 = load i32, i32* @ICP_GPA_REL, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @qat_hal_wr_rel_reg(%struct.icp_qat_fw_loader_handle* %71, i8 zeroext %72, i8 zeroext %73, i32 %74, i32 1, i32 %75)
  %77 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %78 = load i8, i8* %9, align 1
  %79 = load i8, i8* %10, align 1
  %80 = load i32, i32* @ICP_GPA_REL, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @qat_hal_wr_rel_reg(%struct.icp_qat_fw_loader_handle* %77, i8 zeroext %78, i8 zeroext %79, i32 %80, i32 2, i32 %81)
  %83 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %84 = load i8, i8* %9, align 1
  %85 = load i8, i8* %10, align 1
  %86 = load i32, i32* @ICP_GPB_REL, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @qat_hal_wr_rel_reg(%struct.icp_qat_fw_loader_handle* %83, i8 zeroext %84, i8 zeroext %85, i32 %86, i32 0, i32 %87)
  %89 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %8, align 8
  %90 = load i8, i8* %9, align 1
  %91 = load i8, i8* %10, align 1
  %92 = load i32, i32* @ICP_GPB_REL, align 4
  %93 = load i32, i32* %19, align 4
  %94 = call i32 @qat_hal_wr_rel_reg(%struct.icp_qat_fw_loader_handle* %89, i8 zeroext %90, i8 zeroext %91, i32 %92, i32 1, i32 %93)
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %64, %61
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @qat_hal_rd_rel_reg(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32, i32, i32*) #1

declare dso_local i32 @qat_hal_exec_micro_inst(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @qat_hal_wr_rel_reg(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i8 zeroext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
