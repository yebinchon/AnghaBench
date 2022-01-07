; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_pool_lli_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_pool_lli_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.d40_desc = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64, i32*, i8* }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.TYPE_5__ = type { i8*, i64 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_chan*, %struct.d40_desc*, i32)* @d40_pool_lli_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_pool_lli_alloc(%struct.d40_chan* %0, %struct.d40_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d40_chan*, align 8
  %6 = alloca %struct.d40_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.d40_chan* %0, %struct.d40_chan** %5, align 8
  store %struct.d40_desc* %1, %struct.d40_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.d40_chan*, %struct.d40_chan** %5, align 8
  %12 = call i32 @chan_is_logical(%struct.d40_chan* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %17

16:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %22 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %26 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 8, i32* %27, align 8
  %28 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %29 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  br label %61

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, 2
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %37 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %40 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @GFP_NOWAIT, align 4
  %46 = call i8* @kmalloc(i32 %44, i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %50 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32* %48, i32** %51, align 8
  %52 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %53 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %31
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %148

60:                                               ; preds = %31
  br label %61

61:                                               ; preds = %60, %20
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i8* @PTR_ALIGN(i8* %65, i32 %66)
  %68 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %69 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %72 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %74, i64 %76
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %80 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %83 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %147

85:                                               ; preds = %61
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i8* @PTR_ALIGN(i8* %86, i32 %87)
  %89 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %90 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  %92 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %93 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr i8, i8* %95, i64 %97
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %101 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  %103 = load %struct.d40_chan*, %struct.d40_chan** %5, align 8
  %104 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %109 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %113 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DMA_TO_DEVICE, align 4
  %117 = call i64 @dma_map_single(i32 %107, i8* %111, i32 %115, i32 %116)
  %118 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %119 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i64 %117, i64* %120, align 8
  %121 = load %struct.d40_chan*, %struct.d40_chan** %5, align 8
  %122 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %127 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @dma_mapping_error(i32 %125, i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %85
  %133 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %134 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @kfree(i32* %136)
  %138 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %139 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  store i32* null, i32** %140, align 8
  %141 = load %struct.d40_desc*, %struct.d40_desc** %6, align 8
  %142 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %148

146:                                              ; preds = %85
  br label %147

147:                                              ; preds = %146, %64
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %132, %57
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @chan_is_logical(%struct.d40_chan*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i64 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
