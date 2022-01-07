; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.st_fdma_driverdata = type { i8*, i32 }
%struct.st_fdma_dev = type { i32, i32 }

@FW_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fdma_%s_%d.elf\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.st_fdma_driverdata*, %struct.st_fdma_dev*)* @st_fdma_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_fdma_parse_dt(%struct.platform_device* %0, %struct.st_fdma_driverdata* %1, %struct.st_fdma_dev* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.st_fdma_driverdata*, align 8
  %6 = alloca %struct.st_fdma_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.st_fdma_driverdata* %1, %struct.st_fdma_driverdata** %5, align 8
  store %struct.st_fdma_dev* %2, %struct.st_fdma_dev** %6, align 8
  %7 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %6, align 8
  %8 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FW_NAME_SIZE, align 4
  %11 = load %struct.st_fdma_driverdata*, %struct.st_fdma_driverdata** %5, align 8
  %12 = getelementptr inbounds %struct.st_fdma_driverdata, %struct.st_fdma_driverdata* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.st_fdma_driverdata*, %struct.st_fdma_driverdata** %5, align 8
  %15 = getelementptr inbounds %struct.st_fdma_driverdata, %struct.st_fdma_driverdata* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @snprintf(i32 %9, i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %6, align 8
  %23 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %22, i32 0, i32 0
  %24 = call i32 @of_property_read_u32(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %23)
  ret i32 %24
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
