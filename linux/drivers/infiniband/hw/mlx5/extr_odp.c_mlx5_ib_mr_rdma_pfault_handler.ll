; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_rdma_pfault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_rdma_pfault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_pagefault = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@MAX_PREFETCH_LEN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"PAGE FAULT error %d. QP 0x%x, type: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"PAGE FAULT completed. QP 0x%x, type: 0x%x, prefetch_activated: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Prefetch failed. ret: %d, QP 0x%x, address: 0x%.16llx, length = 0x%.16x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_pagefault*)* @mlx5_ib_mr_rdma_pfault_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_mr_rdma_pfault_handler(%struct.mlx5_ib_dev* %0, %struct.mlx5_pagefault* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_pagefault*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_pagefault* %1, %struct.mlx5_pagefault** %4, align 8
  %12 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %21
  store i64 %26, i64* %24, align 8
  %27 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @min(i64 %29, i64 %33)
  %35 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %34
  store i64 %39, i64* %37, align 8
  %40 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %5, align 8
  %46 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %53 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* @MAX_PREFETCH_LEN, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @min(i64 %57, i64 %58)
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %52, %2
  %61 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %65, i32 0, i32 0
  %67 = call i32 @pagefault_single_data_segment(%struct.mlx5_ib_dev* %61, i32* null, i64 %62, i64 %63, i64 %64, i64* %66, i32* null, i32 0)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @EAGAIN, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %103

73:                                               ; preds = %60
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @pages_in_range(i64 %77, i64 %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76, %73
  %83 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %84 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %85 = call i32 @mlx5_ib_page_fault_resume(%struct.mlx5_ib_dev* %83, %struct.mlx5_pagefault* %84, i32 1)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %94 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %97 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, i32, i64, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %95, i64 %99)
  br label %101

101:                                              ; preds = %90, %82
  br label %142

102:                                              ; preds = %76
  br label %103

103:                                              ; preds = %102, %72
  %104 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %105 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %106 = call i32 @mlx5_ib_page_fault_resume(%struct.mlx5_ib_dev* %104, %struct.mlx5_pagefault* %105, i32 0)
  %107 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %108 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %109 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %112 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, i32, i64, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %107, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %113, i64 %115)
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %103
  store i64 0, i64* %11, align 8
  %120 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i32 @pagefault_single_data_segment(%struct.mlx5_ib_dev* %120, i32* null, i64 %121, i64 %122, i64 %123, i64* %11, i32* null, i32 0)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %119
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @EAGAIN, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %136 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %5, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, i32, i64, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %133, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %134, i32 %137, i64 %138, i64 %139)
  br label %141

141:                                              ; preds = %132, %127, %119
  br label %142

142:                                              ; preds = %101, %141, %103
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @pagefault_single_data_segment(%struct.mlx5_ib_dev*, i32*, i64, i64, i64, i64*, i32*, i32) #1

declare dso_local i32 @pages_in_range(i64, i64) #1

declare dso_local i32 @mlx5_ib_page_fault_resume(%struct.mlx5_ib_dev*, %struct.mlx5_pagefault*, i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
