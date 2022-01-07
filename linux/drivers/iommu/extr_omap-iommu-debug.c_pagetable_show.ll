; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_pagetable_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_pagetable_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.omap_iommu* }
%struct.omap_iommu = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@iommu_debug_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"L: %8s %8s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"da:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pte:\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"--------------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pagetable_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagetable_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_iommu*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.omap_iommu*, %struct.omap_iommu** %8, align 8
  store %struct.omap_iommu* %9, %struct.omap_iommu** %6, align 8
  %10 = load %struct.omap_iommu*, %struct.omap_iommu** %6, align 8
  %11 = call i64 @is_omap_iommu_detached(%struct.omap_iommu* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = call i32 @mutex_lock(i32* @iommu_debug_lock)
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = call i32 @seq_puts(%struct.seq_file* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = call i32 @dump_ioptable(%struct.seq_file* %22)
  %24 = call i32 @mutex_unlock(i32* @iommu_debug_lock)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @is_omap_iommu_detached(%struct.omap_iommu*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @dump_ioptable(%struct.seq_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
