; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_dma_trigger_omap4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_dma_trigger_omap4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_des_dev = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_des_dev*, i32)* @omap_des_dma_trigger_omap4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_des_dma_trigger_omap4(%struct.omap_des_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_des_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_des_dev* %0, %struct.omap_des_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %8 = call i32 @DES_REG_LENGTH_N(i32 0)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @omap_des_write(%struct.omap_des_dev* %7, i32 %8, i32 %9)
  %11 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %12 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %17 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %22 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %30 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %35 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %43 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %48 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %46, %51
  %53 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %54 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %52, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %60 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %61 = call i32 @DES_REG_MASK(%struct.omap_des_dev* %60)
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @omap_des_write_mask(%struct.omap_des_dev* %59, i32 %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @omap_des_write(%struct.omap_des_dev*, i32, i32) #1

declare dso_local i32 @DES_REG_LENGTH_N(i32) #1

declare dso_local i32 @omap_des_write_mask(%struct.omap_des_dev*, i32, i32, i32) #1

declare dso_local i32 @DES_REG_MASK(%struct.omap_des_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
