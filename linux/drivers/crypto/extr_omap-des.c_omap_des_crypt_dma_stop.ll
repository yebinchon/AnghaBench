; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_crypt_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_crypt_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_des_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"total: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_des_dev*)* @omap_des_crypt_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_des_crypt_dma_stop(%struct.omap_des_dev* %0) #0 {
  %2 = alloca %struct.omap_des_dev*, align 8
  store %struct.omap_des_dev* %0, %struct.omap_des_dev** %2, align 8
  %3 = load %struct.omap_des_dev*, %struct.omap_des_dev** %2, align 8
  %4 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.omap_des_dev*, %struct.omap_des_dev** %2, align 8
  %8 = call i32 @omap_des_dma_stop(%struct.omap_des_dev* %7)
  %9 = load %struct.omap_des_dev*, %struct.omap_des_dev** %2, align 8
  %10 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dmaengine_terminate_all(i32 %11)
  %13 = load %struct.omap_des_dev*, %struct.omap_des_dev** %2, align 8
  %14 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dmaengine_terminate_all(i32 %15)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @omap_des_dma_stop(%struct.omap_des_dev*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
