; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_map_attachment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_map_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.dma_buf_attachment = type { i32, %struct.sg_table*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.sg_table* (%struct.dma_buf_attachment*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @dma_buf_map_attachment(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %9 = icmp ne %struct.dma_buf_attachment* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %12 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ true, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.sg_table* @ERR_PTR(i32 %23)
  store %struct.sg_table* %24, %struct.sg_table** %3, align 8
  br label %90

25:                                               ; preds = %16
  %26 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %27 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %26, i32 0, i32 1
  %28 = load %struct.sg_table*, %struct.sg_table** %27, align 8
  %29 = icmp ne %struct.sg_table* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %32 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %38 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @DMA_BIDIRECTIONAL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.sg_table* @ERR_PTR(i32 %45)
  store %struct.sg_table* %46, %struct.sg_table** %3, align 8
  br label %90

47:                                               ; preds = %36, %30
  %48 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %49 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %48, i32 0, i32 1
  %50 = load %struct.sg_table*, %struct.sg_table** %49, align 8
  store %struct.sg_table* %50, %struct.sg_table** %3, align 8
  br label %90

51:                                               ; preds = %25
  %52 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %53 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.sg_table* (%struct.dma_buf_attachment*, i32)*, %struct.sg_table* (%struct.dma_buf_attachment*, i32)** %57, align 8
  %59 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.sg_table* %58(%struct.dma_buf_attachment* %59, i32 %60)
  store %struct.sg_table* %61, %struct.sg_table** %6, align 8
  %62 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %63 = icmp ne %struct.sg_table* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %51
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.sg_table* @ERR_PTR(i32 %66)
  store %struct.sg_table* %67, %struct.sg_table** %6, align 8
  br label %68

68:                                               ; preds = %64, %51
  %69 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %70 = call i32 @IS_ERR(%struct.sg_table* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %68
  %73 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %74 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %83 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %84 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %83, i32 0, i32 1
  store %struct.sg_table* %82, %struct.sg_table** %84, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %87 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %72, %68
  %89 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  store %struct.sg_table* %89, %struct.sg_table** %3, align 8
  br label %90

90:                                               ; preds = %88, %47, %43, %21
  %91 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %91
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
