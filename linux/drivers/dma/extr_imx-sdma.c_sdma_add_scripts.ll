; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_add_scripts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_add_scripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32, i64 }
%struct.sdma_script_start_addrs = type { i32 }

@SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SDMA script number %d not match with firmware.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*, %struct.sdma_script_start_addrs*)* @sdma_add_scripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_add_scripts(%struct.sdma_engine* %0, %struct.sdma_script_start_addrs* %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca %struct.sdma_script_start_addrs*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store %struct.sdma_script_start_addrs* %1, %struct.sdma_script_start_addrs** %4, align 8
  %8 = load %struct.sdma_script_start_addrs*, %struct.sdma_script_start_addrs** %4, align 8
  %9 = bitcast %struct.sdma_script_start_addrs* %8 to i64*
  store i64* %9, i64** %5, align 8
  %10 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %11 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %6, align 8
  %14 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %15 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1, align 4
  %20 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %21 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %24 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %30 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %33 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %64

36:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %61, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %40 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load i64*, i64** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i64*, i64** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %50, %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %37

64:                                               ; preds = %28, %37
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
