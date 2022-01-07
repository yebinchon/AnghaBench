; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_map_mr_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_map_mr_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.scatterlist = type { i32 }
%struct.pvrdma_user_mr = type { i64 }
%struct.pvrdma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@pvrdma_set_page = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"could not map sg to pages\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_map_mr_sg(%struct.ib_mr* %0, %struct.scatterlist* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pvrdma_user_mr*, align 8
  %10 = alloca %struct.pvrdma_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %13 = call %struct.pvrdma_user_mr* @to_vmr(%struct.ib_mr* %12)
  store %struct.pvrdma_user_mr* %13, %struct.pvrdma_user_mr** %9, align 8
  %14 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %15 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pvrdma_dev* @to_vdev(i32 %16)
  store %struct.pvrdma_dev* %17, %struct.pvrdma_dev** %10, align 8
  %18 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %9, align 8
  %19 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @pvrdma_set_page, align 4
  %25 = call i32 @ib_sg_to_pages(%struct.ib_mr* %20, %struct.scatterlist* %21, i32 %22, i32* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %10, align 8
  %30 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %28, %4
  %35 = load i32, i32* %11, align 4
  ret i32 %35
}

declare dso_local %struct.pvrdma_user_mr* @to_vmr(%struct.ib_mr*) #1

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local i32 @ib_sg_to_pages(%struct.ib_mr*, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
