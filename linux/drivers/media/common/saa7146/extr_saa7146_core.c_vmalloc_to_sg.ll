; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_vmalloc_to_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_vmalloc_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (i8*, i32)* @vmalloc_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @vmalloc_to_sg(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.scatterlist* @kcalloc(i32 %9, i32 4, i32 %10)
  store %struct.scatterlist* %11, %struct.scatterlist** %6, align 8
  %12 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %13 = icmp eq %struct.scatterlist* null, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.scatterlist* null, %struct.scatterlist** %3, align 8
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sg_init_table(%struct.scatterlist* %16, i32 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %40, %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call %struct.page* @vmalloc_to_page(i8* %24)
  store %struct.page* %25, %struct.page** %7, align 8
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = icmp eq %struct.page* null, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %49

29:                                               ; preds = %23
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i32 @PageHighMem(%struct.page* %30)
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i64 %35
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i32 @sg_set_page(%struct.scatterlist* %36, %struct.page* %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %4, align 8
  br label %19

47:                                               ; preds = %19
  %48 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %48, %struct.scatterlist** %3, align 8
  br label %52

49:                                               ; preds = %28
  %50 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %51 = call i32 @kfree(%struct.scatterlist* %50)
  store %struct.scatterlist* null, %struct.scatterlist** %3, align 8
  br label %52

52:                                               ; preds = %49, %47, %14
  %53 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  ret %struct.scatterlist* %53
}

declare dso_local %struct.scatterlist* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
