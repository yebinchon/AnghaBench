; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_get_dma_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_get_dma_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, i32 }

@EFA_REGS_CAPS_OFF = common dso_local global i32 0, align 4
@EFA_REGS_CAPS_DMA_ADDR_WIDTH_MASK = common dso_local global i32 0, align 4
@EFA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"DMA width: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"DMA width illegal value: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_get_dma_width(%struct.efa_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efa_com_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %3, align 8
  %6 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %7 = load i32, i32* @EFA_REGS_CAPS_OFF, align 4
  %8 = call i32 @efa_com_reg_read32(%struct.efa_com_dev* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EFA_REGS_CAPS_DMA_ADDR_WIDTH_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @EFA_REGS_CAPS_DMA_ADDR_WIDTH_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %15 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ibdev_dbg(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 64
  br i1 %23, label %24, label %32

24:                                               ; preds = %21, %1
  %25 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %26 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ibdev_err(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %35 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %24
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @efa_com_reg_read32(%struct.efa_com_dev*, i32) #1

declare dso_local i32 @ibdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @ibdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
