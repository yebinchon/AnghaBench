; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_init_sys_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_init_sys_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }
%struct.dc = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, %struct.dcn_hubbub_phys_addr_config*)* }
%struct.dcn_hubbub_phys_addr_config = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dc_phy_addr_space_config = type { i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_hwseq*, %struct.dc*, %struct.dc_phy_addr_space_config*)* @dcn20_init_sys_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcn20_init_sys_ctx(%struct.dce_hwseq* %0, %struct.dc* %1, %struct.dc_phy_addr_space_config* %2) #0 {
  %4 = alloca %struct.dce_hwseq*, align 8
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_phy_addr_space_config*, align 8
  %7 = alloca %struct.dcn_hubbub_phys_addr_config, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %4, align 8
  store %struct.dc* %1, %struct.dc** %5, align 8
  store %struct.dc_phy_addr_space_config* %2, %struct.dc_phy_addr_space_config** %6, align 8
  %8 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %9 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %15 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %21 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %27 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %33 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %39 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %45 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %51 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %57 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dc_phy_addr_space_config*, %struct.dc_phy_addr_space_config** %6, align 8
  %63 = getelementptr inbounds %struct.dc_phy_addr_space_config, %struct.dc_phy_addr_space_config* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %7, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.dc*, %struct.dc** %5, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_14__*, %struct.dcn_hubbub_phys_addr_config*)*, i32 (%struct.TYPE_14__*, %struct.dcn_hubbub_phys_addr_config*)** %73, align 8
  %75 = load %struct.dc*, %struct.dc** %5, align 8
  %76 = getelementptr inbounds %struct.dc, %struct.dc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = call i32 %74(%struct.TYPE_14__* %79, %struct.dcn_hubbub_phys_addr_config* %7)
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
