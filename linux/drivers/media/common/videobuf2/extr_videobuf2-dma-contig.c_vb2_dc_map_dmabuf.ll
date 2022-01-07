; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_map_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_map_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_dc_buf = type { i32, i64, i32*, i32, i32, i32 }
%struct.sg_table = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"trying to pin a non attached buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"dmabuf buffer is already pinned\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error getting dmabuf scatterlist\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"contiguous chunk is too small %lu/%lu b\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vb2_dc_map_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2_dc_map_dmabuf(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vb2_dc_buf*, align 8
  %5 = alloca %struct.sg_table*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.vb2_dc_buf*
  store %struct.vb2_dc_buf* %8, %struct.vb2_dc_buf** %4, align 8
  %9 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %10 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %23 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

29:                                               ; preds = %21
  %30 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %31 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %34 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.sg_table* @dma_buf_map_attachment(i32 %32, i32 %35)
  store %struct.sg_table* %36, %struct.sg_table** %5, align 8
  %37 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %38 = call i64 @IS_ERR(%struct.sg_table* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %81

44:                                               ; preds = %29
  %45 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %46 = call i64 @vb2_dc_get_contiguous_size(%struct.sg_table* %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %49 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %55 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %53, i64 %56)
  %58 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %59 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %62 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %63 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dma_buf_unmap_attachment(i32 %60, %struct.sg_table* %61, i32 %64)
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %81

68:                                               ; preds = %44
  %69 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %70 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @sg_dma_address(i32 %71)
  %73 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %74 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %76 = ptrtoint %struct.sg_table* %75 to i32
  %77 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %78 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %4, align 8
  %80 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %68, %52, %40, %27, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.sg_table* @dma_buf_map_attachment(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i64 @vb2_dc_get_contiguous_size(%struct.sg_table*) #1

declare dso_local i32 @dma_buf_unmap_attachment(i32, %struct.sg_table*, i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
