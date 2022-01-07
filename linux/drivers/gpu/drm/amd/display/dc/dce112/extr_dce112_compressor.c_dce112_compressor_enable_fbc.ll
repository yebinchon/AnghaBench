; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_enable_fbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_enable_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.compr_addr_and_pitch_params = type { i32, i32, i32 }
%struct.dce112_compressor = type { i32 }

@dce11_one_lpt_channel_max_resolution = common dso_local global i32 0, align 4
@mmFBC_CNTL = common dso_local global i32 0, align 4
@FBC_CNTL = common dso_local global i32 0, align 4
@FBC_GRPH_COMP_EN = common dso_local global i32 0, align 4
@FBC_SRC_SEL = common dso_local global i32 0, align 4
@reg_offsets = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce112_compressor_enable_fbc(%struct.compressor* %0, i32 %1, %struct.compr_addr_and_pitch_params* %2) #0 {
  %4 = alloca %struct.compressor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.compr_addr_and_pitch_params*, align 8
  %7 = alloca %struct.dce112_compressor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.compressor* %0, %struct.compressor** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.compr_addr_and_pitch_params* %2, %struct.compr_addr_and_pitch_params** %6, align 8
  %10 = load %struct.compressor*, %struct.compressor** %4, align 8
  %11 = call %struct.dce112_compressor* @TO_DCE112_COMPRESSOR(%struct.compressor* %10)
  store %struct.dce112_compressor* %11, %struct.dce112_compressor** %7, align 8
  %12 = load %struct.compressor*, %struct.compressor** %4, align 8
  %13 = getelementptr inbounds %struct.compressor, %struct.compressor* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %124

18:                                               ; preds = %3
  %19 = load %struct.compressor*, %struct.compressor** %4, align 8
  %20 = getelementptr inbounds %struct.compressor, %struct.compressor* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %124

25:                                               ; preds = %18
  %26 = load %struct.compressor*, %struct.compressor** %4, align 8
  %27 = call i32 @dce112_compressor_is_fbc_enabled_in_hw(%struct.compressor* %26, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %124, label %29

29:                                               ; preds = %25
  %30 = load %struct.dce112_compressor*, %struct.dce112_compressor** %7, align 8
  %31 = load %struct.compr_addr_and_pitch_params*, %struct.compr_addr_and_pitch_params** %6, align 8
  %32 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.compr_addr_and_pitch_params*, %struct.compr_addr_and_pitch_params** %6, align 8
  %35 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @is_source_bigger_than_epanel_size(%struct.dce112_compressor* %30, i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %124, label %39

39:                                               ; preds = %29
  %40 = load %struct.compressor*, %struct.compressor** %4, align 8
  %41 = getelementptr inbounds %struct.compressor, %struct.compressor* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load %struct.compr_addr_and_pitch_params*, %struct.compr_addr_and_pitch_params** %6, align 8
  %51 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.compr_addr_and_pitch_params*, %struct.compr_addr_and_pitch_params** %6, align 8
  %54 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = load i32, i32* @dce11_one_lpt_channel_max_resolution, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.compressor*, %struct.compressor** %4, align 8
  %61 = call i32 @dce112_compressor_enable_lpt(%struct.compressor* %60)
  br label %62

62:                                               ; preds = %59, %49, %46, %39
  %63 = load i32, i32* @mmFBC_CNTL, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.compressor*, %struct.compressor** %4, align 8
  %65 = getelementptr inbounds %struct.compressor, %struct.compressor* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @dm_read_reg(i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @FBC_CNTL, align 4
  %71 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %72 = call i32 @set_reg_field_value(i32 %69, i32 1, i32 %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.compr_addr_and_pitch_params*, %struct.compr_addr_and_pitch_params** %6, align 8
  %75 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FBC_CNTL, align 4
  %78 = load i32, i32* @FBC_SRC_SEL, align 4
  %79 = call i32 @set_reg_field_value(i32 %73, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.compressor*, %struct.compressor** %4, align 8
  %81 = getelementptr inbounds %struct.compressor, %struct.compressor* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @dm_write_reg(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.compressor*, %struct.compressor** %4, align 8
  %87 = getelementptr inbounds %struct.compressor, %struct.compressor* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.compr_addr_and_pitch_params*, %struct.compr_addr_and_pitch_params** %6, align 8
  %89 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.compressor*, %struct.compressor** %4, align 8
  %92 = getelementptr inbounds %struct.compressor, %struct.compressor* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** @reg_offsets, align 8
  %94 = load %struct.compr_addr_and_pitch_params*, %struct.compr_addr_and_pitch_params** %6, align 8
  %95 = getelementptr inbounds %struct.compr_addr_and_pitch_params, %struct.compr_addr_and_pitch_params* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dce112_compressor*, %struct.dce112_compressor** %7, align 8
  %101 = getelementptr inbounds %struct.dce112_compressor, %struct.dce112_compressor* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @FBC_CNTL, align 4
  %104 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %105 = call i32 @set_reg_field_value(i32 %102, i32 0, i32 %103, i32 %104)
  %106 = load %struct.compressor*, %struct.compressor** %4, align 8
  %107 = getelementptr inbounds %struct.compressor, %struct.compressor* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @dm_write_reg(i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @FBC_CNTL, align 4
  %114 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %115 = call i32 @set_reg_field_value(i32 %112, i32 1, i32 %113, i32 %114)
  %116 = load %struct.compressor*, %struct.compressor** %4, align 8
  %117 = getelementptr inbounds %struct.compressor, %struct.compressor* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @dm_write_reg(i32 %118, i32 %119, i32 %120)
  %122 = load %struct.dce112_compressor*, %struct.dce112_compressor** %7, align 8
  %123 = call i32 @wait_for_fbc_state_changed(%struct.dce112_compressor* %122, i32 1)
  br label %124

124:                                              ; preds = %62, %29, %25, %18, %3
  ret void
}

declare dso_local %struct.dce112_compressor* @TO_DCE112_COMPRESSOR(%struct.compressor*) #1

declare dso_local i32 @dce112_compressor_is_fbc_enabled_in_hw(%struct.compressor*, i32*) #1

declare dso_local i32 @is_source_bigger_than_epanel_size(%struct.dce112_compressor*, i32, i32) #1

declare dso_local i32 @dce112_compressor_enable_lpt(%struct.compressor*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

declare dso_local i32 @wait_for_fbc_state_changed(%struct.dce112_compressor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
