; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_dmae_find_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_dmae_find_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_slave_config = type { i32, i32 }
%struct.sh_dmae_chan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sh_dmae_device = type { %struct.sh_dmae_pdata* }
%struct.sh_dmae_pdata = type { i32, %struct.sh_dmae_slave_config* }

@SH_DMA_SLAVE_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sh_dmae_slave_config* (%struct.sh_dmae_chan*, i32)* @dmae_find_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sh_dmae_slave_config* @dmae_find_slave(%struct.sh_dmae_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_dmae_slave_config*, align 8
  %4 = alloca %struct.sh_dmae_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sh_dmae_device*, align 8
  %7 = alloca %struct.sh_dmae_pdata*, align 8
  %8 = alloca %struct.sh_dmae_slave_config*, align 8
  %9 = alloca i32, align 4
  store %struct.sh_dmae_chan* %0, %struct.sh_dmae_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %11 = call %struct.sh_dmae_device* @to_sh_dev(%struct.sh_dmae_chan* %10)
  store %struct.sh_dmae_device* %11, %struct.sh_dmae_device** %6, align 8
  %12 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %6, align 8
  %13 = getelementptr inbounds %struct.sh_dmae_device, %struct.sh_dmae_device* %12, i32 0, i32 0
  %14 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %13, align 8
  store %struct.sh_dmae_pdata* %14, %struct.sh_dmae_pdata** %7, align 8
  %15 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %16 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SH_DMA_SLAVE_NUMBER, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.sh_dmae_slave_config* null, %struct.sh_dmae_slave_config** %3, align 8
  br label %82

27:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  %28 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %7, align 8
  %29 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %28, i32 0, i32 1
  %30 = load %struct.sh_dmae_slave_config*, %struct.sh_dmae_slave_config** %29, align 8
  store %struct.sh_dmae_slave_config* %30, %struct.sh_dmae_slave_config** %8, align 8
  br label %31

31:                                               ; preds = %46, %27
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %7, align 8
  %34 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.sh_dmae_slave_config*, %struct.sh_dmae_slave_config** %8, align 8
  %39 = getelementptr inbounds %struct.sh_dmae_slave_config, %struct.sh_dmae_slave_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load %struct.sh_dmae_slave_config*, %struct.sh_dmae_slave_config** %8, align 8
  store %struct.sh_dmae_slave_config* %44, %struct.sh_dmae_slave_config** %3, align 8
  br label %82

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load %struct.sh_dmae_slave_config*, %struct.sh_dmae_slave_config** %8, align 8
  %50 = getelementptr inbounds %struct.sh_dmae_slave_config, %struct.sh_dmae_slave_config* %49, i32 1
  store %struct.sh_dmae_slave_config* %50, %struct.sh_dmae_slave_config** %8, align 8
  br label %31

51:                                               ; preds = %31
  br label %81

52:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %53 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %7, align 8
  %54 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %53, i32 0, i32 1
  %55 = load %struct.sh_dmae_slave_config*, %struct.sh_dmae_slave_config** %54, align 8
  store %struct.sh_dmae_slave_config* %55, %struct.sh_dmae_slave_config** %8, align 8
  br label %56

56:                                               ; preds = %75, %52
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.sh_dmae_pdata*, %struct.sh_dmae_pdata** %7, align 8
  %59 = getelementptr inbounds %struct.sh_dmae_pdata, %struct.sh_dmae_pdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load %struct.sh_dmae_slave_config*, %struct.sh_dmae_slave_config** %8, align 8
  %64 = getelementptr inbounds %struct.sh_dmae_slave_config, %struct.sh_dmae_slave_config* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %71 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.sh_dmae_slave_config*, %struct.sh_dmae_slave_config** %8, align 8
  store %struct.sh_dmae_slave_config* %73, %struct.sh_dmae_slave_config** %3, align 8
  br label %82

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load %struct.sh_dmae_slave_config*, %struct.sh_dmae_slave_config** %8, align 8
  %79 = getelementptr inbounds %struct.sh_dmae_slave_config, %struct.sh_dmae_slave_config* %78, i32 1
  store %struct.sh_dmae_slave_config* %79, %struct.sh_dmae_slave_config** %8, align 8
  br label %56

80:                                               ; preds = %56
  br label %81

81:                                               ; preds = %80, %51
  store %struct.sh_dmae_slave_config* null, %struct.sh_dmae_slave_config** %3, align 8
  br label %82

82:                                               ; preds = %81, %68, %43, %26
  %83 = load %struct.sh_dmae_slave_config*, %struct.sh_dmae_slave_config** %3, align 8
  ret %struct.sh_dmae_slave_config* %83
}

declare dso_local %struct.sh_dmae_device* @to_sh_dev(%struct.sh_dmae_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
