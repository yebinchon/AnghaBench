; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_get_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_get_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_channel = type { i32, i32, i32, i32, %struct.sdma_engine* }
%struct.sdma_engine = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_channel*, i32)* @sdma_get_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_get_pc(%struct.sdma_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdma_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdma_channel* %0, %struct.sdma_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %11 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %10, i32 0, i32 4
  %12 = load %struct.sdma_engine*, %struct.sdma_engine** %11, align 8
  store %struct.sdma_engine* %12, %struct.sdma_engine** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %14 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %16 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %18 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %17, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %20 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %19, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %182 [
    i32 139, label %22
    i32 144, label %28
    i32 141, label %39
    i32 129, label %50
    i32 128, label %61
    i32 148, label %72
    i32 146, label %83
    i32 142, label %83
    i32 132, label %83
    i32 135, label %83
    i32 131, label %94
    i32 130, label %105
    i32 138, label %105
    i32 134, label %105
    i32 145, label %105
    i32 143, label %105
    i32 136, label %105
    i32 150, label %116
    i32 149, label %132
    i32 137, label %148
    i32 147, label %159
    i32 133, label %165
    i32 140, label %176
  ]

22:                                               ; preds = %2
  %23 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %24 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  br label %183

28:                                               ; preds = %2
  %29 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %30 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %35 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %183

39:                                               ; preds = %2
  %40 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %41 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %46 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %183

50:                                               ; preds = %2
  %51 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %52 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %57 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  br label %183

61:                                               ; preds = %2
  %62 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %63 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %68 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %183

72:                                               ; preds = %2
  %73 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %74 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %79 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %7, align 4
  br label %183

83:                                               ; preds = %2, %2, %2, %2
  %84 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %85 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  %89 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %90 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %7, align 4
  br label %183

94:                                               ; preds = %2
  %95 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %96 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  %100 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %101 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 13
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  br label %183

105:                                              ; preds = %2, %2, %2, %2, %2, %2
  %106 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %107 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 14
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %6, align 4
  %111 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %112 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %7, align 4
  br label %183

116:                                              ; preds = %2
  %117 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %118 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 15
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %6, align 4
  %122 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %123 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %7, align 4
  %127 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %128 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 16
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %8, align 4
  br label %183

132:                                              ; preds = %2
  %133 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %134 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 14
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %6, align 4
  %138 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %139 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %7, align 4
  %143 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %144 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 16
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %8, align 4
  br label %183

148:                                              ; preds = %2
  %149 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %150 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 17
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %6, align 4
  %154 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %155 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 18
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %7, align 4
  br label %183

159:                                              ; preds = %2
  %160 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %161 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 19
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %6, align 4
  br label %183

165:                                              ; preds = %2
  %166 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %167 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 20
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %6, align 4
  %171 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %172 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 21
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %7, align 4
  br label %183

176:                                              ; preds = %2
  %177 = load %struct.sdma_engine*, %struct.sdma_engine** %5, align 8
  %178 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 22
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %7, align 4
  br label %183

182:                                              ; preds = %2
  br label %183

183:                                              ; preds = %182, %176, %165, %159, %148, %132, %116, %105, %94, %83, %72, %61, %50, %39, %28, %22
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %186 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %189 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %192 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %195 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
