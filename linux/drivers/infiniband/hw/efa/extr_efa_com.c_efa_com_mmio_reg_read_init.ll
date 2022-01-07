; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_mmio_reg_read_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_mmio_reg_read_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, %struct.efa_com_mmio_read }
%struct.efa_com_mmio_read = type { i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFA_REG_READ_TIMEOUT_US = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_mmio_reg_read_init(%struct.efa_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efa_com_dev*, align 8
  %4 = alloca %struct.efa_com_mmio_read*, align 8
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %3, align 8
  %5 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %6 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %5, i32 0, i32 1
  store %struct.efa_com_mmio_read* %6, %struct.efa_com_mmio_read** %4, align 8
  %7 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %4, align 8
  %8 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %7, i32 0, i32 4
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %11 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %4, align 8
  %14 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %13, i32 0, i32 3
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_2__* @dma_alloc_coherent(i32 %12, i32 8, i32* %14, i32 %15)
  %17 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %4, align 8
  %18 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %17, i32 0, i32 2
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %18, align 8
  %19 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %4, align 8
  %20 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %28 = call i32 @efa_com_mmio_reg_read_resp_addr_init(%struct.efa_com_dev* %27)
  %29 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %4, align 8
  %30 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %4, align 8
  %34 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @EFA_REG_READ_TIMEOUT_US, align 4
  %36 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %4, align 8
  %37 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %26, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_2__* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @efa_com_mmio_reg_read_resp_addr_init(%struct.efa_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
