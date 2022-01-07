; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_processpptables.c_vega20_pp_tables_uninitialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_processpptables.c_vega20_pp_tables_uninitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32* }
%struct.phm_ppt_v3_information = type { i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega20_pp_tables_uninitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_pp_tables_uninitialize(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.phm_ppt_v3_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.phm_ppt_v3_information*
  store %struct.phm_ppt_v3_information* %7, %struct.phm_ppt_v3_information** %3, align 8
  %8 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %9 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @kfree(i32* %10)
  %12 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %13 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %12, i32 0, i32 5
  store i32* null, i32** %13, align 8
  %14 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %15 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %19 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %21 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kfree(i32* %22)
  %24 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %25 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %27 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %31 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %33 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kfree(i32* %34)
  %36 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %37 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %39 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %43 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @kfree(i32* %46)
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  ret i32 0
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
