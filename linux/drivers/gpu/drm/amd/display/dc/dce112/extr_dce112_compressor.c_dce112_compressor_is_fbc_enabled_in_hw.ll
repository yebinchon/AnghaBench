; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_is_fbc_enabled_in_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_compressor.c_dce112_compressor_is_fbc_enabled_in_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32, i32 }

@mmFBC_STATUS = common dso_local global i32 0, align 4
@FBC_STATUS = common dso_local global i32 0, align 4
@FBC_ENABLE_STATUS = common dso_local global i32 0, align 4
@mmFBC_MISC = common dso_local global i32 0, align 4
@FBC_MISC = common dso_local global i32 0, align 4
@FBC_STOP_ON_HFLIP_EVENT = common dso_local global i32 0, align 4
@mmFBC_CNTL = common dso_local global i32 0, align 4
@FBC_CNTL = common dso_local global i32 0, align 4
@FBC_GRPH_COMP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce112_compressor_is_fbc_enabled_in_hw(%struct.compressor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.compressor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.compressor* %0, %struct.compressor** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.compressor*, %struct.compressor** %4, align 8
  %8 = getelementptr inbounds %struct.compressor, %struct.compressor* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @mmFBC_STATUS, align 4
  %11 = call i32 @dm_read_reg(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @FBC_STATUS, align 4
  %14 = load i32, i32* @FBC_ENABLE_STATUS, align 4
  %15 = call i64 @get_reg_field_value(i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.compressor*, %struct.compressor** %4, align 8
  %22 = getelementptr inbounds %struct.compressor, %struct.compressor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %17
  store i32 1, i32* %3, align 4
  br label %59

26:                                               ; preds = %2
  %27 = load %struct.compressor*, %struct.compressor** %4, align 8
  %28 = getelementptr inbounds %struct.compressor, %struct.compressor* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @mmFBC_MISC, align 4
  %31 = call i32 @dm_read_reg(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @FBC_MISC, align 4
  %34 = load i32, i32* @FBC_STOP_ON_HFLIP_EVENT, align 4
  %35 = call i64 @get_reg_field_value(i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %26
  %38 = load %struct.compressor*, %struct.compressor** %4, align 8
  %39 = getelementptr inbounds %struct.compressor, %struct.compressor* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @mmFBC_CNTL, align 4
  %42 = call i32 @dm_read_reg(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @FBC_CNTL, align 4
  %45 = load i32, i32* @FBC_GRPH_COMP_EN, align 4
  %46 = call i64 @get_reg_field_value(i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %37
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.compressor*, %struct.compressor** %4, align 8
  %53 = getelementptr inbounds %struct.compressor, %struct.compressor* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %48
  store i32 1, i32* %3, align 4
  br label %59

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57, %26
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %56, %25
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i64 @get_reg_field_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
