; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_hw_error_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_hw_error_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip = type { %struct.hisi_qm }
%struct.hisi_qm = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QM_HW_V1 = common dso_local global i64 0, align 8
@HZIP_CORE_INT_DISABLE = common dso_local global i32 0, align 4
@HZIP_CORE_INT_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"ZIP v%d does not support hw error handle\0A\00", align 1
@HZIP_CORE_INT_SOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_zip*, i32)* @hisi_zip_hw_error_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_zip_hw_error_set_state(%struct.hisi_zip* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_zip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_qm*, align 8
  store %struct.hisi_zip* %0, %struct.hisi_zip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %6, i32 0, i32 0
  store %struct.hisi_qm* %7, %struct.hisi_qm** %5, align 8
  %8 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %9 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QM_HW_V1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @HZIP_CORE_INT_DISABLE, align 4
  %15 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HZIP_CORE_INT_MASK, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %22 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %26 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %57

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32, i32* @HZIP_CORE_INT_DISABLE, align 4
  %34 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %35 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HZIP_CORE_INT_SOURCE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %33, i64 %39)
  %41 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %42 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HZIP_CORE_INT_MASK, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  br label %57

48:                                               ; preds = %29
  %49 = load i32, i32* @HZIP_CORE_INT_DISABLE, align 4
  %50 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %51 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HZIP_CORE_INT_MASK, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %49, i64 %55)
  br label %57

57:                                               ; preds = %13, %48, %32
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
