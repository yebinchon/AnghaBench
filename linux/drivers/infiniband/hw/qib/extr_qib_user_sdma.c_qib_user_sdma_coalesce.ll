; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }
%struct.qib_user_sdma_queue = type { i32 }
%struct.qib_user_sdma_pkt = type { i32 }
%struct.iovec = type { i64, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.iovec*, i64)* @qib_user_sdma_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_user_sdma_coalesce(%struct.qib_devdata* %0, %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_pkt* %2, %struct.iovec* %3, i64 %4) #0 {
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca %struct.qib_user_sdma_queue*, align 8
  %8 = alloca %struct.qib_user_sdma_pkt*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %6, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %7, align 8
  store %struct.qib_user_sdma_pkt* %2, %struct.qib_user_sdma_pkt** %8, align 8
  store %struct.iovec* %3, %struct.iovec** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.page* @alloc_page(i32 %18)
  store %struct.page* %19, %struct.page** %12, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.page*, %struct.page** %12, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  br label %89

25:                                               ; preds = %5
  %26 = load %struct.page*, %struct.page** %12, align 8
  %27 = call i8* @kmap(%struct.page* %26)
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  store i8* %28, i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %73, %25
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %29
  %35 = load i8*, i8** %14, align 8
  %36 = load %struct.iovec*, %struct.iovec** %9, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i64 %38
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.iovec*, %struct.iovec** %9, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i64 %44
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @copy_from_user(i8* %35, i32 %41, i64 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  br label %84

54:                                               ; preds = %34
  %55 = load %struct.iovec*, %struct.iovec** %9, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i64 %57
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %14, align 8
  %63 = load %struct.iovec*, %struct.iovec** %9, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i64 %65
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %54
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %29

76:                                               ; preds = %29
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %78 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %7, align 8
  %79 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %80 = load %struct.page*, %struct.page** %12, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @qib_user_sdma_page_to_frags(%struct.qib_devdata* %77, %struct.qib_user_sdma_queue* %78, %struct.qib_user_sdma_pkt* %79, %struct.page* %80, i32 0, i32 0, i32 %81, i8* %82)
  store i32 %83, i32* %11, align 4
  br label %89

84:                                               ; preds = %51
  %85 = load %struct.page*, %struct.page** %12, align 8
  %86 = call i32 @kunmap(%struct.page* %85)
  %87 = load %struct.page*, %struct.page** %12, align 8
  %88 = call i32 @__free_page(%struct.page* %87)
  br label %89

89:                                               ; preds = %84, %76, %22
  %90 = load i32, i32* %11, align 4
  ret i32 %90
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @copy_from_user(i8*, i32, i64) #1

declare dso_local i32 @qib_user_sdma_page_to_frags(%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.page*, i32, i32, i32, i8*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
