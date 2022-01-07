; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_disable_fbc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_disable_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.dce112_compressor = type { i32 }

@mmFBC_CNTL = common dso_local global i32 0, align 4
@FBC_CNTL = common dso_local global i32 0, align 4
@FBC_GRPH_COMP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce112_compressor_disable_fbc(%struct.compressor* %0) #0 {
  %2 = alloca %struct.compressor*, align 8
  %3 = alloca %struct.dce112_compressor*, align 8
  %4 = alloca i32, align 4
  store %struct.compressor* %0, %struct.compressor** %2, align 8
  %5 = load %struct.compressor*, %struct.compressor** %2, align 8
  %6 = call %struct.dce112_compressor* @TO_DCE112_COMPRESSOR(%struct.compressor* %5)
  store %struct.dce112_compressor* %6, %struct.dce112_compressor** %3, align 8
  %7 = load %struct.compressor*, %struct.compressor** %2, align 8
  %8 = getelementptr inbounds %struct.compressor, %struct.compressor* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = load %struct.compressor*, %struct.compressor** %2, align 8
  %15 = call i64 @dce112_compressor_is_fbc_enabled_in_hw(%struct.compressor* %14, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load %struct.compressor*, %struct.compressor** %2, align 8
  %19 = getelementptr inbounds %struct.compressor, %struct.compressor* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @mmFBC_CNTL, align 4
  %22 = call i32 @dm_read_reg(i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @FBC_CNTL, align 4
  %25 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %26 = call i32 @set_reg_field_value(i32 %23, i32 0, i32 %24, i32 %25)
  %27 = load %struct.compressor*, %struct.compressor** %2, align 8
  %28 = getelementptr inbounds %struct.compressor, %struct.compressor* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @mmFBC_CNTL, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dm_write_reg(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.compressor*, %struct.compressor** %2, align 8
  %34 = getelementptr inbounds %struct.compressor, %struct.compressor* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.compressor*, %struct.compressor** %2, align 8
  %36 = getelementptr inbounds %struct.compressor, %struct.compressor* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.compressor*, %struct.compressor** %2, align 8
  %38 = getelementptr inbounds %struct.compressor, %struct.compressor* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %17
  %44 = load %struct.compressor*, %struct.compressor** %2, align 8
  %45 = call i32 @dce112_compressor_disable_lpt(%struct.compressor* %44)
  br label %46

46:                                               ; preds = %43, %17
  %47 = load %struct.dce112_compressor*, %struct.dce112_compressor** %3, align 8
  %48 = call i32 @wait_for_fbc_state_changed(%struct.dce112_compressor* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %13, %1
  ret void
}

declare dso_local %struct.dce112_compressor* @TO_DCE112_COMPRESSOR(%struct.compressor*) #1

declare dso_local i64 @dce112_compressor_is_fbc_enabled_in_hw(%struct.compressor*, i32*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

declare dso_local i32 @dce112_compressor_disable_lpt(%struct.compressor*) #1

declare dso_local i32 @wait_for_fbc_state_changed(%struct.dce112_compressor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
