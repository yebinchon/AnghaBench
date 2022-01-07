; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_log_hw_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_log_hw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_hw_error = type { i32, i64 }
%struct.hisi_zip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@zip_hw_error = common dso_local global %struct.hisi_zip_hw_error* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s [error status=0x%x] found\0A\00", align 1
@HZIP_CORE_INT_STATUS_M_ECC = common dso_local global i32 0, align 4
@HZIP_CORE_SRAM_ECC_ERR_INFO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"hisi-zip multi ecc sram num=0x%x\0A\00", align 1
@SRAM_ECC_ERR_NUM_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"hisi-zip multi ecc sram addr=0x%x\0A\00", align 1
@SRAM_ECC_ERR_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_zip*, i32)* @hisi_zip_log_hw_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_zip_log_hw_error(%struct.hisi_zip* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_zip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_zip_hw_error*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.hisi_zip* %0, %struct.hisi_zip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hisi_zip_hw_error*, %struct.hisi_zip_hw_error** @zip_hw_error, align 8
  store %struct.hisi_zip_hw_error* %8, %struct.hisi_zip_hw_error** %5, align 8
  %9 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %10 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  br label %14

14:                                               ; preds = %62, %2
  %15 = load %struct.hisi_zip_hw_error*, %struct.hisi_zip_hw_error** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_zip_hw_error, %struct.hisi_zip_hw_error* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %14
  %20 = load %struct.hisi_zip_hw_error*, %struct.hisi_zip_hw_error** %5, align 8
  %21 = getelementptr inbounds %struct.hisi_zip_hw_error, %struct.hisi_zip_hw_error* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.hisi_zip_hw_error*, %struct.hisi_zip_hw_error** %5, align 8
  %29 = getelementptr inbounds %struct.hisi_zip_hw_error, %struct.hisi_zip_hw_error* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.hisi_zip_hw_error*, %struct.hisi_zip_hw_error** %5, align 8
  %33 = getelementptr inbounds %struct.hisi_zip_hw_error, %struct.hisi_zip_hw_error* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i32, i32* @HZIP_CORE_INT_STATUS_M_ECC, align 4
  %37 = load %struct.hisi_zip_hw_error*, %struct.hisi_zip_hw_error** %5, align 8
  %38 = getelementptr inbounds %struct.hisi_zip_hw_error, %struct.hisi_zip_hw_error* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %26
  %43 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %44 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HZIP_CORE_SRAM_ECC_ERR_INFO, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SRAM_ECC_ERR_NUM_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = and i32 %53, 255
  %55 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SRAM_ECC_ERR_ADDR_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %42, %26
  br label %62

62:                                               ; preds = %61, %19
  %63 = load %struct.hisi_zip_hw_error*, %struct.hisi_zip_hw_error** %5, align 8
  %64 = getelementptr inbounds %struct.hisi_zip_hw_error, %struct.hisi_zip_hw_error* %63, i32 1
  store %struct.hisi_zip_hw_error* %64, %struct.hisi_zip_hw_error** %5, align 8
  br label %14

65:                                               ; preds = %14
  ret void
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
