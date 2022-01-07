; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_map_udmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_map_udmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, i32 }
%struct.dma_buf_attachment = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.udmabuf* }
%struct.udmabuf = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.dma_buf_attachment*, i32)* @map_udmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @map_udmabuf(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udmabuf*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %10 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.udmabuf*, %struct.udmabuf** %12, align 8
  store %struct.udmabuf* %13, %struct.udmabuf** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sg_table* @kzalloc(i32 8, i32 %14)
  store %struct.sg_table* %15, %struct.sg_table** %7, align 8
  %16 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %17 = icmp ne %struct.sg_table* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sg_table* @ERR_PTR(i32 %20)
  store %struct.sg_table* %21, %struct.sg_table** %3, align 8
  br label %65

22:                                               ; preds = %2
  %23 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %24 = load %struct.udmabuf*, %struct.udmabuf** %6, align 8
  %25 = getelementptr inbounds %struct.udmabuf, %struct.udmabuf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.udmabuf*, %struct.udmabuf** %6, align 8
  %28 = getelementptr inbounds %struct.udmabuf, %struct.udmabuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.udmabuf*, %struct.udmabuf** %6, align 8
  %31 = getelementptr inbounds %struct.udmabuf, %struct.udmabuf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @sg_alloc_table_from_pages(%struct.sg_table* %23, i32 %26, i32 %29, i32 0, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %58

40:                                               ; preds = %22
  %41 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %42 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %45 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %48 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dma_map_sg(i32 %43, i32 %46, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %58

56:                                               ; preds = %40
  %57 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  store %struct.sg_table* %57, %struct.sg_table** %3, align 8
  br label %65

58:                                               ; preds = %53, %39
  %59 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %60 = call i32 @sg_free_table(%struct.sg_table* %59)
  %61 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %62 = call i32 @kfree(%struct.sg_table* %61)
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.sg_table* @ERR_PTR(i32 %63)
  store %struct.sg_table* %64, %struct.sg_table** %3, align 8
  br label %65

65:                                               ; preds = %58, %56, %18
  %66 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %66
}

declare dso_local %struct.sg_table* @kzalloc(i32, i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @sg_alloc_table_from_pages(%struct.sg_table*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
