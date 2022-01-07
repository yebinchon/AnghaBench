; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sanitize_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_sanitize_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_slave_config = type { i32, i32, i32, i32 }

@DMA_SLAVE_BUSWIDTH_UNDEFINED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_slave_config*, i32)* @sanitize_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_config(%struct.dma_slave_config* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_slave_config*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_slave_config* %0, %struct.dma_slave_config** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %83 [
    i32 128, label %7
    i32 129, label %45
  ]

7:                                                ; preds = %2
  %8 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %9 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %15 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %7
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %85

21:                                               ; preds = %13
  %22 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %23 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %29 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %32 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %35 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %40 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %43 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %33
  br label %84

45:                                               ; preds = %2
  %46 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %47 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %53 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51, %45
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %85

59:                                               ; preds = %51
  %60 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %61 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %67 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %70 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %73 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %78 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dma_slave_config*, %struct.dma_slave_config** %4, align 8
  %81 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %71
  br label %84

83:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

84:                                               ; preds = %82, %44
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %56, %18
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
