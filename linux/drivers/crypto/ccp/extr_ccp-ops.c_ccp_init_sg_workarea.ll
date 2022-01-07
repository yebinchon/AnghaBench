; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_init_sg_workarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_init_sg_workarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_sg_workarea = type { i64, i32, i32, %struct.device*, %struct.scatterlist*, i64, i64, %struct.scatterlist* }
%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_sg_workarea*, %struct.device*, %struct.scatterlist*, i64, i32)* @ccp_init_sg_workarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_init_sg_workarea(%struct.ccp_sg_workarea* %0, %struct.device* %1, %struct.scatterlist* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccp_sg_workarea*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ccp_sg_workarea* %0, %struct.ccp_sg_workarea** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %13 = call i32 @memset(%struct.ccp_sg_workarea* %12, i32 0, i32 56)
  %14 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %15 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %16 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %15, i32 0, i32 7
  store %struct.scatterlist* %14, %struct.scatterlist** %16, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %18 = icmp ne %struct.scatterlist* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %77

20:                                               ; preds = %5
  %21 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @sg_nents_for_len(%struct.scatterlist* %21, i64 %22)
  %24 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %25 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %27 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %32 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %77

35:                                               ; preds = %20
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %38 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %37, i32 0, i32 6
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %40 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %77

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @DMA_NONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %77

49:                                               ; preds = %44
  %50 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %51 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %52 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %51, i32 0, i32 4
  store %struct.scatterlist* %50, %struct.scatterlist** %52, align 8
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %55 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %54, i32 0, i32 3
  store %struct.device* %53, %struct.device** %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %58 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.device*, %struct.device** %8, align 8
  %60 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %61 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %62 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @dma_map_sg(%struct.device* %59, %struct.scatterlist* %60, i32 %64, i32 %65)
  %67 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %68 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %7, align 8
  %70 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %49
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %77

76:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %73, %48, %43, %30, %19
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @memset(%struct.ccp_sg_workarea*, i32, i32) #1

declare dso_local i64 @sg_nents_for_len(%struct.scatterlist*, i64) #1

declare dso_local i32 @dma_map_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
