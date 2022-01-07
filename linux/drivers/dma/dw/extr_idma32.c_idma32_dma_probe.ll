; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_idma32.c_idma32_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chip = type { %struct.dw_dma*, i32 }
%struct.dw_dma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@idma32_initialize_chan = common dso_local global i32 0, align 4
@idma32_suspend_chan = common dso_local global i32 0, align 4
@idma32_resume_chan = common dso_local global i32 0, align 4
@idma32_prepare_ctllo = common dso_local global i32 0, align 4
@idma32_encode_maxburst = common dso_local global i32 0, align 4
@idma32_bytes2block = common dso_local global i32 0, align 4
@idma32_block2bytes = common dso_local global i32 0, align 4
@idma32_set_device_name = common dso_local global i32 0, align 4
@idma32_disable = common dso_local global i32 0, align 4
@idma32_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idma32_dma_probe(%struct.dw_dma_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_dma_chip*, align 8
  %4 = alloca %struct.dw_dma*, align 8
  store %struct.dw_dma_chip* %0, %struct.dw_dma_chip** %3, align 8
  %5 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %3, align 8
  %6 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dw_dma* @devm_kzalloc(i32 %7, i32 40, i32 %8)
  store %struct.dw_dma* %9, %struct.dw_dma** %4, align 8
  %10 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %11 = icmp ne %struct.dw_dma* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load i32, i32* @idma32_initialize_chan, align 4
  %17 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %18 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @idma32_suspend_chan, align 4
  %20 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %21 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @idma32_resume_chan, align 4
  %23 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %24 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @idma32_prepare_ctllo, align 4
  %26 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %27 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @idma32_encode_maxburst, align 4
  %29 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %30 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @idma32_bytes2block, align 4
  %32 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %33 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @idma32_block2bytes, align 4
  %35 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %36 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @idma32_set_device_name, align 4
  %38 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %39 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @idma32_disable, align 4
  %41 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %42 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @idma32_enable, align 4
  %44 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %45 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %47 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %3, align 8
  %48 = getelementptr inbounds %struct.dw_dma_chip, %struct.dw_dma_chip* %47, i32 0, i32 0
  store %struct.dw_dma* %46, %struct.dw_dma** %48, align 8
  %49 = load %struct.dw_dma_chip*, %struct.dw_dma_chip** %3, align 8
  %50 = call i32 @do_dma_probe(%struct.dw_dma_chip* %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %15, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.dw_dma* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @do_dma_probe(%struct.dw_dma_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
