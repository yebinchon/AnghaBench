; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_queue_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_queue_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_hfi_queue = type { i64*, %struct.a6xx_hfi_queue_header* }
%struct.a6xx_hfi_queue_header = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_hfi_queue*, i64*, i64)* @a6xx_hfi_queue_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_hfi_queue_read(%struct.a6xx_hfi_queue* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.a6xx_hfi_queue*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.a6xx_hfi_queue_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.a6xx_hfi_queue* %0, %struct.a6xx_hfi_queue** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %5, align 8
  %13 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %12, i32 0, i32 1
  %14 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %13, align 8
  store %struct.a6xx_hfi_queue_header* %14, %struct.a6xx_hfi_queue_header** %8, align 8
  %15 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %8, align 8
  %16 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %8, align 8
  %19 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %8, align 8
  %22 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %8, align 8
  %27 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  store i32 0, i32* %4, align 4
  br label %73

28:                                               ; preds = %3
  %29 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %5, align 8
  %30 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @HFI_HEADER_SIZE(i64 %35)
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = icmp ugt i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %64, %28
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @HFI_HEADER_SIZE(i64 %44)
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %5, align 8
  %50 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 1
  %60 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %8, align 8
  %61 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = urem i64 %59, %62
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %48
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %42

67:                                               ; preds = %42
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %8, align 8
  %70 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @HFI_HEADER_SIZE(i64 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %25
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @HFI_HEADER_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
