; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_render_sg_to_mlli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_render_sg_to_mlli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.scatterlist*, i64, i64, i64*, i64**)* @cc_render_sg_to_mlli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_render_sg_to_mlli(%struct.device* %0, %struct.scatterlist* %1, i64 %2, i64 %3, i64* %4, i64** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64**, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64** %5, i64*** %13, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %18, %struct.scatterlist** %14, align 8
  %19 = load i64**, i64*** %13, align 8
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %15, align 8
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %61, %6
  %22 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %23 = icmp ne %struct.scatterlist* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %64

29:                                               ; preds = %27
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %32 = call i64 @sg_dma_len(%struct.scatterlist* %31)
  %33 = load i64, i64* %11, align 8
  %34 = sub nsw i64 %32, %33
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %38 = call i64 @sg_dma_len(%struct.scatterlist* %37)
  %39 = load i64, i64* %11, align 8
  %40 = sub nsw i64 %38, %39
  br label %43

41:                                               ; preds = %29
  %42 = load i64, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i64 [ %40, %36 ], [ %42, %41 ]
  store i64 %44, i64* %17, align 8
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %10, align 8
  %48 = load %struct.device*, %struct.device** %8, align 8
  %49 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %50 = call i64 @sg_dma_address(%struct.scatterlist* %49)
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* %17, align 8
  %54 = load i64*, i64** %12, align 8
  %55 = call i32 @cc_render_buff_to_mlli(%struct.device* %48, i64 %52, i64 %53, i64* %54, i64** %15)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %7, align 4
  br label %67

60:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %63 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %62)
  store %struct.scatterlist* %63, %struct.scatterlist** %14, align 8
  br label %21

64:                                               ; preds = %27
  %65 = load i64*, i64** %15, align 8
  %66 = load i64**, i64*** %13, align 8
  store i64* %65, i64** %66, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @cc_render_buff_to_mlli(%struct.device*, i64, i64, i64*, i64**) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
