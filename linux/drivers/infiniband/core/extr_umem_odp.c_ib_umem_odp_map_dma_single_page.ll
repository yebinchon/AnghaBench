; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem_odp.c_ib_umem_odp_map_dma_single_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_umem_odp.c_ib_umem_odp_map_dma_single_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem_odp = type { i32*, i32, %struct.page**, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ib_umem_odp*, i64, i64)* }
%struct.page = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"error: got different pages in IB device and from get_user_pages. IB device page: %p, gup page: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_umem_odp*, i32, %struct.page*, i32, i64)* @ib_umem_odp_map_dma_single_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_umem_odp_map_dma_single_page(%struct.ib_umem_odp* %0, i32 %1, %struct.page* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.ib_umem_odp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ib_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_umem_odp* %0, %struct.ib_umem_odp** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %16 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.ib_device*, %struct.ib_device** %17, align 8
  store %struct.ib_device* %18, %struct.ib_device** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @ib_umem_mmu_notifier_retry(%struct.ib_umem_odp* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  br label %104

26:                                               ; preds = %5
  %27 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %28 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %72, label %35

35:                                               ; preds = %26
  %36 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %39 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @BIT(i32 %40)
  %42 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %43 = call i32 @ib_dma_map_page(%struct.ib_device* %36, %struct.page* %37, i32 0, i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @ib_dma_mapping_error(%struct.ib_device* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %104

51:                                               ; preds = %35
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %56 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %63 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %62, i32 0, i32 2
  %64 = load %struct.page**, %struct.page*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.page*, %struct.page** %64, i64 %66
  store %struct.page* %61, %struct.page** %67, align 8
  %68 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %69 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %103

72:                                               ; preds = %26
  %73 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %74 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %73, i32 0, i32 2
  %75 = load %struct.page**, %struct.page*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.page*, %struct.page** %75, i64 %77
  %79 = load %struct.page*, %struct.page** %78, align 8
  %80 = load %struct.page*, %struct.page** %8, align 8
  %81 = icmp eq %struct.page* %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %85 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %83
  store i32 %91, i32* %89, align 4
  br label %102

92:                                               ; preds = %72
  %93 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %94 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %93, i32 0, i32 2
  %95 = load %struct.page**, %struct.page*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.page*, %struct.page** %95, i64 %97
  %99 = load %struct.page*, %struct.page** %98, align 8
  %100 = load %struct.page*, %struct.page** %8, align 8
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), %struct.page* %99, %struct.page* %100)
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %92, %82
  br label %103

103:                                              ; preds = %102, %51
  br label %104

104:                                              ; preds = %103, %48, %23
  %105 = load %struct.page*, %struct.page** %8, align 8
  %106 = call i32 @put_user_page(%struct.page* %105)
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %141

109:                                              ; preds = %104
  %110 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %111 = call i32 @ib_umem_notifier_start_account(%struct.ib_umem_odp* %110)
  %112 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %113 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32 (%struct.ib_umem_odp*, i64, i64)*, i32 (%struct.ib_umem_odp*, i64, i64)** %114, align 8
  %116 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %117 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %118 = call i64 @ib_umem_start(%struct.ib_umem_odp* %117)
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %121 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %119, %122
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %118, %124
  %126 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %127 = call i64 @ib_umem_start(%struct.ib_umem_odp* %126)
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  %130 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %131 = getelementptr inbounds %struct.ib_umem_odp, %struct.ib_umem_odp* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = shl i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %127, %134
  %136 = call i32 %115(%struct.ib_umem_odp* %116, i64 %125, i64 %135)
  %137 = load %struct.ib_umem_odp*, %struct.ib_umem_odp** %6, align 8
  %138 = call i32 @ib_umem_notifier_end_account(%struct.ib_umem_odp* %137)
  %139 = load i32, i32* @EAGAIN, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %109, %104
  %142 = load i32, i32* %14, align 4
  ret i32 %142
}

declare dso_local i64 @ib_umem_mmu_notifier_retry(%struct.ib_umem_odp*, i64) #1

declare dso_local i32 @ib_dma_map_page(%struct.ib_device*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.page*, %struct.page*) #1

declare dso_local i32 @put_user_page(%struct.page*) #1

declare dso_local i32 @ib_umem_notifier_start_account(%struct.ib_umem_odp*) #1

declare dso_local i64 @ib_umem_start(%struct.ib_umem_odp*) #1

declare dso_local i32 @ib_umem_notifier_end_account(%struct.ib_umem_odp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
