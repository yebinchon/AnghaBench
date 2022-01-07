; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_dce110_compressor_disable_fbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_dce110_compressor_disable_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.dce110_compressor = type { i32 }

@mmFBC_CNTL = common dso_local global i32 0, align 4
@FBC_CNTL = common dso_local global i32 0, align 4
@FBC_GRPH_COMP_EN = common dso_local global i32 0, align 4
@CONTROLLER_ID_UNDEFINED = common dso_local global i64 0, align 8
@CONTROLLER_ID_D3 = common dso_local global i64 0, align 8
@CONTROLLER_ID_D0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_compressor_disable_fbc(%struct.compressor* %0) #0 {
  %2 = alloca %struct.compressor*, align 8
  %3 = alloca %struct.dce110_compressor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.compressor* %0, %struct.compressor** %2, align 8
  %6 = load %struct.compressor*, %struct.compressor** %2, align 8
  %7 = call %struct.dce110_compressor* @TO_DCE110_COMPRESSOR(%struct.compressor* %6)
  store %struct.dce110_compressor* %7, %struct.dce110_compressor** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.compressor*, %struct.compressor** %2, align 8
  %9 = getelementptr inbounds %struct.compressor, %struct.compressor* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %1
  %15 = load %struct.compressor*, %struct.compressor** %2, align 8
  %16 = call i64 @dce110_compressor_is_fbc_enabled_in_hw(%struct.compressor* %15, i64* %4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.compressor*, %struct.compressor** %2, align 8
  %20 = getelementptr inbounds %struct.compressor, %struct.compressor* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @mmFBC_CNTL, align 4
  %23 = call i64 @dm_read_reg(i32 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @FBC_CNTL, align 4
  %26 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %27 = call i32 @set_reg_field_value(i64 %24, i32 0, i32 %25, i32 %26)
  %28 = load %struct.compressor*, %struct.compressor** %2, align 8
  %29 = getelementptr inbounds %struct.compressor, %struct.compressor* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @mmFBC_CNTL, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @dm_write_reg(i32 %30, i32 %31, i64 %32)
  %34 = load %struct.compressor*, %struct.compressor** %2, align 8
  %35 = getelementptr inbounds %struct.compressor, %struct.compressor* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.compressor*, %struct.compressor** %2, align 8
  %37 = getelementptr inbounds %struct.compressor, %struct.compressor* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.dce110_compressor*, %struct.dce110_compressor** %3, align 8
  %39 = call i32 @wait_for_fbc_state_changed(%struct.dce110_compressor* %38, i32 0)
  br label %40

40:                                               ; preds = %18, %14
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @CONTROLLER_ID_UNDEFINED, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @CONTROLLER_ID_D3, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.compressor*, %struct.compressor** %2, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @CONTROLLER_ID_D0, align 8
  %52 = sub nsw i64 %50, %51
  %53 = call i32 @reset_lb_on_vblank(%struct.compressor* %49, i64 %52)
  br label %54

54:                                               ; preds = %48, %44, %40
  br label %55

55:                                               ; preds = %54, %1
  ret void
}

declare dso_local %struct.dce110_compressor* @TO_DCE110_COMPRESSOR(%struct.compressor*) #1

declare dso_local i64 @dce110_compressor_is_fbc_enabled_in_hw(%struct.compressor*, i64*) #1

declare dso_local i64 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i64) #1

declare dso_local i32 @wait_for_fbc_state_changed(%struct.dce110_compressor*, i32) #1

declare dso_local i32 @reset_lb_on_vblank(%struct.compressor*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
