; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_tegra_bpmp_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_tegra_bpmp_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.dentry = type { i32 }

@SZ_256K = common dso_local global i64 0, align 8
@MRQ_DEBUGFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bpmp\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_bpmp_init_debugfs(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_bpmp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %3, align 8
  %10 = load i64, i64* @SZ_256K, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %12 = load i32, i32* @MRQ_DEBUGFS, align 4
  %13 = call i32 @tegra_bpmp_mrq_is_supported(%struct.tegra_bpmp* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.dentry* %17, %struct.dentry** %9, align 8
  %18 = load %struct.dentry*, %struct.dentry** %9, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %67

23:                                               ; preds = %16
  %24 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @GFP_DMA32, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @dma_alloc_coherent(i32 %26, i64 %27, i32* %4, i32 %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %59

37:                                               ; preds = %23
  %38 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @mrq_debugfs_dumpdir(%struct.tegra_bpmp* %38, i32 %39, i64 %40, i64* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %51

45:                                               ; preds = %37
  %46 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.dentry*, %struct.dentry** %9, align 8
  %50 = call i32 @create_debugfs_mirror(%struct.tegra_bpmp* %46, i8* %47, i64 %48, %struct.dentry* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %45, %44
  %52 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dma_free_coherent(i32 %54, i64 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %34
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.dentry*, %struct.dentry** %9, align 8
  %64 = call i32 @debugfs_remove(%struct.dentry* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %20, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @tegra_bpmp_mrq_is_supported(%struct.tegra_bpmp*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @mrq_debugfs_dumpdir(%struct.tegra_bpmp*, i32, i64, i64*) #1

declare dso_local i32 @create_debugfs_mirror(%struct.tegra_bpmp*, i8*, i64, %struct.dentry*) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i32) #1

declare dso_local i32 @debugfs_remove(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
