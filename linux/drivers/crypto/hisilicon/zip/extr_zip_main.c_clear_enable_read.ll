; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_clear_enable_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_clear_enable_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctrl_debug_file = type { i32 }
%struct.hisi_qm = type { i64 }

@HZIP_SOFT_CTRL_CNT_CLR_CE = common dso_local global i64 0, align 8
@SOFT_CTRL_CNT_CLR_CE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctrl_debug_file*)* @clear_enable_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_enable_read(%struct.ctrl_debug_file* %0) #0 {
  %2 = alloca %struct.ctrl_debug_file*, align 8
  %3 = alloca %struct.hisi_qm*, align 8
  store %struct.ctrl_debug_file* %0, %struct.ctrl_debug_file** %2, align 8
  %4 = load %struct.ctrl_debug_file*, %struct.ctrl_debug_file** %2, align 8
  %5 = call %struct.hisi_qm* @file_to_qm(%struct.ctrl_debug_file* %4)
  store %struct.hisi_qm* %5, %struct.hisi_qm** %3, align 8
  %6 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HZIP_SOFT_CTRL_CNT_CLR_CE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  %12 = load i32, i32* @SOFT_CTRL_CNT_CLR_CE_BIT, align 4
  %13 = and i32 %11, %12
  ret i32 %13
}

declare dso_local %struct.hisi_qm* @file_to_qm(%struct.ctrl_debug_file*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
