; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_log2size_to_chcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_log2size_to_chcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_chan = type { i32 }
%struct.sh_dmae_device = type { %struct.sh_dmae_pdata* }
%struct.sh_dmae_pdata = type { i32, i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_dmae_chan*, i32)* @log2size_to_chcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log2size_to_chcr(%struct.sh_dmae_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_dmae_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_dmae_device*, align 8
  %6 = alloca %struct.sh_dmae_pdata*, align 8
  %7 = alloca i32, align 4
  store %struct.sh_dmae_chan* %0, %struct.sh_dmae_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %9 = call %struct.sh_dmae_device* @to_sh_dev(%struct.sh_dmae_chan* %8)
  store %struct.sh_dmae_device* %9, %struct.sh_dmae_device** %5, align 8
  %10 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %5, align 8
  %11 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %10, i32 0, i32 0
  %12 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %11, align 8
  store %struct.sh_dmae_pdata* %12, %struct.sh_dmae_pdata** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %6, align 8
  %16 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %6, align 8
  %21 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %13

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %6, align 8
  %37 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %6, align 8
  %44 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %42, %45
  %47 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %6, align 8
  %48 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %6, align 8
  %53 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %51, %54
  %56 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %6, align 8
  %57 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %55, %58
  %60 = or i32 %50, %59
  ret i32 %60
}

declare dso_local %struct.sh_dmae_device* @to_sh_dev(%struct.sh_dmae_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
