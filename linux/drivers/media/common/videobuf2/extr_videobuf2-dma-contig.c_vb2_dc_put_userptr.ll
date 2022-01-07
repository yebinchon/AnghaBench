; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_put_userptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_put_userptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_dc_buf = type { i32, i32, i32, i32, i32, i32, i32, %struct.vb2_dc_buf* }
%struct.sg_table = type { i32, i32, i32, i32, i32, i32, i32, %struct.sg_table* }
%struct.page = type { i32 }

@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vb2_dc_put_userptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vb2_dc_put_userptr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vb2_dc_buf*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page**, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.vb2_dc_buf*
  store %struct.vb2_dc_buf* %8, %struct.vb2_dc_buf** %3, align 8
  %9 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %10 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %9, i32 0, i32 7
  %11 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %10, align 8
  %12 = bitcast %struct.vb2_dc_buf* %11 to %struct.sg_table*
  store %struct.sg_table* %12, %struct.sg_table** %4, align 8
  %13 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %14 = icmp ne %struct.sg_table* %13, null
  br i1 %14, label %15, label %74

15:                                               ; preds = %1
  %16 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %17 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %20 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %23 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %26 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %29 = call i32 @dma_unmap_sg_attrs(i32 %18, i32 %21, i32 %24, i32 %27, i32 %28)
  %30 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %31 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.page** @frame_vector_pages(i32 %32)
  store %struct.page** %33, %struct.page*** %6, align 8
  %34 = load %struct.page**, %struct.page*** %6, align 8
  %35 = call i32 @IS_ERR(%struct.page** %34)
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %38 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %15
  %43 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %44 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42, %15
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %52 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @frame_vector_count(i32 %53)
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.page**, %struct.page*** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.page*, %struct.page** %57, i64 %59
  %61 = load %struct.page*, %struct.page** %60, align 8
  %62 = call i32 @set_page_dirty_lock(%struct.page* %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %49

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %42
  %68 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %69 = bitcast %struct.sg_table* %68 to %struct.vb2_dc_buf*
  %70 = call i32 @sg_free_table(%struct.vb2_dc_buf* %69)
  %71 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %72 = bitcast %struct.sg_table* %71 to %struct.vb2_dc_buf*
  %73 = call i32 @kfree(%struct.vb2_dc_buf* %72)
  br label %88

74:                                               ; preds = %1
  %75 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %76 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %79 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %82 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %85 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dma_unmap_resource(i32 %77, i32 %80, i32 %83, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %74, %67
  %89 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %90 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @vb2_destroy_framevec(i32 %91)
  %93 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %94 = call i32 @kfree(%struct.vb2_dc_buf* %93)
  ret void
}

declare dso_local i32 @dma_unmap_sg_attrs(i32, i32, i32, i32, i32) #1

declare dso_local %struct.page** @frame_vector_pages(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.page**) #1

declare dso_local i32 @frame_vector_count(i32) #1

declare dso_local i32 @set_page_dirty_lock(%struct.page*) #1

declare dso_local i32 @sg_free_table(%struct.vb2_dc_buf*) #1

declare dso_local i32 @kfree(%struct.vb2_dc_buf*) #1

declare dso_local i32 @dma_unmap_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vb2_destroy_framevec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
