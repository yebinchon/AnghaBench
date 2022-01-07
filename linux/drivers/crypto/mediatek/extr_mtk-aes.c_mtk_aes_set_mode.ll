; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-aes.c_mtk_aes_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_aes_rec = type { i32 }
%struct.mtk_aes_reqctx = type { i32 }

@AES_FLAGS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_aes_rec*, %struct.mtk_aes_reqctx*)* @mtk_aes_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_aes_set_mode(%struct.mtk_aes_rec* %0, %struct.mtk_aes_reqctx* %1) #0 {
  %3 = alloca %struct.mtk_aes_rec*, align 8
  %4 = alloca %struct.mtk_aes_reqctx*, align 8
  store %struct.mtk_aes_rec* %0, %struct.mtk_aes_rec** %3, align 8
  store %struct.mtk_aes_reqctx* %1, %struct.mtk_aes_reqctx** %4, align 8
  %5 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AES_FLAGS_BUSY, align 4
  %9 = and i32 %7, %8
  %10 = load %struct.mtk_aes_reqctx*, %struct.mtk_aes_reqctx** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_aes_reqctx, %struct.mtk_aes_reqctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %9, %12
  %14 = load %struct.mtk_aes_rec*, %struct.mtk_aes_rec** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_aes_rec, %struct.mtk_aes_rec* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
