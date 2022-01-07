; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_find_panel_sequence_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_find_panel_sequence_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdb_mipi_sequence = type { i64*, i32 }

@MAX_MIPI_CONFIGURATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid sequence block (header)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid sequence block\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Sequence block detected but no valid configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.bdb_mipi_sequence*, i64, i32*)* @find_panel_sequence_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @find_panel_sequence_block(%struct.bdb_mipi_sequence* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.bdb_mipi_sequence*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bdb_mipi_sequence* %0, %struct.bdb_mipi_sequence** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %5, align 8
  %16 = call i32 @get_blocksize(%struct.bdb_mipi_sequence* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %5, align 8
  %18 = getelementptr inbounds %struct.bdb_mipi_sequence, %struct.bdb_mipi_sequence* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64* %20, i64** %9, align 8
  %21 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %5, align 8
  %22 = getelementptr inbounds %struct.bdb_mipi_sequence, %struct.bdb_mipi_sequence* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 3
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 5, i32 3
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %5, align 8
  %28 = getelementptr inbounds %struct.bdb_mipi_sequence, %struct.bdb_mipi_sequence* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 4
  store i64* %33, i64** %9, align 8
  br label %34

34:                                               ; preds = %31, %3
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %105, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @MAX_MIPI_CONFIGURATIONS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  br i1 %44, label %45, label %108

45:                                               ; preds = %43
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i64* null, i64** %4, align 8
  br label %110

53:                                               ; preds = %45
  %54 = load i64*, i64** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %10, align 8
  %59 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %5, align 8
  %60 = getelementptr inbounds %struct.bdb_mipi_sequence, %struct.bdb_mipi_sequence* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 3
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load i64*, i64** %9, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = bitcast i64* %68 to i32*
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  br label %79

71:                                               ; preds = %53
  %72 = load i64*, i64** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %71, %63
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i64* null, i64** %4, align 8
  br label %110

90:                                               ; preds = %79
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i64*, i64** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64* %100, i64** %4, align 8
  br label %110

101:                                              ; preds = %90
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %35

108:                                              ; preds = %43
  %109 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i64* null, i64** %4, align 8
  br label %110

110:                                              ; preds = %108, %94, %88, %51
  %111 = load i64*, i64** %4, align 8
  ret i64* %111
}

declare dso_local i32 @get_blocksize(%struct.bdb_mipi_sequence*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
