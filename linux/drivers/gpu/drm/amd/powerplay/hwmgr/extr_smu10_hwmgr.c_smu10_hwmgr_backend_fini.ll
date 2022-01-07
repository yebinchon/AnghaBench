; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_hwmgr_backend_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_hwmgr_backend_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.smu10_hwmgr = type { %struct.smu10_clock_voltage_information }
%struct.smu10_clock_voltage_information = type { i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu10_hwmgr_backend_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_hwmgr_backend_fini(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu10_hwmgr*, align 8
  %4 = alloca %struct.smu10_clock_voltage_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to %struct.smu10_hwmgr*
  store %struct.smu10_hwmgr* %8, %struct.smu10_hwmgr** %3, align 8
  %9 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %9, i32 0, i32 0
  store %struct.smu10_clock_voltage_information* %10, %struct.smu10_clock_voltage_information** %4, align 8
  %11 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %12 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kfree(i32* %13)
  %15 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %16 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %15, i32 0, i32 5
  store i32* null, i32** %16, align 8
  %17 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %18 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kfree(i32* %19)
  %21 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %22 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %24 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %28 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %30 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %34 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %36 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %40 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %42 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load %struct.smu10_clock_voltage_information*, %struct.smu10_clock_voltage_information** %4, align 8
  %46 = getelementptr inbounds %struct.smu10_clock_voltage_information, %struct.smu10_clock_voltage_information* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %48 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @kfree(i32* %50)
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %53 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %56 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  ret i32 0
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
