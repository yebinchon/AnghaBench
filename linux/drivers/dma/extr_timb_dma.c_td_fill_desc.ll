; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_timb_dma.c_td_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timb_dma_chan = type { i32 }
%struct.scatterlist = type { i32 }

@USHRT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Too big sg element\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Incorrect length: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"desc: %p, addr: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timb_dma_chan*, i32*, %struct.scatterlist*, i32)* @td_fill_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td_fill_desc(%struct.timb_dma_chan* %0, i32* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.timb_dma_chan*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  store %struct.timb_dma_chan* %0, %struct.timb_dma_chan** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %11 = call i32 @sg_dma_len(%struct.scatterlist* %10)
  %12 = load i32, i32* @USHRT_MAX, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %6, align 8
  %16 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %15, i32 0, i32 0
  %17 = call i32 @chan2dev(i32* %16)
  %18 = call i32 (i32, i8*, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %90

21:                                               ; preds = %4
  %22 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %23 = call i32 @sg_dma_len(%struct.scatterlist* %22)
  %24 = sext i32 %23 to i64
  %25 = urem i64 %24, 4
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %6, align 8
  %29 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %28, i32 0, i32 0
  %30 = call i32 @chan2dev(i32* %29)
  %31 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %32 = call i32 @sg_dma_len(%struct.scatterlist* %31)
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %90

36:                                               ; preds = %21
  %37 = load %struct.timb_dma_chan*, %struct.timb_dma_chan** %6, align 8
  %38 = getelementptr inbounds %struct.timb_dma_chan, %struct.timb_dma_chan* %37, i32 0, i32 0
  %39 = call i32 @chan2dev(i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %42 = call i32 @sg_dma_address(%struct.scatterlist* %41)
  %43 = sext i32 %42 to i64
  %44 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %40, i64 %43)
  %45 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %46 = call i32 @sg_dma_address(%struct.scatterlist* %45)
  %47 = ashr i32 %46, 24
  %48 = and i32 %47, 255
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %52 = call i32 @sg_dma_address(%struct.scatterlist* %51)
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %58 = call i32 @sg_dma_address(%struct.scatterlist* %57)
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %64 = call i32 @sg_dma_address(%struct.scatterlist* %63)
  %65 = ashr i32 %64, 0
  %66 = and i32 %65, 255
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %70 = call i32 @sg_dma_len(%struct.scatterlist* %69)
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %76 = call i32 @sg_dma_len(%struct.scatterlist* %75)
  %77 = ashr i32 %76, 0
  %78 = and i32 %77, 255
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 2, i32 0
  %87 = or i32 33, %86
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %36, %27, %14
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*, i64) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
