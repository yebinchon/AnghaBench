; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-v0-debugfs.c_dw_edma_debugfs_create_x32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-v0-debugfs.c_dw_edma_debugfs_create_x32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debugfs_entries = type { i32, i32 }
%struct.dentry = type { i32 }

@fops_x32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.debugfs_entries*, i32, %struct.dentry*)* @dw_edma_debugfs_create_x32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_edma_debugfs_create_x32(%struct.debugfs_entries* %0, i32 %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.debugfs_entries*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.debugfs_entries* %0, %struct.debugfs_entries** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %30, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.debugfs_entries*, %struct.debugfs_entries** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %13, i64 %15
  %17 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = load %struct.debugfs_entries*, %struct.debugfs_entries** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %20, i64 %22
  %24 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @debugfs_create_file_unsafe(i32 %18, i32 292, %struct.dentry* %19, i32 %25, i32* @fops_x32)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %12
  br label %33

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

33:                                               ; preds = %28, %8
  ret void
}

declare dso_local i32 @debugfs_create_file_unsafe(i32, i32, %struct.dentry*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
