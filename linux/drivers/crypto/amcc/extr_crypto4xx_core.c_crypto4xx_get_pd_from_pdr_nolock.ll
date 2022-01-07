; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_get_pd_from_pdr_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_get_pd_from_pdr_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32, i32 }

@PPC4XX_NUM_PD = common dso_local global i32 0, align 4
@ERING_WAS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*)* @crypto4xx_get_pd_from_pdr_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_get_pd_from_pdr_nolock(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  %6 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %7 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %10 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %14 = srem i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %17 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ERING_WAS_FULL, align 4
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %25 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %20
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
