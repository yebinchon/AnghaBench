; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unref_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unref_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { i32, i32, %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_desc* }
%struct.nvkm_vmm_pt = type { i64*, i32* }
%struct.nvkm_vmm_desc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)* }

@SPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm_iter*, i32, i32, i32)* @nvkm_vmm_unref_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_unref_ptes(%struct.nvkm_vmm_iter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_vmm_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_vmm_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvkm_vmm_pt*, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %14, i32 0, i32 3
  %16 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %15, align 8
  store %struct.nvkm_vmm_desc* %16, %struct.nvkm_vmm_desc** %10, align 8
  %17 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %10, align 8
  %18 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SPT, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %23, i32 0, i32 2
  %25 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %25, i64 0
  %27 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %26, align 8
  store %struct.nvkm_vmm_pt* %27, %struct.nvkm_vmm_pt** %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %4
  %31 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %10, align 8
  %32 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %34, align 8
  %36 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %37 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %12, align 8
  %40 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 %35(i32 %38, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %30
  %52 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %53 = call i32 @nvkm_vmm_flush_mark(%struct.nvkm_vmm_iter* %52)
  %54 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %55 = call i32 @nvkm_vmm_flush(%struct.nvkm_vmm_iter* %54)
  %56 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %10, align 8
  %57 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %59, align 8
  %61 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %62 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %12, align 8
  %65 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 %60(i32 %63, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %51, %30
  br label %75

75:                                               ; preds = %74, %4
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %12, align 8
  %79 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, %77
  store i64 %85, i64* %83, align 8
  %86 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %10, align 8
  %87 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SPT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %75
  %92 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %12, align 8
  %93 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %12, align 8
  %100 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %98, %91
  %106 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %107 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %12, align 8
  %108 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %10, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @nvkm_vmm_unref_sptes(%struct.nvkm_vmm_iter* %106, %struct.nvkm_vmm_pt* %107, %struct.nvkm_vmm_desc* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %98, %75
  %113 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %12, align 8
  %114 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %112
  %122 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %123 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %127 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %10, align 8
  %128 = call i32 @nvkm_vmm_desc_type(%struct.nvkm_vmm_desc* %127)
  %129 = call i32 @TRA(%struct.nvkm_vmm_iter* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %128)
  %130 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %131 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %131, align 8
  %134 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %135 = call i32 @nvkm_vmm_unref_pdes(%struct.nvkm_vmm_iter* %134)
  store i32 0, i32* %5, align 4
  br label %137

136:                                              ; preds = %112
  store i32 1, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %121
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @nvkm_vmm_flush_mark(%struct.nvkm_vmm_iter*) #1

declare dso_local i32 @nvkm_vmm_flush(%struct.nvkm_vmm_iter*) #1

declare dso_local i32 @nvkm_vmm_unref_sptes(%struct.nvkm_vmm_iter*, %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_desc*, i32, i32) #1

declare dso_local i32 @TRA(%struct.nvkm_vmm_iter*, i8*, i32) #1

declare dso_local i32 @nvkm_vmm_desc_type(%struct.nvkm_vmm_desc*) #1

declare dso_local i32 @nvkm_vmm_unref_pdes(%struct.nvkm_vmm_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
