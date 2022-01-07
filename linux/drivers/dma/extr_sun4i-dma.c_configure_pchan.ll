; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_configure_pchan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_configure_pchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_dma_pchan = type { i64, i64 }
%struct.sun4i_dma_promise = type { i32, i32, i32, i32, i32 }

@SUN4I_DDMA_SRC_ADDR_REG = common dso_local global i64 0, align 8
@SUN4I_DDMA_DST_ADDR_REG = common dso_local global i64 0, align 8
@SUN4I_DDMA_BYTE_COUNT_REG = common dso_local global i64 0, align 8
@SUN4I_DDMA_PARA_REG = common dso_local global i64 0, align 8
@SUN4I_DDMA_CFG_REG = common dso_local global i64 0, align 8
@SUN4I_NDMA_SRC_ADDR_REG = common dso_local global i64 0, align 8
@SUN4I_NDMA_DST_ADDR_REG = common dso_local global i64 0, align 8
@SUN4I_NDMA_BYTE_COUNT_REG = common dso_local global i64 0, align 8
@SUN4I_NDMA_CFG_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_dma_pchan*, %struct.sun4i_dma_promise*)* @configure_pchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_pchan(%struct.sun4i_dma_pchan* %0, %struct.sun4i_dma_promise* %1) #0 {
  %3 = alloca %struct.sun4i_dma_pchan*, align 8
  %4 = alloca %struct.sun4i_dma_promise*, align 8
  store %struct.sun4i_dma_pchan* %0, %struct.sun4i_dma_pchan** %3, align 8
  store %struct.sun4i_dma_promise* %1, %struct.sun4i_dma_promise** %4, align 8
  %5 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %6 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %4, align 8
  %11 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %14 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SUN4I_DDMA_SRC_ADDR_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel_relaxed(i32 %12, i64 %17)
  %19 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %4, align 8
  %20 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %23 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SUN4I_DDMA_DST_ADDR_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  %28 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %4, align 8
  %29 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %32 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SUN4I_DDMA_BYTE_COUNT_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 %30, i64 %35)
  %37 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %4, align 8
  %38 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %41 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SUN4I_DDMA_PARA_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  %46 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %4, align 8
  %47 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %50 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SUN4I_DDMA_CFG_REG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel_relaxed(i32 %48, i64 %53)
  br label %92

55:                                               ; preds = %2
  %56 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %4, align 8
  %57 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %60 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SUN4I_NDMA_SRC_ADDR_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel_relaxed(i32 %58, i64 %63)
  %65 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %4, align 8
  %66 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %69 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SUN4I_NDMA_DST_ADDR_REG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel_relaxed(i32 %67, i64 %72)
  %74 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %4, align 8
  %75 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %78 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SUN4I_NDMA_BYTE_COUNT_REG, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel_relaxed(i32 %76, i64 %81)
  %83 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %4, align 8
  %84 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sun4i_dma_pchan*, %struct.sun4i_dma_pchan** %3, align 8
  %87 = getelementptr inbounds %struct.sun4i_dma_pchan, %struct.sun4i_dma_pchan* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SUN4I_NDMA_CFG_REG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel_relaxed(i32 %85, i64 %90)
  br label %92

92:                                               ; preds = %55, %9
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
