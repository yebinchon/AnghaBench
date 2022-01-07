; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_debugfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_debugfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, %struct.file* }
%struct.file = type { i32 }
%struct.inode = type { %struct.tegra_bpmp* }
%struct.tegra_bpmp = type { i32 }

@SZ_256 = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @debugfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.tegra_bpmp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [256 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %20, i32 0, i32 1
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %6, align 8
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = call %struct.inode* @file_inode(%struct.file* %23)
  store %struct.inode* %24, %struct.inode** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %26, align 8
  store %struct.tegra_bpmp* %27, %struct.tegra_bpmp** %8, align 8
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* @SZ_256, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %8, align 8
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %35 = call i8* @get_filename(%struct.tegra_bpmp* %32, %struct.file* %33, i8* %34, i32 256)
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %106

41:                                               ; preds = %2
  %42 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %8, align 8
  %43 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load i32, i32* @GFP_DMA32, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @dma_alloc_coherent(i32 %44, i64 %45, i32* %14, i32 %48)
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %106

55:                                               ; preds = %41
  %56 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %8, align 8
  %57 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load i32, i32* @GFP_DMA32, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @dma_alloc_coherent(i32 %58, i64 %59, i32* %13, i32 %62)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %19, align 4
  br label %97

69:                                               ; preds = %55
  %70 = load i8*, i8** %16, align 8
  %71 = call i64 @strlen(i8* %70)
  store i64 %71, i64* %17, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @strncpy(i8* %72, i8* %73, i64 %74)
  %76 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i64, i64* %17, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @mrq_debugfs_read(%struct.tegra_bpmp* %76, i32 %77, i64 %78, i32 %79, i64 %80, i64* %18)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %69
  %85 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i64, i64* %18, align 8
  %88 = call i32 @seq_write(%struct.seq_file* %85, i8* %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %69
  %90 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %8, align 8
  %91 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %9, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @dma_free_coherent(i32 %92, i64 %93, i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %66
  %98 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %8, align 8
  %99 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %10, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @dma_free_coherent(i32 %100, i64 %101, i8* %102, i32 %103)
  %105 = load i32, i32* %19, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %97, %52, %38
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i8* @get_filename(%struct.tegra_bpmp*, %struct.file*, i8*, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @mrq_debugfs_read(%struct.tegra_bpmp*, i32, i64, i32, i64, i64*) #1

declare dso_local i32 @seq_write(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
