; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_pin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_pin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }
%struct.qib_user_sdma_queue = type { i32 }
%struct.qib_user_sdma_pkt = type { i32 }
%struct.page = type { i32 }

@FOLL_LONGTERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, i64, i32, i32)* @qib_user_sdma_pin_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_user_sdma_pin_pages(%struct.qib_devdata* %0, %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_pkt* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca %struct.qib_user_sdma_queue*, align 8
  %9 = alloca %struct.qib_user_sdma_pkt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x %struct.page*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %7, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %8, align 8
  store %struct.qib_user_sdma_pkt* %2, %struct.qib_user_sdma_pkt** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %93, %6
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %97

22:                                               ; preds = %19
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 8
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 8, i32* %15, align 4
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %15, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @FOLL_LONGTERM, align 4
  %32 = getelementptr inbounds [8 x %struct.page*], [8 x %struct.page*]* %13, i64 0, i64 0
  %33 = call i32 @get_user_pages_fast(i64 %29, i32 %30, i32 %31, %struct.page** %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %16, align 4
  br label %98

41:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %90, %41
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %93

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @PAGE_MASK, align 8
  %49 = xor i64 %48, -1
  %50 = and i64 %47, %49
  store i64 %50, i64* %17, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i64, i64* %17, align 8
  %60 = sub i64 %58, %59
  br label %64

61:                                               ; preds = %46
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i64 [ %60, %57 ], [ %63, %61 ]
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %18, align 4
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %68 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %69 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %9, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x %struct.page*], [8 x %struct.page*]* %13, i64 0, i64 %71
  %73 = load %struct.page*, %struct.page** %72, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @qib_user_sdma_page_to_frags(%struct.qib_devdata* %67, %struct.qib_user_sdma_queue* %68, %struct.qib_user_sdma_pkt* %69, %struct.page* %73, i32 1, i64 %74, i32 %75, i32* null)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %98

82:                                               ; preds = %64
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %10, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %42

93:                                               ; preds = %42
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %19

97:                                               ; preds = %19
  br label %111

98:                                               ; preds = %79, %37
  br label %99

99:                                               ; preds = %103, %98
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds [8 x %struct.page*], [8 x %struct.page*]* %13, i64 0, i64 %106
  %108 = load %struct.page*, %struct.page** %107, align 8
  %109 = call i32 @put_user_page(%struct.page* %108)
  br label %99

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %97
  %112 = load i32, i32* %16, align 4
  ret i32 %112
}

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i32 @qib_user_sdma_page_to_frags(%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.page*, i32, i64, i32, i32*) #1

declare dso_local i32 @put_user_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
