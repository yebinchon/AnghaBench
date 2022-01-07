; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_aes_rec = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }

@AES_FLAGS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cryp*, %struct.mtk_aes_rec*, i32)* @mtk_aes_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_aes_complete(%struct.mtk_cryp* %0, %struct.mtk_aes_rec* %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca %struct.mtk_aes_rec*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %4, align 8
  store %struct.mtk_aes_rec* %1, %struct.mtk_aes_rec** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @AES_FLAGS_BUSY, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %5, align 8
  %14 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %16, align 8
  %18 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %5, align 8
  %19 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 %17(%struct.TYPE_2__* %20, i32 %21)
  %23 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %5, align 8
  %24 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %23, i32 0, i32 0
  %25 = call i32 @tasklet_schedule(i32* %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
