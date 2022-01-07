; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_au_ide_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_au_ide_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.ide_host = type { i32 }

@auide_hwif = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au_ide_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au_ide_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.ide_host*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.ide_host* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.ide_host* %7, %struct.ide_host** %4, align 8
  store %struct.TYPE_3__* @auide_hwif, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.ide_host*, %struct.ide_host** %4, align 8
  %9 = call i32 @ide_host_remove(%struct.ide_host* %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @iounmap(i8* %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %3, align 8
  %18 = load %struct.resource*, %struct.resource** %3, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.resource*, %struct.resource** %3, align 8
  %22 = call i32 @resource_size(%struct.resource* %21)
  %23 = call i32 @release_mem_region(i32 %20, i32 %22)
  ret i32 0
}

declare dso_local %struct.ide_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ide_host_remove(%struct.ide_host*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
