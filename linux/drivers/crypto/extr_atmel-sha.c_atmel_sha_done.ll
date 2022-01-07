; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32, i32 }

@SHA_FLAGS_CPU = common dso_local global i32 0, align 4
@SHA_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@SHA_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@SHA_FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_done(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @SHA_FLAGS_CPU, align 4
  %6 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @SHA_FLAGS_OUTPUT_READY, align 4
  %13 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32, i32* @SHA_FLAGS_OUTPUT_READY, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %86

25:                                               ; preds = %11
  br label %84

26:                                               ; preds = %1
  %27 = load i32, i32* @SHA_FLAGS_DMA_READY, align 4
  %28 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %26
  %34 = load i32, i32* @SHA_FLAGS_DMA_ACTIVE, align 4
  %35 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %36 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load i32, i32* @SHA_FLAGS_DMA_ACTIVE, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %44 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %48 = call i32 @atmel_sha_update_dma_stop(%struct.atmel_sha_dev* %47)
  %49 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %50 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  br label %86

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %33
  %59 = load i32, i32* @SHA_FLAGS_OUTPUT_READY, align 4
  %60 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %61 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %58
  %66 = load i32, i32* @SHA_FLAGS_DMA_READY, align 4
  %67 = load i32, i32* @SHA_FLAGS_OUTPUT_READY, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %71 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %75 = call i32 @atmel_sha_update_dma_start(%struct.atmel_sha_dev* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @EINPROGRESS, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %86

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %58
  br label %83

83:                                               ; preds = %82, %26
  br label %84

84:                                               ; preds = %83, %25
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %93

86:                                               ; preds = %80, %53, %18
  %87 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %88 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @atmel_sha_finish_req(i32 %89, i32 %90)
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %86, %84
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @atmel_sha_update_dma_stop(%struct.atmel_sha_dev*) #1

declare dso_local i32 @atmel_sha_update_dma_start(%struct.atmel_sha_dev*) #1

declare dso_local i32 @atmel_sha_finish_req(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
