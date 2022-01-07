; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_vmalloc_buf_to_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_vmalloc_buf_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (i32*, i32)* @efa_vmalloc_buf_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @efa_vmalloc_buf_to_sg(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.scatterlist* @kcalloc(i32 %9, i32 4, i32 %10)
  store %struct.scatterlist* %11, %struct.scatterlist** %6, align 8
  %12 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %13 = icmp ne %struct.scatterlist* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.scatterlist* null, %struct.scatterlist** %3, align 8
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sg_init_table(%struct.scatterlist* %16, i32 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %42, %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.page* @vmalloc_to_page(i32* %24)
  store %struct.page* %25, %struct.page** %7, align 8
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = icmp ne %struct.page* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %47

29:                                               ; preds = %23
  %30 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %30, i64 %32
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @sg_set_page(%struct.scatterlist* %33, %struct.page* %34, i32 %35, i32 0)
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 %39
  store i32* %41, i32** %4, align 8
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %46, %struct.scatterlist** %3, align 8
  br label %50

47:                                               ; preds = %28
  %48 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %49 = call i32 @kfree(%struct.scatterlist* %48)
  store %struct.scatterlist* null, %struct.scatterlist** %3, align 8
  br label %50

50:                                               ; preds = %47, %45, %14
  %51 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  ret %struct.scatterlist* %51
}

declare dso_local %struct.scatterlist* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @vmalloc_to_page(i32*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
