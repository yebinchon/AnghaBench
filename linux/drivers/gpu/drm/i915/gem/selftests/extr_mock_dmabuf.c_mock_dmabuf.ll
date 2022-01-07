; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_mock_dmabuf.c_mock_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_mock_dmabuf.c_mock_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.mock_dmabuf*, i32, i32* }
%struct.mock_dmabuf = type { i32, i32* }
%struct.dma_buf = type { i32 }

@exp_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mock_dmabuf_ops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_buf* (i32)* @mock_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_buf* @mock_dmabuf(i32 %0) #0 {
  %2 = alloca %struct.dma_buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mock_dmabuf*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 @exp_info)
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = add i64 16, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mock_dmabuf* @kmalloc(i32 %12, i32 %13)
  store %struct.mock_dmabuf* %14, %struct.mock_dmabuf** %4, align 8
  %15 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %4, align 8
  %16 = icmp ne %struct.mock_dmabuf* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.dma_buf* @ERR_PTR(i32 %19)
  store %struct.dma_buf* %20, %struct.dma_buf** %2, align 8
  br label %84

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %4, align 8
  %24 = getelementptr inbounds %struct.mock_dmabuf, %struct.mock_dmabuf* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %48, %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @alloc_page(i32 %30)
  %32 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %4, align 8
  %33 = getelementptr inbounds %struct.mock_dmabuf, %struct.mock_dmabuf* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %4, align 8
  %39 = getelementptr inbounds %struct.mock_dmabuf, %struct.mock_dmabuf* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %29
  br label %64

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %25

51:                                               ; preds = %25
  store i32* @mock_dmabuf_ops, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 3), align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 0), align 8
  %55 = load i32, i32* @O_CLOEXEC, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 2), align 8
  %56 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %4, align 8
  store %struct.mock_dmabuf* %56, %struct.mock_dmabuf** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @exp_info, i32 0, i32 1), align 8
  %57 = call %struct.dma_buf* @dma_buf_export(%struct.TYPE_4__* @exp_info)
  store %struct.dma_buf* %57, %struct.dma_buf** %5, align 8
  %58 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %59 = call i64 @IS_ERR(%struct.dma_buf* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %64

62:                                               ; preds = %51
  %63 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  store %struct.dma_buf* %63, %struct.dma_buf** %2, align 8
  br label %84

64:                                               ; preds = %61, %46
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %6, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %4, align 8
  %71 = getelementptr inbounds %struct.mock_dmabuf, %struct.mock_dmabuf* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @put_page(i32 %76)
  br label %65

78:                                               ; preds = %65
  %79 = load %struct.mock_dmabuf*, %struct.mock_dmabuf** %4, align 8
  %80 = call i32 @kfree(%struct.mock_dmabuf* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.dma_buf* @ERR_PTR(i32 %82)
  store %struct.dma_buf* %83, %struct.dma_buf** %2, align 8
  br label %84

84:                                               ; preds = %78, %62, %17
  %85 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  ret %struct.dma_buf* %85
}

declare dso_local i32 @DEFINE_DMA_BUF_EXPORT_INFO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local %struct.mock_dmabuf* @kmalloc(i32, i32) #1

declare dso_local %struct.dma_buf* @ERR_PTR(i32) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local %struct.dma_buf* @dma_buf_export(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(%struct.mock_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
