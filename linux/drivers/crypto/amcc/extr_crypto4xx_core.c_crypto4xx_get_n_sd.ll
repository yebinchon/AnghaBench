; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_get_n_sd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_get_n_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32, i32, i32 }

@PPC4XX_NUM_SD = common dso_local global i32 0, align 4
@ERING_WAS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*, i32)* @crypto4xx_get_n_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_get_n_sd(%struct.crypto4xx_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto4xx_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ERING_WAS_FULL, align 4
  store i32 %12, i32* %3, align 4
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %15 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %18 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @PPC4XX_NUM_SD, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %25 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %28 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %13
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %34 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %40 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @ERING_WAS_FULL, align 4
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %37, %31
  br label %70

46:                                               ; preds = %13
  %47 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %48 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %51 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %57 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %63 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %54
  %67 = load i32, i32* @ERING_WAS_FULL, align 4
  store i32 %67, i32* %3, align 4
  br label %75

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %46
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %73 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %66, %43, %11
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
