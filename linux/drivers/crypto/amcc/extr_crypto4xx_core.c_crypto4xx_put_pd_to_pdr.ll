; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_put_pd_to_pdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_put_pd_to_pdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i64, %struct.TYPE_2__*, %struct.pd_uinfo* }
%struct.TYPE_2__ = type { i32 }
%struct.pd_uinfo = type { i32 }

@PD_ENTRY_FREE = common dso_local global i32 0, align 4
@PPC4XX_LAST_PD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.crypto4xx_device*, i64)* @crypto4xx_put_pd_to_pdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crypto4xx_put_pd_to_pdr(%struct.crypto4xx_device* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pd_uinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %9 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %8, i32 0, i32 2
  %10 = load %struct.pd_uinfo*, %struct.pd_uinfo** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %10, i64 %11
  store %struct.pd_uinfo* %12, %struct.pd_uinfo** %5, align 8
  %13 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %14 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @PD_ENTRY_FREE, align 4
  %20 = load %struct.pd_uinfo*, %struct.pd_uinfo** %5, align 8
  %21 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %23 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PPC4XX_LAST_PD, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %29 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %34 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %37 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  %39 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %40 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i64, i64* %6, align 8
  ret i64 %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
