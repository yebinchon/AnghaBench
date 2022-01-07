; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_del_init_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_del_init_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32*, i32*, i32*, i32*, i32, i32, %struct.i40iw_sc_dev }
%struct.i40iw_sc_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*)* @i40iw_del_init_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_del_init_mem(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %4 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %5 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %4, i32 0, i32 6
  store %struct.i40iw_sc_dev* %5, %struct.i40iw_sc_dev** %3, align 8
  %6 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %7 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %6, i32 0, i32 5
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %8, i32 0, i32 4
  %10 = call i32 @i40iw_free_dma_mem(i32* %7, i32* %9)
  %11 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %19 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %24 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %28 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %30 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %34 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %36 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %40 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %42 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %46 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  ret void
}

declare dso_local i32 @i40iw_free_dma_mem(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
