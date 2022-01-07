; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_debugfs.c_amd_iommu_debugfs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_debugfs.c_amd_iommu_debugfs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i8* }

@MAX_NAME_LEN = common dso_local global i32 0, align 4
@amd_iommu_debugfs_lock = common dso_local global i32 0, align 4
@amd_iommu_debugfs = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"amd\00", align 1
@iommu_debugfs_dir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"iommu%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd_iommu_debugfs_setup(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %5 = load i32, i32* @MAX_NAME_LEN, align 4
  %6 = add nsw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32 @mutex_lock(i32* @amd_iommu_debugfs_lock)
  %11 = load i8*, i8** @amd_iommu_debugfs, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** @iommu_debugfs_dir, align 8
  %15 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i8* %15, i8** @amd_iommu_debugfs, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = call i32 @mutex_unlock(i32* @amd_iommu_debugfs_lock)
  %18 = load i32, i32* @MAX_NAME_LEN, align 4
  %19 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %20 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snprintf(i8* %9, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** @amd_iommu_debugfs, align 8
  %24 = call i8* @debugfs_create_dir(i8* %9, i8* %23)
  %25 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %26 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %27)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
