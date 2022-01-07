; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr3_init_2500.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr3_init_2500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@REGIDX_010 = common dso_local global i64 0, align 8
@REGIDX_014 = common dso_local global i64 0, align 8
@REGIDX_018 = common dso_local global i64 0, align 8
@REGIDX_020 = common dso_local global i64 0, align 8
@REGIDX_024 = common dso_local global i64 0, align 8
@REGIDX_02C = common dso_local global i64 0, align 8
@REGIDX_030 = common dso_local global i64 0, align 8
@REGIDX_214 = common dso_local global i64 0, align 8
@REGIDX_2E0 = common dso_local global i64 0, align 8
@REGIDX_2E4 = common dso_local global i64 0, align 8
@REGIDX_2E8 = common dso_local global i64 0, align 8
@REGIDX_2EC = common dso_local global i64 0, align 8
@REGIDX_2F0 = common dso_local global i64 0, align 8
@REGIDX_2F4 = common dso_local global i64 0, align 8
@REGIDX_2F8 = common dso_local global i64 0, align 8
@REGIDX_PLL = common dso_local global i64 0, align 8
@REGIDX_RFC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*, i32*)* @ddr3_init_2500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddr3_init_2500(%struct.ast_private* %0, i32* %1) #0 {
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32*, align 8
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %6 = call i32 @ast_moutdwm(%struct.ast_private* %5, i32 510525444, i32 771)
  %7 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* @REGIDX_010, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ast_moutdwm(%struct.ast_private* %7, i32 510525456, i32 %11)
  %13 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* @REGIDX_014, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ast_moutdwm(%struct.ast_private* %13, i32 510525460, i32 %17)
  %19 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* @REGIDX_018, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ast_moutdwm(%struct.ast_private* %19, i32 510525464, i32 %23)
  %25 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* @REGIDX_020, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ast_moutdwm(%struct.ast_private* %25, i32 510525472, i32 %29)
  %31 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* @REGIDX_024, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ast_moutdwm(%struct.ast_private* %31, i32 510525476, i32 %35)
  %37 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* @REGIDX_02C, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 256
  %43 = call i32 @ast_moutdwm(%struct.ast_private* %37, i32 510525484, i32 %42)
  %44 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i64, i64* @REGIDX_030, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ast_moutdwm(%struct.ast_private* %44, i32 510525488, i32 %48)
  %50 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %51 = call i32 @ast_moutdwm(%struct.ast_private* %50, i32 510525952, i32 38349486)
  %52 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %53 = call i32 @ast_moutdwm(%struct.ast_private* %52, i32 510525956, i32 4097)
  %54 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %55 = call i32 @ast_moutdwm(%struct.ast_private* %54, i32 510525964, i32 1440746251)
  %56 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %57 = call i32 @ast_moutdwm(%struct.ast_private* %56, i32 510525968, i32 536870912)
  %58 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* @REGIDX_214, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ast_moutdwm(%struct.ast_private* %58, i32 510525972, i32 %62)
  %64 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* @REGIDX_2E0, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ast_moutdwm(%struct.ast_private* %64, i32 510526176, i32 %68)
  %70 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i64, i64* @REGIDX_2E4, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ast_moutdwm(%struct.ast_private* %70, i32 510526180, i32 %74)
  %76 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i64, i64* @REGIDX_2E8, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ast_moutdwm(%struct.ast_private* %76, i32 510526184, i32 %80)
  %82 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load i64, i64* @REGIDX_2EC, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ast_moutdwm(%struct.ast_private* %82, i32 510526188, i32 %86)
  %88 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i64, i64* @REGIDX_2F0, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ast_moutdwm(%struct.ast_private* %88, i32 510526192, i32 %92)
  %94 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load i64, i64* @REGIDX_2F4, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ast_moutdwm(%struct.ast_private* %94, i32 510526196, i32 %98)
  %100 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = load i64, i64* @REGIDX_2F8, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ast_moutdwm(%struct.ast_private* %100, i32 510526200, i32 %104)
  %106 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %107 = call i32 @ast_moutdwm(%struct.ast_private* %106, i32 510526096, i32 1048584)
  %108 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %109 = call i32 @ast_moutdwm(%struct.ast_private* %108, i32 510526144, i32 6)
  %110 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %111 = call i32 @ast_moutdwm(%struct.ast_private* %110, i32 510525492, i32 131217)
  %112 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %113 = call i32 @ddr_phy_init_2500(%struct.ast_private* %112)
  %114 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i64, i64* @REGIDX_PLL, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ast_moutdwm(%struct.ast_private* %114, i32 510525728, i32 %118)
  %120 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %121 = call i32 @ast_moutdwm(%struct.ast_private* %120, i32 510525452, i32 1118461057)
  %122 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %123 = call i32 @ast_moutdwm(%struct.ast_private* %122, i32 510525492, i32 110483)
  %124 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = load i64, i64* @REGIDX_RFC, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @check_dram_size_2500(%struct.ast_private* %124, i32 %128)
  %130 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %131 = call i32 @enable_cache_2500(%struct.ast_private* %130)
  %132 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %133 = call i32 @ast_moutdwm(%struct.ast_private* %132, i32 510525468, i32 8)
  %134 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %135 = call i32 @ast_moutdwm(%struct.ast_private* %134, i32 510525496, i32 -256)
  ret void
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ddr_phy_init_2500(%struct.ast_private*) #1

declare dso_local i32 @check_dram_size_2500(%struct.ast_private*, i32) #1

declare dso_local i32 @enable_cache_2500(%struct.ast_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
