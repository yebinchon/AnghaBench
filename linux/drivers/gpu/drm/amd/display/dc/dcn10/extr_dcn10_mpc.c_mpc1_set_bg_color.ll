; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_set_bg_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_set_bg_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.tg_color = type { i32, i32, i32 }
%struct.dcn10_mpc = type { i32 }

@MPCC_BG_R_CR = common dso_local global i32* null, align 8
@MPCC_BG_G_Y = common dso_local global i32* null, align 8
@MPCC_BG_B_CB = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc1_set_bg_color(%struct.mpc* %0, %struct.tg_color* %1, i32 %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca %struct.tg_color*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_mpc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store %struct.tg_color* %1, %struct.tg_color** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mpc*, %struct.mpc** %4, align 8
  %12 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %11)
  store %struct.dcn10_mpc* %12, %struct.dcn10_mpc** %7, align 8
  %13 = load %struct.tg_color*, %struct.tg_color** %5, align 8
  %14 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 2
  store i32 %16, i32* %8, align 4
  %17 = load %struct.tg_color*, %struct.tg_color** %5, align 8
  %18 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 2
  store i32 %20, i32* %9, align 4
  %21 = load %struct.tg_color*, %struct.tg_color** %5, align 8
  %22 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 2
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** @MPCC_BG_R_CR, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @MPCC_BG_R_CR, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @REG_SET(i32 %29, i32 0, i32* %30, i32 %31)
  %33 = load i32*, i32** @MPCC_BG_G_Y, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @MPCC_BG_G_Y, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @REG_SET(i32 %37, i32 0, i32* %38, i32 %39)
  %41 = load i32*, i32** @MPCC_BG_B_CB, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @MPCC_BG_B_CB, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @REG_SET(i32 %45, i32 0, i32* %46, i32 %47)
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_SET(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
