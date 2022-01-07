; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_hw_error_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_hw_error_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HZIP_CORE_INT_STATUS = common dso_local global i64 0, align 8
@HZIP_CORE_INT_SOURCE = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip*)* @hisi_zip_hw_error_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_hw_error_handle(%struct.hisi_zip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_zip*, align 8
  %4 = alloca i64, align 8
  store %struct.hisi_zip* %0, %struct.hisi_zip** %3, align 8
  %5 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %6 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HZIP_CORE_INT_STATUS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @readl(i64 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @hisi_zip_log_hw_error(%struct.hisi_zip* %15, i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.hisi_zip*, %struct.hisi_zip** %3, align 8
  %20 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HZIP_CORE_INT_SOURCE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i64 %18, i64 %24)
  %26 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %14
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @hisi_zip_log_hw_error(%struct.hisi_zip*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
