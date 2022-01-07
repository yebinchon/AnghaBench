; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_idmac_desc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_idmac_desc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmac_channel = type { i32, i32, %struct.TYPE_4__, i32, %struct.idmac_tx_desc* }
%struct.TYPE_4__ = type { i32 }
%struct.idmac_tx_desc = type { i32, %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.idmac = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@idmac_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmac_channel*, i32)* @idmac_desc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idmac_desc_alloc(%struct.idmac_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idmac_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idmac_tx_desc*, align 8
  %7 = alloca %struct.idmac*, align 8
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.idmac_channel* %0, %struct.idmac_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @array_size(i32 %9, i32 8)
  %11 = call %struct.idmac_tx_desc* @vmalloc(i32 %10)
  store %struct.idmac_tx_desc* %11, %struct.idmac_tx_desc** %6, align 8
  %12 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %13 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.idmac* @to_idmac(i32 %15)
  store %struct.idmac* %16, %struct.idmac** %7, align 8
  %17 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %18 = icmp ne %struct.idmac_tx_desc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %67

22:                                               ; preds = %2
  %23 = load %struct.idmac*, %struct.idmac** %7, align 8
  %24 = call %struct.TYPE_3__* @to_ipu(%struct.idmac* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @tasklet_disable(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %29 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %31 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %32 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %31, i32 0, i32 4
  store %struct.idmac_tx_desc* %30, %struct.idmac_tx_desc** %32, align 8
  %33 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %34 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %33, i32 0, i32 3
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %37 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %36, i32 0, i32 1
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  br label %39

39:                                               ; preds = %43, %22
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %45 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %44, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %45, %struct.dma_async_tx_descriptor** %8, align 8
  %46 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %47 = call i32 @memset(%struct.dma_async_tx_descriptor* %46, i32 0, i32 4)
  %48 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %49 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %50 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %49, i32 0, i32 2
  %51 = call i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor* %48, %struct.TYPE_4__* %50)
  %52 = load i32, i32* @idmac_tx_submit, align 4
  %53 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %54 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %56 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %55, i32 0, i32 0
  %57 = load %struct.idmac_channel*, %struct.idmac_channel** %4, align 8
  %58 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %57, i32 0, i32 1
  %59 = call i32 @list_add(i32* %56, i32* %58)
  %60 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %6, align 8
  %61 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %60, i32 1
  store %struct.idmac_tx_desc* %61, %struct.idmac_tx_desc** %6, align 8
  br label %39

62:                                               ; preds = %39
  %63 = load %struct.idmac*, %struct.idmac** %7, align 8
  %64 = call %struct.TYPE_3__* @to_ipu(%struct.idmac* %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @tasklet_enable(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.idmac_tx_desc* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local %struct.TYPE_3__* @to_ipu(%struct.idmac*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(%struct.dma_async_tx_descriptor*, i32, i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor*, %struct.TYPE_4__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
