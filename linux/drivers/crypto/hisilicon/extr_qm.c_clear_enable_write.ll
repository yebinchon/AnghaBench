; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_clear_enable_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_clear_enable_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debugfs_file = type { i32 }
%struct.hisi_qm = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@QM_DFX_CNT_CLR_CE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debugfs_file*, i32)* @clear_enable_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_enable_write(%struct.debugfs_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.debugfs_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_qm*, align 8
  store %struct.debugfs_file* %0, %struct.debugfs_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.debugfs_file*, %struct.debugfs_file** %4, align 8
  %8 = call %struct.hisi_qm* @file_to_qm(%struct.debugfs_file* %7)
  store %struct.hisi_qm* %8, %struct.hisi_qm** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %17 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QM_DFX_CNT_CLR_CE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.hisi_qm* @file_to_qm(%struct.debugfs_file*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
