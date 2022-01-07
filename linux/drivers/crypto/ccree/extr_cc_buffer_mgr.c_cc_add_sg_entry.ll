; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_add_sg_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_add_sg_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.buffer_array = type { i32, i32*, i32*, i32*, i32*, i64**, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"index=%u nents=%u sgl=%pK data_len=0x%08X is_last=%d\0A\00", align 1
@DMA_SGL_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.buffer_array*, i32, %struct.scatterlist*, i32, i32, i32, i64*)* @cc_add_sg_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_add_sg_entry(%struct.device* %0, %struct.buffer_array* %1, i32 %2, %struct.scatterlist* %3, i32 %4, i32 %5, i32 %6, i64* %7) #0 {
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.buffer_array*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.buffer_array* %1, %struct.buffer_array** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64* %7, i64** %16, align 8
  %18 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %19 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, %struct.scatterlist* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %30 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %17, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %36 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %37 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %36, i32 0, i32 7
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %17, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.scatterlist* %35, %struct.scatterlist** %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %45 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %17, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %52 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load i32, i32* @DMA_SGL_TYPE, align 4
  %58 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %59 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %17, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %66 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load i64*, i64** %16, align 8
  %72 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %73 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %72, i32 0, i32 5
  %74 = load i64**, i64*** %73, align 8
  %75 = load i32, i32* %17, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64*, i64** %74, i64 %76
  store i64* %71, i64** %77, align 8
  %78 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %79 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %78, i32 0, i32 5
  %80 = load i64**, i64*** %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64*, i64** %80, i64 %82
  %84 = load i64*, i64** %83, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %8
  %87 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %88 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %87, i32 0, i32 5
  %89 = load i64**, i64*** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64*, i64** %89, i64 %91
  %93 = load i64*, i64** %92, align 8
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %86, %8
  %95 = load %struct.buffer_array*, %struct.buffer_array** %10, align 8
  %96 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 8
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
