; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_set_dp_phy_pattern_80bit_custom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_set_dp_phy_pattern_80bit_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_link_encoder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_link_encoder*, i32*)* @set_dp_phy_pattern_80bit_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dp_phy_pattern_80bit_custom(%struct.dcn10_link_encoder* %0, i32* %1) #0 {
  %3 = alloca %struct.dcn10_link_encoder*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i32], align 16
  store %struct.dcn10_link_encoder* %0, %struct.dcn10_link_encoder** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %7 = call i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder* %6, i32 0)
  %8 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %9 = call i32 @disable_prbs_symbols(%struct.dcn10_link_encoder* %8, i32 1)
  %10 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %11 = call i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder* %10, i32 1)
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 3
  %16 = shl i32 %15, 8
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 15
  %26 = shl i32 %25, 6
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 2
  %31 = and i32 %30, 63
  %32 = or i32 %26, %31
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 63
  %38 = shl i32 %37, 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 4
  %43 = and i32 %42, 15
  %44 = or i32 %38, %43
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 %44, i32* %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 2
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 6
  %54 = and i32 %53, 3
  %55 = or i32 %49, %54
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 3
  %61 = shl i32 %60, 8
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %65, i32* %66, align 16
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 7
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 15
  %71 = shl i32 %70, 6
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 2
  %76 = and i32 %75, 63
  %77 = or i32 %71, %76
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 63
  %83 = shl i32 %82, 4
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 4
  %88 = and i32 %87, 15
  %89 = or i32 %83, %88
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  store i32 %89, i32* %90, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 9
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 2
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 8
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 6
  %99 = and i32 %98, 3
  %100 = or i32 %94, %99
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %100, i32* %101, align 4
  %102 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %104 = call i32 @program_pattern_symbols(%struct.dcn10_link_encoder* %102, i32* %103)
  %105 = load %struct.dcn10_link_encoder*, %struct.dcn10_link_encoder** %3, align 8
  %106 = call i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder* %105, i32 1)
  ret void
}

declare dso_local i32 @enable_phy_bypass_mode(%struct.dcn10_link_encoder*, i32) #1

declare dso_local i32 @disable_prbs_symbols(%struct.dcn10_link_encoder*, i32) #1

declare dso_local i32 @program_pattern_symbols(%struct.dcn10_link_encoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
