; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_reg_sym.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_init_reg_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { i32 }
%struct.icp_qat_uclo_encapme = type { i32, %struct.icp_qat_uof_init_regsym*, %struct.TYPE_2__* }
%struct.icp_qat_uof_init_regsym = type { i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@ICP_QAT_UCLO_MAX_CTX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"QAT: invalid ctx num = 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"QAT: INIT_EXPR feature not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"QAT: INIT_EXPR_ENDIAN_SWAP feature not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_fw_loader_handle*, i32, %struct.icp_qat_uclo_encapme*)* @qat_uclo_init_reg_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_init_reg_sym(%struct.icp_qat_fw_loader_handle* %0, i32 %1, %struct.icp_qat_uclo_encapme* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.icp_qat_uclo_encapme*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.icp_qat_uof_init_regsym*, align 8
  %11 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.icp_qat_uclo_encapme* %2, %struct.icp_qat_uclo_encapme** %7, align 8
  %12 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %7, align 8
  %13 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ICP_QAT_CTX_MODE(i32 %16)
  %18 = load i64, i64* @ICP_QAT_UCLO_MAX_CTX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i8 -1, i8* %9, align 1
  br label %22

21:                                               ; preds = %3
  store i8 85, i8* %9, align 1
  br label %22

22:                                               ; preds = %21, %20
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %98, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %7, align 8
  %26 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %101

29:                                               ; preds = %23
  %30 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %7, align 8
  %31 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %30, i32 0, i32 1
  %32 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %32, i64 %34
  store %struct.icp_qat_uof_init_regsym* %35, %struct.icp_qat_uof_init_regsym** %10, align 8
  %36 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %10, align 8
  %37 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  %39 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %10, align 8
  %40 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %96 [
    i32 129, label %42
    i32 128, label %55
    i32 131, label %88
    i32 130, label %92
  ]

42:                                               ; preds = %29
  %43 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i8, i8* %9, align 1
  %46 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %10, align 8
  %47 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %10, align 8
  %50 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i16
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @qat_uclo_init_reg(%struct.icp_qat_fw_loader_handle* %43, i32 %44, i8 zeroext %45, i32 %48, i16 zeroext %52, i32 %53)
  br label %97

55:                                               ; preds = %29
  %56 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %10, align 8
  %57 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %55
  %65 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %10, align 8
  %66 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %102

71:                                               ; preds = %55
  %72 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %10, align 8
  %75 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 1, %76
  %78 = trunc i32 %77 to i8
  %79 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %10, align 8
  %80 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.icp_qat_uof_init_regsym*, %struct.icp_qat_uof_init_regsym** %10, align 8
  %83 = getelementptr inbounds %struct.icp_qat_uof_init_regsym, %struct.icp_qat_uof_init_regsym* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i16
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @qat_uclo_init_reg(%struct.icp_qat_fw_loader_handle* %72, i32 %73, i8 zeroext %78, i32 %81, i16 zeroext %85, i32 %86)
  br label %97

88:                                               ; preds = %29
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %102

92:                                               ; preds = %29
  %93 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %102

96:                                               ; preds = %29
  br label %97

97:                                               ; preds = %96, %71, %42
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %23

101:                                              ; preds = %23
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %92, %88, %64
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @ICP_QAT_CTX_MODE(i32) #1

declare dso_local i32 @qat_uclo_init_reg(%struct.icp_qat_fw_loader_handle*, i32, i8 zeroext, i32, i16 zeroext, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
