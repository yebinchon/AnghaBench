; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_dsgl_walk_add_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_dsgl_walk_add_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsgl_walk = type { i32, i32, %struct.scatterlist*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.scatterlist = type { i32 }

@u32 = common dso_local global i32 0, align 4
@CHCR_DST_SG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsgl_walk*, %struct.scatterlist*, i32, i32)* @dsgl_walk_add_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsgl_walk_add_sg(%struct.dsgl_walk* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dsgl_walk*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dsgl_walk* %0, %struct.dsgl_walk** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.dsgl_walk*, %struct.dsgl_walk** %5, align 8
  %17 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %147

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %25 = icmp ne %struct.scatterlist* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %46

31:                                               ; preds = %29
  %32 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %33 = call i32 @sg_dma_len(%struct.scatterlist* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %38 = call i32 @sg_dma_len(%struct.scatterlist* %37)
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %41 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %42 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %41)
  store %struct.scatterlist* %42, %struct.scatterlist** %6, align 8
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %36
  br label %23

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %117, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %52 = icmp ne %struct.scatterlist* %51, null
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br i1 %54, label %55, label %143

55:                                               ; preds = %53
  %56 = load i32, i32* @u32, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %59 = call i32 @sg_dma_len(%struct.scatterlist* %58)
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @min_t(i32 %56, i32 %57, i32 %61)
  store i32 %62, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %116, %55
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %117

66:                                               ; preds = %63
  %67 = load i32, i32* @u32, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @CHCR_DST_SG_SIZE, align 4
  %70 = call i32 @min_t(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @htons(i32 %71)
  %73 = load %struct.dsgl_walk*, %struct.dsgl_walk** %5, align 8
  %74 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = urem i32 %78, 8
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %72, i32* %81, align 4
  %82 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %83 = call i64 @sg_dma_address(%struct.scatterlist* %82)
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i32 @cpu_to_be64(i64 %89)
  %91 = load %struct.dsgl_walk*, %struct.dsgl_walk** %5, align 8
  %92 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = urem i32 %96, 8
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %90, i32* %99, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sub i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = urem i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %66
  %112 = load %struct.dsgl_walk*, %struct.dsgl_walk** %5, align 8
  %113 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 1
  store %struct.TYPE_2__* %115, %struct.TYPE_2__** %113, align 8
  br label %116

116:                                              ; preds = %111, %66
  br label %63

117:                                              ; preds = %63
  %118 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %119 = load %struct.dsgl_walk*, %struct.dsgl_walk** %5, align 8
  %120 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %119, i32 0, i32 2
  store %struct.scatterlist* %118, %struct.scatterlist** %120, align 8
  %121 = load i32, i32* @u32, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %124 = call i32 @sg_dma_len(%struct.scatterlist* %123)
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i32 @min_t(i32 %121, i32 %122, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = add i32 %127, %128
  %130 = load %struct.dsgl_walk*, %struct.dsgl_walk** %5, align 8
  %131 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @u32, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %135 = call i32 @sg_dma_len(%struct.scatterlist* %134)
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i32 @min_t(i32 %132, i32 %133, i32 %137)
  %139 = load i32, i32* %10, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %141 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %142 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %141)
  store %struct.scatterlist* %142, %struct.scatterlist** %6, align 8
  br label %47

143:                                              ; preds = %53
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.dsgl_walk*, %struct.dsgl_walk** %5, align 8
  %146 = getelementptr inbounds %struct.dsgl_walk, %struct.dsgl_walk* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %21
  ret void
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
