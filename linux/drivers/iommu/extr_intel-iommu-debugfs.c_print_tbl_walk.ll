; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_print_tbl_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu-debugfs.c_print_tbl_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.tbl_walk* }
%struct.tbl_walk = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"%02x:%02x.%x\090x%016llx:0x%016llx\090x%016llx:0x%016llx\09\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%-6d\090x%016llx:0x%016llx:0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @print_tbl_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_tbl_walk(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.tbl_walk*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %4 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %5 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %4, i32 0, i32 0
  %6 = load %struct.tbl_walk*, %struct.tbl_walk** %5, align 8
  store %struct.tbl_walk* %6, %struct.tbl_walk** %3, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %8 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %9 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %12 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @PCI_SLOT(i32 %13)
  %15 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %16 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PCI_FUNC(i32 %17)
  %19 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %20 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %25 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %30 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %35 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %18, i32 %23, i32 %28, i32 %33, i32 %38)
  %40 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %41 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %1
  %45 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %46 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 0, i32 0, i32 0)
  br label %74

47:                                               ; preds = %1
  %48 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %49 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %50 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %53 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %60 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tbl_walk*, %struct.tbl_walk** %3, align 8
  %67 = getelementptr inbounds %struct.tbl_walk, %struct.tbl_walk* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %58, i32 %65, i32 %72)
  br label %74

74:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
