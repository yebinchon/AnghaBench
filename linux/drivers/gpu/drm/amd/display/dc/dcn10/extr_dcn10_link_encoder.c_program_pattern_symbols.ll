; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_program_pattern_symbols.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_link_encoder.c_program_pattern_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_link_encoder = type { i32 }

@DP_DPHY_SYM0 = common dso_local global i32 0, align 4
@DPHY_SYM1 = common dso_local global i32 0, align 4
@DPHY_SYM2 = common dso_local global i32 0, align 4
@DPHY_SYM3 = common dso_local global i32 0, align 4
@DP_DPHY_SYM1 = common dso_local global i32 0, align 4
@DPHY_SYM4 = common dso_local global i32 0, align 4
@DPHY_SYM5 = common dso_local global i32 0, align 4
@DPHY_SYM6 = common dso_local global i32 0, align 4
@DP_DPHY_SYM2 = common dso_local global i32 0, align 4
@DPHY_SYM7 = common dso_local global i32 0, align 4
@DPHY_SYM8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_link_encoder*, i32*)* @program_pattern_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_pattern_symbols(%struct.dcn10_link_encoder* %0, i32* %1) #0 {
  %3 = alloca %struct.dcn10_link_encoder*, align 8
  %4 = alloca i32*, align 8
  store %struct.dcn10_link_encoder* %0, %struct.dcn10_link_encoder** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @DP_DPHY_SYM0, align 4
  %6 = load i32, i32* @DPHY_SYM1, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DPHY_SYM2, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DPHY_SYM3, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @REG_SET_3(i32 %5, i32 0, i32 %6, i32 %9, i32 %10, i32 %13, i32 %14, i32 %17)
  %19 = load i32, i32* @DP_DPHY_SYM1, align 4
  %20 = load i32, i32* @DPHY_SYM4, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DPHY_SYM5, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DPHY_SYM6, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @REG_SET_3(i32 %19, i32 0, i32 %20, i32 %23, i32 %24, i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* @DP_DPHY_SYM2, align 4
  %34 = load i32, i32* @DPHY_SYM7, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DPHY_SYM8, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REG_SET_2(i32 %33, i32 0, i32 %34, i32 %37, i32 %38, i32 %41)
  ret void
}

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
