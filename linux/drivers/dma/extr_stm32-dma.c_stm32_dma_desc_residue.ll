; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_desc_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_desc_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, %struct.stm32_dma_sg_req* }
%struct.stm32_dma_sg_req = type { i64 }
%struct.stm32_dma_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.stm32_dma_chan*, %struct.stm32_dma_desc*, i64)* @stm32_dma_desc_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stm32_dma_desc_residue(%struct.stm32_dma_chan* %0, %struct.stm32_dma_desc* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stm32_dma_chan*, align 8
  %6 = alloca %struct.stm32_dma_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stm32_dma_sg_req*, align 8
  %13 = alloca i32, align 4
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %5, align 8
  store %struct.stm32_dma_desc* %1, %struct.stm32_dma_desc** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %18, align 8
  %20 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %21 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %19, i64 %22
  store %struct.stm32_dma_sg_req* %23, %struct.stm32_dma_sg_req** %12, align 8
  %24 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %25 = call i64 @stm32_dma_get_remaining_bytes(%struct.stm32_dma_chan* %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %27 = call i32 @stm32_dma_is_current_sg(%struct.stm32_dma_chan* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.stm32_dma_sg_req*, %struct.stm32_dma_sg_req** %12, align 8
  %42 = getelementptr inbounds %struct.stm32_dma_sg_req, %struct.stm32_dma_sg_req* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %40, %3
  %45 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %46 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %51, %44
  %55 = load i64, i64* %11, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %74, %54
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %6, align 8
  %60 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.stm32_dma_desc*, %struct.stm32_dma_desc** %6, align 8
  %65 = getelementptr inbounds %struct.stm32_dma_desc, %struct.stm32_dma_desc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %57

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %80 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* %10, align 8
  store i64 %84, i64* %4, align 8
  br label %106

85:                                               ; preds = %78
  %86 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %87 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %5, align 8
  %90 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = mul i64 %88, %91
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %9, align 8
  %95 = urem i64 %93, %94
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %85
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %8, align 8
  %101 = sub i64 %99, %100
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %101, %102
  store i64 %103, i64* %10, align 8
  br label %104

104:                                              ; preds = %98, %85
  %105 = load i64, i64* %10, align 8
  store i64 %105, i64* %4, align 8
  br label %106

106:                                              ; preds = %104, %83
  %107 = load i64, i64* %4, align 8
  ret i64 %107
}

declare dso_local i64 @stm32_dma_get_remaining_bytes(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_is_current_sg(%struct.stm32_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
