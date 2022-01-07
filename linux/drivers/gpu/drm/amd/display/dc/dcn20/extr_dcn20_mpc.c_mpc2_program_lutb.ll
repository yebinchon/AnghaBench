; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_program_lutb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_program_lutb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.pwl_params = type { i32 }
%struct.dcn20_mpc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfer_func_reg = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MPCC_OGAM_RAMB_START_CNTL_B = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_START_CNTL_G = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_START_CNTL_R = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_SLOPE_CNTL_B = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_SLOPE_CNTL_G = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_SLOPE_CNTL_R = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_END_CNTL1_B = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_END_CNTL2_B = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_END_CNTL1_G = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_END_CNTL2_G = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_END_CNTL1_R = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_END_CNTL2_R = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_REGION_0_1 = common dso_local global i32* null, align 8
@MPCC_OGAM_RAMB_REGION_32_33 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpc*, i32, %struct.pwl_params*)* @mpc2_program_lutb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc2_program_lutb(%struct.mpc* %0, i32 %1, %struct.pwl_params* %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwl_params*, align 8
  %7 = alloca %struct.dcn20_mpc*, align 8
  %8 = alloca %struct.xfer_func_reg, align 8
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pwl_params* %2, %struct.pwl_params** %6, align 8
  %9 = load %struct.mpc*, %struct.mpc** %4, align 8
  %10 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %9)
  store %struct.dcn20_mpc* %10, %struct.dcn20_mpc** %7, align 8
  %11 = load %struct.mpc*, %struct.mpc** %4, align 8
  %12 = call i32 @mpc2_ogam_get_reg_field(%struct.mpc* %11, %struct.xfer_func_reg* %8)
  %13 = load i32*, i32** @MPCC_OGAM_RAMB_START_CNTL_B, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @REG(i32 %17)
  %19 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 13
  store i8* %18, i8** %19, align 8
  %20 = load i32*, i32** @MPCC_OGAM_RAMB_START_CNTL_G, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @REG(i32 %24)
  %26 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 12
  store i8* %25, i8** %26, align 8
  %27 = load i32*, i32** @MPCC_OGAM_RAMB_START_CNTL_R, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @REG(i32 %31)
  %33 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 11
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** @MPCC_OGAM_RAMB_SLOPE_CNTL_B, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @REG(i32 %38)
  %40 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 10
  store i8* %39, i8** %40, align 8
  %41 = load i32*, i32** @MPCC_OGAM_RAMB_SLOPE_CNTL_G, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @REG(i32 %45)
  %47 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 9
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** @MPCC_OGAM_RAMB_SLOPE_CNTL_R, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @REG(i32 %52)
  %54 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 8
  store i8* %53, i8** %54, align 8
  %55 = load i32*, i32** @MPCC_OGAM_RAMB_END_CNTL1_B, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @REG(i32 %59)
  %61 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 7
  store i8* %60, i8** %61, align 8
  %62 = load i32*, i32** @MPCC_OGAM_RAMB_END_CNTL2_B, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @REG(i32 %66)
  %68 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 6
  store i8* %67, i8** %68, align 8
  %69 = load i32*, i32** @MPCC_OGAM_RAMB_END_CNTL1_G, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @REG(i32 %73)
  %75 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 5
  store i8* %74, i8** %75, align 8
  %76 = load i32*, i32** @MPCC_OGAM_RAMB_END_CNTL2_G, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @REG(i32 %80)
  %82 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 4
  store i8* %81, i8** %82, align 8
  %83 = load i32*, i32** @MPCC_OGAM_RAMB_END_CNTL1_R, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @REG(i32 %87)
  %89 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  %90 = load i32*, i32** @MPCC_OGAM_RAMB_END_CNTL2_R, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @REG(i32 %94)
  %96 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 2
  store i8* %95, i8** %96, align 8
  %97 = load i32*, i32** @MPCC_OGAM_RAMB_REGION_0_1, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @REG(i32 %101)
  %103 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  %104 = load i32*, i32** @MPCC_OGAM_RAMB_REGION_32_33, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @REG(i32 %108)
  %110 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %8, i32 0, i32 0
  store i8* %109, i8** %110, align 8
  %111 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %7, align 8
  %112 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.pwl_params*, %struct.pwl_params** %6, align 8
  %116 = call i32 @cm_helper_program_xfer_func(i32 %114, %struct.pwl_params* %115, %struct.xfer_func_reg* %8)
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @mpc2_ogam_get_reg_field(%struct.mpc*, %struct.xfer_func_reg*) #1

declare dso_local i8* @REG(i32) #1

declare dso_local i32 @cm_helper_program_xfer_func(i32, %struct.pwl_params*, %struct.xfer_func_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
