; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_rx_list_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_rx_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i64, i64, i64, i32, i32, %struct.pdc_rx_ctx*, i32, i32, i32, i32, i32 }
%struct.pdc_rx_ctx = type { i32, i32, i8*, %struct.scatterlist*, i8* }
%struct.scatterlist = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@D64_CTRL1_SOF = common dso_local global i64 0, align 8
@D64_CTRL1_EOT = common dso_local global i64 0, align 8
@PDC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdc_state*, %struct.scatterlist*, i8*)* @pdc_rx_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_rx_list_init(%struct.pdc_state* %0, %struct.scatterlist* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pdc_state*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pdc_rx_ctx*, align 8
  store %struct.pdc_state* %0, %struct.pdc_state** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %10, align 8
  %14 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %15 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %18 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %21 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %24 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @NRXDACTIVE(i32 %19, i64 %22, i64 %25)
  %27 = sub nsw i64 %16, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp sgt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %36 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %120

41:                                               ; preds = %3
  %42 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %43 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call i8* @dma_pool_zalloc(i32 %44, i32 %45, i32* %11)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %120

56:                                               ; preds = %41
  %57 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %58 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %61 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %63 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %66 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i64, i64* @D64_CTRL1_SOF, align 8
  store i64 %67, i64* %8, align 8
  %68 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %69 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %68, i32 0, i32 5
  %70 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %69, align 8
  %71 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %72 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %70, i64 %73
  %75 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %77 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %80 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = icmp eq i64 %78, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %56
  %89 = load i64, i64* @D64_CTRL1_EOT, align 8
  %90 = load i64, i64* %8, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %88, %56
  %93 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %94 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %93, i32 0, i32 5
  %95 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %94, align 8
  %96 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %97 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %95, i64 %98
  store %struct.pdc_rx_ctx* %99, %struct.pdc_rx_ctx** %13, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %13, align 8
  %102 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %104 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %13, align 8
  %105 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %104, i32 0, i32 3
  store %struct.scatterlist* %103, %struct.scatterlist** %105, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %13, align 8
  %108 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.pdc_rx_ctx*, %struct.pdc_rx_ctx** %13, align 8
  %111 = getelementptr inbounds %struct.pdc_rx_ctx, %struct.pdc_rx_ctx* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.pdc_state*, %struct.pdc_state** %5, align 8
  %115 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @pdc_build_rxd(%struct.pdc_state* %112, i32 %113, i32 %116, i64 %117)
  %119 = load i32, i32* @PDC_SUCCESS, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %92, %53, %34
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @NRXDACTIVE(i32, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @pdc_build_rxd(%struct.pdc_state*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
