; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_get_block_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_get_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_reqctx = type { i32 }

@FLAGS_MODE_MASK = common dso_local global i32 0, align 4
@SHA1_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA256_BLOCK_SIZE = common dso_local global i32 0, align 4
@SHA512_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_sham_reqctx*)* @get_block_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_block_size(%struct.omap_sham_reqctx* %0) #0 {
  %2 = alloca %struct.omap_sham_reqctx*, align 8
  %3 = alloca i32, align 4
  store %struct.omap_sham_reqctx* %0, %struct.omap_sham_reqctx** %2, align 8
  %4 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %2, align 8
  %5 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FLAGS_MODE_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %15 [
    i32 133, label %9
    i32 132, label %9
    i32 131, label %11
    i32 130, label %11
    i32 129, label %13
    i32 128, label %13
  ]

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @SHA1_BLOCK_SIZE, align 4
  store i32 %10, i32* %3, align 4
  br label %16

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @SHA512_BLOCK_SIZE, align 4
  store i32 %14, i32* %3, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %13, %11, %9
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
