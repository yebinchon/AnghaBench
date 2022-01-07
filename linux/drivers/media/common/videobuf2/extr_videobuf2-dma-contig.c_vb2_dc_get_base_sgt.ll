; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_get_base_sgt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_get_base_sgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.vb2_dc_buf = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to alloc sg table\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to get scatterlist from DMA API\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.vb2_dc_buf*)* @vb2_dc_get_base_sgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @vb2_dc_get_base_sgt(%struct.vb2_dc_buf* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
  %3 = alloca %struct.vb2_dc_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sg_table*, align 8
  store %struct.vb2_dc_buf* %0, %struct.vb2_dc_buf** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.sg_table* @kmalloc(i32 4, i32 %6)
  store %struct.sg_table* %7, %struct.sg_table** %5, align 8
  %8 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %9 = icmp ne %struct.sg_table* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.sg_table* null, %struct.sg_table** %2, align 8
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %17 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %20 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %21 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %24 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %27 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %30 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dma_get_sgtable_attrs(i32 %18, %struct.sg_table* %19, i32 %22, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %15
  %36 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %37 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %41 = call i32 @kfree(%struct.sg_table* %40)
  store %struct.sg_table* null, %struct.sg_table** %2, align 8
  br label %44

42:                                               ; preds = %15
  %43 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  store %struct.sg_table* %43, %struct.sg_table** %2, align 8
  br label %44

44:                                               ; preds = %42, %35, %10
  %45 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  ret %struct.sg_table* %45
}

declare dso_local %struct.sg_table* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_get_sgtable_attrs(i32, %struct.sg_table*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
