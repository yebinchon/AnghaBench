; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_fill_type2_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_fill_type2_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_desc = type { i32, i32, i32, %struct.omap_sg* }
%struct.omap_sg = type { i32, i32, i32, i32, i32, i32, %struct.omap_type2_desc* }
%struct.omap_type2_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CICR_BLOCK_IE = common dso_local global i32 0, align 4
@DESC_NXT_DV_REFRESH = common dso_local global i32 0, align 4
@DESC_NXT_SV_REUSE = common dso_local global i32 0, align 4
@DESC_NXT_SV_REFRESH = common dso_local global i32 0, align 4
@DESC_NXT_DV_REUSE = common dso_local global i32 0, align 4
@DESC_NTYPE_TYPE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_desc*, i32, i32, i32)* @omap_dma_fill_type2_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dma_fill_type2_desc(%struct.omap_desc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.omap_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_sg*, align 8
  %10 = alloca %struct.omap_type2_desc*, align 8
  store %struct.omap_desc* %0, %struct.omap_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.omap_desc*, %struct.omap_desc** %5, align 8
  %12 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %11, i32 0, i32 3
  %13 = load %struct.omap_sg*, %struct.omap_sg** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %13, i64 %15
  store %struct.omap_sg* %16, %struct.omap_sg** %9, align 8
  %17 = load %struct.omap_sg*, %struct.omap_sg** %9, align 8
  %18 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %17, i32 0, i32 6
  %19 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %18, align 8
  store %struct.omap_type2_desc* %19, %struct.omap_type2_desc** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.omap_sg*, %struct.omap_sg** %9, align 8
  %24 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.omap_desc*, %struct.omap_desc** %5, align 8
  %27 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %26, i32 0, i32 3
  %28 = load %struct.omap_sg*, %struct.omap_sg** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %28, i64 %31
  %33 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %32, i32 0, i32 6
  %34 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %33, align 8
  %35 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %34, i32 0, i32 0
  store i32 %25, i32* %35, align 4
  br label %36

36:                                               ; preds = %22, %4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %41 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %40, i32 0, i32 0
  store i32 -4, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.omap_sg*, %struct.omap_sg** %9, align 8
  %44 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %47 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.omap_sg*, %struct.omap_sg** %9, align 8
  %49 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %52 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.omap_sg*, %struct.omap_sg** %9, align 8
  %54 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 65535
  %57 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %58 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.omap_desc*, %struct.omap_desc** %5, align 8
  %60 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %63 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %42
  %67 = load i32, i32* @CICR_BLOCK_IE, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %70 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %42
  %74 = load i32, i32* %7, align 4
  switch i32 %74, label %137 [
    i32 129, label %75
    i32 128, label %106
  ]

75:                                               ; preds = %73
  %76 = load %struct.omap_sg*, %struct.omap_sg** %9, align 8
  %77 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %80 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.omap_desc*, %struct.omap_desc** %5, align 8
  %82 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %85 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.omap_sg*, %struct.omap_sg** %9, align 8
  %87 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %90 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.omap_desc*, %struct.omap_desc** %5, align 8
  %92 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %95 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DESC_NXT_DV_REFRESH, align 4
  %97 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %98 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @DESC_NXT_SV_REUSE, align 4
  %102 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %103 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %138

106:                                              ; preds = %73
  %107 = load %struct.omap_desc*, %struct.omap_desc** %5, align 8
  %108 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %111 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = load %struct.omap_sg*, %struct.omap_sg** %9, align 8
  %113 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %116 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.omap_desc*, %struct.omap_desc** %5, align 8
  %118 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %121 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.omap_sg*, %struct.omap_sg** %9, align 8
  %123 = getelementptr inbounds %struct.omap_sg, %struct.omap_sg* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %126 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @DESC_NXT_SV_REFRESH, align 4
  %128 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %129 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @DESC_NXT_DV_REUSE, align 4
  %133 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %134 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %138

137:                                              ; preds = %73
  br label %144

138:                                              ; preds = %106, %75
  %139 = load i32, i32* @DESC_NTYPE_TYPE2, align 4
  %140 = load %struct.omap_type2_desc*, %struct.omap_type2_desc** %10, align 8
  %141 = getelementptr inbounds %struct.omap_type2_desc, %struct.omap_type2_desc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %137
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
