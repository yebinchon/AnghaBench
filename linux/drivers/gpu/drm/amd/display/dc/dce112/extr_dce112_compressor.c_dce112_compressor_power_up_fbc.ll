; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_power_up_fbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_power_up_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@mmFBC_CNTL = common dso_local global i32 0, align 4
@FBC_CNTL = common dso_local global i32 0, align 4
@FBC_GRPH_COMP_EN = common dso_local global i32 0, align 4
@FBC_EN = common dso_local global i32 0, align 4
@FBC_COHERENCY_MODE = common dso_local global i32 0, align 4
@FBC_COMP_CLK_GATE_EN = common dso_local global i32 0, align 4
@mmFBC_COMP_MODE = common dso_local global i32 0, align 4
@FBC_COMP_MODE = common dso_local global i32 0, align 4
@FBC_RLE_EN = common dso_local global i32 0, align 4
@FBC_DPCM4_RGB_EN = common dso_local global i32 0, align 4
@FBC_IND_EN = common dso_local global i32 0, align 4
@mmFBC_COMP_CNTL = common dso_local global i32 0, align 4
@FBC_COMP_CNTL = common dso_local global i32 0, align 4
@FBC_DEPTH_RGB08_EN = common dso_local global i32 0, align 4
@FBC_MIN_COMPRESSION = common dso_local global i32 0, align 4
@FBC_COMPRESS_RATIO_1TO1 = common dso_local global i32 0, align 4
@mmFBC_IND_LUT0 = common dso_local global i32 0, align 4
@mmFBC_IND_LUT1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce112_compressor_power_up_fbc(%struct.compressor* %0) #0 {
  %2 = alloca %struct.compressor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.compressor* %0, %struct.compressor** %2, align 8
  %5 = load i32, i32* @mmFBC_CNTL, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.compressor*, %struct.compressor** %2, align 8
  %7 = getelementptr inbounds %struct.compressor, %struct.compressor* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @dm_read_reg(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @FBC_CNTL, align 4
  %13 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %14 = call i32 @set_reg_field_value(i32 %11, i32 0, i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @FBC_CNTL, align 4
  %17 = load i32, i32* @FBC_EN, align 4
  %18 = call i32 @set_reg_field_value(i32 %15, i32 1, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @FBC_CNTL, align 4
  %21 = load i32, i32* @FBC_COHERENCY_MODE, align 4
  %22 = call i32 @set_reg_field_value(i32 %19, i32 2, i32 %20, i32 %21)
  %23 = load %struct.compressor*, %struct.compressor** %2, align 8
  %24 = getelementptr inbounds %struct.compressor, %struct.compressor* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @FBC_CNTL, align 4
  %32 = load i32, i32* @FBC_COMP_CLK_GATE_EN, align 4
  %33 = call i32 @set_reg_field_value(i32 %30, i32 0, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.compressor*, %struct.compressor** %2, align 8
  %36 = getelementptr inbounds %struct.compressor, %struct.compressor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @dm_write_reg(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @mmFBC_COMP_MODE, align 4
  store i32 %41, i32* %4, align 4
  %42 = load %struct.compressor*, %struct.compressor** %2, align 8
  %43 = getelementptr inbounds %struct.compressor, %struct.compressor* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dm_read_reg(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @FBC_COMP_MODE, align 4
  %49 = load i32, i32* @FBC_RLE_EN, align 4
  %50 = call i32 @set_reg_field_value(i32 %47, i32 1, i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @FBC_COMP_MODE, align 4
  %53 = load i32, i32* @FBC_DPCM4_RGB_EN, align 4
  %54 = call i32 @set_reg_field_value(i32 %51, i32 1, i32 %52, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @FBC_COMP_MODE, align 4
  %57 = load i32, i32* @FBC_IND_EN, align 4
  %58 = call i32 @set_reg_field_value(i32 %55, i32 1, i32 %56, i32 %57)
  %59 = load %struct.compressor*, %struct.compressor** %2, align 8
  %60 = getelementptr inbounds %struct.compressor, %struct.compressor* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @dm_write_reg(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @mmFBC_COMP_CNTL, align 4
  store i32 %65, i32* %4, align 4
  %66 = load %struct.compressor*, %struct.compressor** %2, align 8
  %67 = getelementptr inbounds %struct.compressor, %struct.compressor* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @dm_read_reg(i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @FBC_COMP_CNTL, align 4
  %73 = load i32, i32* @FBC_DEPTH_RGB08_EN, align 4
  %74 = call i32 @set_reg_field_value(i32 %71, i32 1, i32 %72, i32 %73)
  %75 = load %struct.compressor*, %struct.compressor** %2, align 8
  %76 = getelementptr inbounds %struct.compressor, %struct.compressor* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @dm_write_reg(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @FBC_COMP_CNTL, align 4
  %83 = load i32, i32* @FBC_MIN_COMPRESSION, align 4
  %84 = call i32 @set_reg_field_value(i32 %81, i32 15, i32 %82, i32 %83)
  %85 = load %struct.compressor*, %struct.compressor** %2, align 8
  %86 = getelementptr inbounds %struct.compressor, %struct.compressor* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @dm_write_reg(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @FBC_COMPRESS_RATIO_1TO1, align 4
  %92 = load %struct.compressor*, %struct.compressor** %2, align 8
  %93 = getelementptr inbounds %struct.compressor, %struct.compressor* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  store i32 0, i32* %3, align 4
  %94 = load %struct.compressor*, %struct.compressor** %2, align 8
  %95 = getelementptr inbounds %struct.compressor, %struct.compressor* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @mmFBC_IND_LUT0, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @dm_write_reg(i32 %96, i32 %97, i32 %98)
  store i32 16777215, i32* %3, align 4
  %100 = load %struct.compressor*, %struct.compressor** %2, align 8
  %101 = getelementptr inbounds %struct.compressor, %struct.compressor* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @mmFBC_IND_LUT1, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @dm_write_reg(i32 %102, i32 %103, i32 %104)
  ret void
}

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
