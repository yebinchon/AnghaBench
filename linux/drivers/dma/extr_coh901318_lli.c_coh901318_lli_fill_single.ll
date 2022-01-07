; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318_lli.c_coh901318_lli_fill_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318_lli.c_coh901318_lli_fill_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coh901318_pool = type { i32 }
%struct.coh901318_lli = type { i32, i64, i64, i64 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_DMA_PACKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coh901318_lli_fill_single(%struct.coh901318_pool* %0, %struct.coh901318_lli* %1, i64 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.coh901318_pool*, align 8
  %11 = alloca %struct.coh901318_lli*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.coh901318_pool* %0, %struct.coh901318_pool** %10, align 8
  store %struct.coh901318_lli* %1, %struct.coh901318_lli** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load i64, i64* %12, align 8
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* %14, align 8
  store i64 %28, i64* %20, align 8
  br label %40

29:                                               ; preds = %8
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %14, align 8
  store i64 %34, i64* %19, align 8
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %20, align 8
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %107

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %94, %40
  %42 = load %struct.coh901318_lli*, %struct.coh901318_lli** %11, align 8
  %43 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %41
  %47 = load i32, i32* @MAX_DMA_PACKET_SIZE, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %21, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @MAX_DMA_PACKET_SIZE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.coh901318_lli*, %struct.coh901318_lli** %11, align 8
  %53 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @MAX_DMA_PACKET_SIZE, align 4
  %56 = load i32, i32* @MAX_DMA_PACKET_SIZE, align 4
  %57 = sdiv i32 %56, 2
  %58 = add nsw i32 %55, %57
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load i32, i32* @MAX_DMA_PACKET_SIZE, align 4
  %62 = sdiv i32 %61, 2
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %21, align 8
  br label %64

64:                                               ; preds = %60, %46
  %65 = load i64, i64* %21, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %18, align 4
  %70 = load i64, i64* %19, align 8
  %71 = load %struct.coh901318_lli*, %struct.coh901318_lli** %11, align 8
  %72 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load %struct.coh901318_lli*, %struct.coh901318_lli** %11, align 8
  %75 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.coh901318_lli*, %struct.coh901318_lli** %11, align 8
  %77 = call %struct.coh901318_lli* @coh901318_lli_next(%struct.coh901318_lli* %76)
  store %struct.coh901318_lli* %77, %struct.coh901318_lli** %11, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %64
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %19, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %19, align 8
  br label %94

85:                                               ; preds = %64
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i64, i64* %21, align 8
  %91 = load i64, i64* %20, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %20, align 8
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %81
  br label %41

95:                                               ; preds = %41
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %18, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.coh901318_lli*, %struct.coh901318_lli** %11, align 8
  %100 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load %struct.coh901318_lli*, %struct.coh901318_lli** %11, align 8
  %103 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %20, align 8
  %105 = load %struct.coh901318_lli*, %struct.coh901318_lli** %11, align 8
  %106 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %95, %36
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local %struct.coh901318_lli* @coh901318_lli_next(%struct.coh901318_lli*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
