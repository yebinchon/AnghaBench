; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_auide_ddma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_auide_ddma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ide_port_info = type { i32 }

@auide_hwif = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@DEV_FLAGS_SYNC = common dso_local global i32 0, align 4
@DSCR_CMD0_ALWAYS = common dso_local global i8* null, align 8
@DEV_FLAGS_OUT = common dso_local global i32 0, align 4
@DEV_FLAGS_IN = common dso_local global i32 0, align 4
@NUM_DESCRIPTORS = common dso_local global i32 0, align 4
@DEV_FLAGS_BURSTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ide_port_info*)* @auide_ddma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auide_ddma_init(i32* %0, %struct.ide_port_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ide_port_info*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ide_port_info* %1, %struct.ide_port_info** %4, align 8
  store %struct.TYPE_3__* @auide_hwif, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* @DEV_FLAGS_SYNC, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i8*, i8** @DSCR_CMD0_ALWAYS, align 8
  %10 = ptrtoint i8* %9 to i32
  %11 = load i32, i32* @DEV_FLAGS_OUT, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @auide_init_dbdma_dev(i32* %6, i32 %10, i32 8, i32 32, i32 %13, i32 %16)
  %18 = call i8* @au1xxx_ddma_add_device(i32* %6)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @DSCR_CMD0_ALWAYS, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = load i32, i32* @DEV_FLAGS_IN, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @auide_init_dbdma_dev(i32* %6, i32 %22, i32 8, i32 32, i32 %25, i32 %28)
  %30 = call i8* @au1xxx_ddma_add_device(i32* %6)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @DSCR_CMD0_ALWAYS, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = bitcast %struct.TYPE_3__* %37 to i8*
  %39 = call i8* @au1xxx_dbdma_chan_alloc(i8* %33, i8* %36, i32* null, i8* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @DSCR_CMD0_ALWAYS, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = bitcast %struct.TYPE_3__* %46 to i8*
  %48 = call i8* @au1xxx_dbdma_chan_alloc(i8* %44, i8* %45, i32* null, i8* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @NUM_DESCRIPTORS, align 4
  %55 = call i64 @au1xxx_dbdma_ring_alloc(i8* %53, i32 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @NUM_DESCRIPTORS, align 4
  %63 = call i64 @au1xxx_dbdma_ring_alloc(i8* %61, i32 %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @au1xxx_dbdma_start(i8* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @au1xxx_dbdma_start(i8* %73)
  ret i32 0
}

declare dso_local i32 @auide_init_dbdma_dev(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @au1xxx_ddma_add_device(i32*) #1

declare dso_local i8* @au1xxx_dbdma_chan_alloc(i8*, i8*, i32*, i8*) #1

declare dso_local i64 @au1xxx_dbdma_ring_alloc(i8*, i32) #1

declare dso_local i32 @au1xxx_dbdma_start(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
