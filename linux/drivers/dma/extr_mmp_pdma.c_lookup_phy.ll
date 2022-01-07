; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_lookup_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_lookup_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_pdma_phy = type { %struct.mmp_pdma_chan* }
%struct.mmp_pdma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmp_pdma_device = type { i32, i32, %struct.mmp_pdma_phy* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmp_pdma_phy* (%struct.mmp_pdma_chan*)* @lookup_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmp_pdma_phy* @lookup_phy(%struct.mmp_pdma_chan* %0) #0 {
  %2 = alloca %struct.mmp_pdma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmp_pdma_device*, align 8
  %6 = alloca %struct.mmp_pdma_phy*, align 8
  %7 = alloca %struct.mmp_pdma_phy*, align 8
  %8 = alloca i64, align 8
  store %struct.mmp_pdma_chan* %0, %struct.mmp_pdma_chan** %2, align 8
  %9 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mmp_pdma_device* @to_mmp_pdma_dev(i32 %12)
  store %struct.mmp_pdma_device* %13, %struct.mmp_pdma_device** %5, align 8
  store %struct.mmp_pdma_phy* null, %struct.mmp_pdma_phy** %7, align 8
  %14 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %15 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %14, i32 0, i32 1
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %62, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %21 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %23, 15
  %25 = ashr i32 %24, 2
  %26 = icmp sle i32 %19, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %58, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %31 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 15
  %38 = ashr i32 %37, 2
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %58

41:                                               ; preds = %34
  %42 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %43 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %42, i32 0, i32 2
  %44 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %44, i64 %46
  store %struct.mmp_pdma_phy* %47, %struct.mmp_pdma_phy** %6, align 8
  %48 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %6, align 8
  %49 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %48, i32 0, i32 0
  %50 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %49, align 8
  %51 = icmp ne %struct.mmp_pdma_chan* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %41
  %53 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %2, align 8
  %54 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %6, align 8
  %55 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %54, i32 0, i32 0
  store %struct.mmp_pdma_chan* %53, %struct.mmp_pdma_chan** %55, align 8
  %56 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %6, align 8
  store %struct.mmp_pdma_phy* %56, %struct.mmp_pdma_phy** %7, align 8
  br label %66

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %28

61:                                               ; preds = %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %18

65:                                               ; preds = %18
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %68 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %67, i32 0, i32 1
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %7, align 8
  ret %struct.mmp_pdma_phy* %71
}

declare dso_local %struct.mmp_pdma_device* @to_mmp_pdma_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
