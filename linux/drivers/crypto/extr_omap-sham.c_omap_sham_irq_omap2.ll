; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_irq_omap2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_irq_omap2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { i32 }

@FLAGS_FINAL = common dso_local global i32 0, align 4
@SHA_REG_CTRL = common dso_local global i32 0, align 4
@SHA_REG_CTRL_LENGTH = common dso_local global i32 0, align 4
@SHA_REG_CTRL_OUTPUT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_sham_irq_omap2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_irq_omap2(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_sham_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.omap_sham_dev*
  store %struct.omap_sham_dev* %7, %struct.omap_sham_dev** %5, align 8
  %8 = load i32, i32* @FLAGS_FINAL, align 4
  %9 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %10 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %9, i32 0, i32 0
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %16 = load i32, i32* @SHA_REG_CTRL, align 4
  %17 = load i32, i32* @SHA_REG_CTRL_LENGTH, align 4
  %18 = call i32 @omap_sham_write_mask(%struct.omap_sham_dev* %15, i32 %16, i32 0, i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %21 = load i32, i32* @SHA_REG_CTRL, align 4
  %22 = load i32, i32* @SHA_REG_CTRL_OUTPUT_READY, align 4
  %23 = load i32, i32* @SHA_REG_CTRL_OUTPUT_READY, align 4
  %24 = call i32 @omap_sham_write_mask(%struct.omap_sham_dev* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %26 = load i32, i32* @SHA_REG_CTRL, align 4
  %27 = call i32 @omap_sham_read(%struct.omap_sham_dev* %25, i32 %26)
  %28 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %29 = call i32 @omap_sham_irq_common(%struct.omap_sham_dev* %28)
  ret i32 %29
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @omap_sham_write_mask(%struct.omap_sham_dev*, i32, i32, i32) #1

declare dso_local i32 @omap_sham_read(%struct.omap_sham_dev*, i32) #1

declare dso_local i32 @omap_sham_irq_common(%struct.omap_sham_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
