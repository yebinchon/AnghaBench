; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_setup_crypt_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_setup_crypt_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@pdev = common dso_local global %struct.TYPE_2__* null, align 8
@NPE_QLEN = common dso_local global i32 0, align 4
@crypt_phys = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@crypt_virt = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_crypt_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_crypt_desc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdev, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store %struct.device* %4, %struct.device** %2, align 8
  %5 = call i32 @BUILD_BUG_ON(i32 1)
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = load i32, i32* @NPE_QLEN, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i32 @dma_alloc_coherent(%struct.device* %6, i32 %10, i32* @crypt_phys, i32 %11)
  store i32 %12, i32* @crypt_virt, align 4
  %13 = load i32, i32* @crypt_virt, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %19

18:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
