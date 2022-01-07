; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-v0-debugfs.c_dw_edma_debugfs_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-v0-debugfs.c_dw_edma_debugfs_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debugfs_entries = type { i32 }
%struct.dentry = type { i32 }

@ctrl_data_arb_prior = common dso_local global i32 0, align 4
@ctrl = common dso_local global i32 0, align 4
@REGISTERS_STR = common dso_local global i32 0, align 4
@base_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dw_edma_debugfs_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_edma_debugfs_regs() #0 {
  %1 = alloca [2 x %struct.debugfs_entries], align 4
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [2 x %struct.debugfs_entries], [2 x %struct.debugfs_entries]* %1, i64 0, i64 0
  %5 = load i32, i32* @ctrl_data_arb_prior, align 4
  %6 = call i32 @REGISTER(i32 %5)
  %7 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %4, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %4, i64 1
  %9 = load i32, i32* @ctrl, align 4
  %10 = call i32 @REGISTER(i32 %9)
  %11 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @REGISTERS_STR, align 4
  %13 = load i32, i32* @base_dir, align 4
  %14 = call %struct.dentry* @debugfs_create_dir(i32 %12, i32 %13)
  store %struct.dentry* %14, %struct.dentry** %2, align 8
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = icmp ne %struct.dentry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %29

18:                                               ; preds = %0
  %19 = getelementptr inbounds [2 x %struct.debugfs_entries], [2 x %struct.debugfs_entries]* %1, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(%struct.debugfs_entries* %19)
  store i32 %20, i32* %3, align 4
  %21 = getelementptr inbounds [2 x %struct.debugfs_entries], [2 x %struct.debugfs_entries]* %1, i64 0, i64 0
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.dentry*, %struct.dentry** %2, align 8
  %24 = call i32 @dw_edma_debugfs_create_x32(%struct.debugfs_entries* %21, i32 %22, %struct.dentry* %23)
  %25 = load %struct.dentry*, %struct.dentry** %2, align 8
  %26 = call i32 @dw_edma_debugfs_regs_wr(%struct.dentry* %25)
  %27 = load %struct.dentry*, %struct.dentry** %2, align 8
  %28 = call i32 @dw_edma_debugfs_regs_rd(%struct.dentry* %27)
  br label %29

29:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @REGISTER(i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.debugfs_entries*) #1

declare dso_local i32 @dw_edma_debugfs_create_x32(%struct.debugfs_entries*, i32, %struct.dentry*) #1

declare dso_local i32 @dw_edma_debugfs_regs_wr(%struct.dentry*) #1

declare dso_local i32 @dw_edma_debugfs_regs_rd(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
