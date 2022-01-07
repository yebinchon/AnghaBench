; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_stm_init_generic_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-stm.c_stm_init_generic_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_drvdata = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BYTES_PER_CHANNEL = common dso_local global i32 0, align 4
@stm_generic_packet = common dso_local global i32 0, align 4
@stm_mmio_addr = common dso_local global i32 0, align 4
@stm_generic_link = common dso_local global i32 0, align 4
@stm_generic_unlink = common dso_local global i32 0, align 4
@stm_generic_set_options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm_drvdata*, i8*)* @stm_init_generic_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm_init_generic_data(%struct.stm_drvdata* %0, i8* %1) #0 {
  %3 = alloca %struct.stm_drvdata*, align 8
  %4 = alloca i8*, align 8
  store %struct.stm_drvdata* %0, %struct.stm_drvdata** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i8* %5, i8** %8, align 8
  %9 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 1, i32* %11, align 8
  %12 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %13 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %16 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 1, i32* %17, align 8
  %18 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %19 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %22 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 10
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @BYTES_PER_CHANNEL, align 4
  %25 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %26 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 9
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @stm_generic_packet, align 4
  %29 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %30 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 8
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @stm_mmio_addr, align 4
  %33 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %34 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 7
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @stm_generic_link, align 4
  %37 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %38 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @stm_generic_unlink, align 4
  %41 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %42 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @stm_generic_set_options, align 4
  %45 = load %struct.stm_drvdata*, %struct.stm_drvdata** %3, align 8
  %46 = getelementptr inbounds %struct.stm_drvdata, %struct.stm_drvdata* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
