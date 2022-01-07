; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_reset_lb_on_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_reset_lb_on_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32 }
%struct.dce110_compressor = type { i32 }

@reg_offsets = common dso_local global i32* null, align 8
@mmCRTC_STATUS_POSITION = common dso_local global i32 0, align 4
@mmLB_SYNC_RESET_SEL = common dso_local global i32 0, align 4
@LB_SYNC_RESET_SEL = common dso_local global i32 0, align 4
@LB_SYNC_RESET_SEL2 = common dso_local global i32 0, align 4
@mmCRTC_STATUS_FRAME_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Frame count did not increase for 100ms.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.compressor*, i64)* @reset_lb_on_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_lb_on_vblank(%struct.compressor* %0, i64 %1) #0 {
  %3 = alloca %struct.compressor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dce110_compressor*, align 8
  store %struct.compressor* %0, %struct.compressor** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.compressor*, %struct.compressor** %3, align 8
  %11 = call %struct.dce110_compressor* @TO_DCE110_COMPRESSOR(%struct.compressor* %10)
  store %struct.dce110_compressor* %11, %struct.dce110_compressor** %9, align 8
  %12 = load i32*, i32** @reg_offsets, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dce110_compressor*, %struct.dce110_compressor** %9, align 8
  %17 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.compressor*, %struct.compressor** %3, align 8
  %19 = getelementptr inbounds %struct.compressor, %struct.compressor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @mmCRTC_STATUS_POSITION, align 4
  %22 = call i32 @DCP_REG(i32 %21)
  %23 = call i64 @dm_read_reg(i32 %20, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.compressor*, %struct.compressor** %3, align 8
  %26 = getelementptr inbounds %struct.compressor, %struct.compressor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @mmCRTC_STATUS_POSITION, align 4
  %29 = call i32 @DCP_REG(i32 %28)
  %30 = call i64 @dm_read_reg(i32 %27, i32 %29)
  %31 = icmp ne i64 %24, %30
  br i1 %31, label %32, label %105

32:                                               ; preds = %2
  %33 = load %struct.compressor*, %struct.compressor** %3, align 8
  %34 = getelementptr inbounds %struct.compressor, %struct.compressor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @mmLB_SYNC_RESET_SEL, align 4
  %37 = call i32 @DCP_REG(i32 %36)
  %38 = call i64 @dm_read_reg(i32 %35, i32 %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* @LB_SYNC_RESET_SEL, align 4
  %41 = load i32, i32* @LB_SYNC_RESET_SEL, align 4
  %42 = call i32 @set_reg_field_value(i64 %39, i32 3, i32 %40, i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @LB_SYNC_RESET_SEL, align 4
  %45 = load i32, i32* @LB_SYNC_RESET_SEL2, align 4
  %46 = call i32 @set_reg_field_value(i64 %43, i32 1, i32 %44, i32 %45)
  %47 = load %struct.compressor*, %struct.compressor** %3, align 8
  %48 = getelementptr inbounds %struct.compressor, %struct.compressor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @mmLB_SYNC_RESET_SEL, align 4
  %51 = call i32 @DCP_REG(i32 %50)
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @dm_write_reg(i32 %49, i32 %51, i64 %52)
  %54 = load %struct.compressor*, %struct.compressor** %3, align 8
  %55 = getelementptr inbounds %struct.compressor, %struct.compressor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @mmCRTC_STATUS_FRAME_COUNT, align 4
  %58 = call i32 @DCP_REG(i32 %57)
  %59 = call i64 @dm_read_reg(i32 %56, i32 %58)
  store i64 %59, i64* %6, align 8
  store i64 10000, i64* %8, align 8
  br label %60

60:                                               ; preds = %75, %32
  %61 = load i64, i64* %8, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.compressor*, %struct.compressor** %3, align 8
  %66 = getelementptr inbounds %struct.compressor, %struct.compressor* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @mmCRTC_STATUS_FRAME_COUNT, align 4
  %69 = call i32 @DCP_REG(i32 %68)
  %70 = call i64 @dm_read_reg(i32 %67, i32 %69)
  %71 = icmp ne i64 %64, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %78

73:                                               ; preds = %63
  %74 = call i32 @udelay(i32 10)
  br label %75

75:                                               ; preds = %73
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %8, align 8
  br label %60

78:                                               ; preds = %72, %60
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call i32 @dm_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  %84 = load %struct.compressor*, %struct.compressor** %3, align 8
  %85 = getelementptr inbounds %struct.compressor, %struct.compressor* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @mmLB_SYNC_RESET_SEL, align 4
  %88 = call i32 @DCP_REG(i32 %87)
  %89 = call i64 @dm_read_reg(i32 %86, i32 %88)
  store i64 %89, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i32, i32* @LB_SYNC_RESET_SEL, align 4
  %92 = load i32, i32* @LB_SYNC_RESET_SEL, align 4
  %93 = call i32 @set_reg_field_value(i64 %90, i32 2, i32 %91, i32 %92)
  %94 = load i64, i64* %5, align 8
  %95 = load i32, i32* @LB_SYNC_RESET_SEL, align 4
  %96 = load i32, i32* @LB_SYNC_RESET_SEL2, align 4
  %97 = call i32 @set_reg_field_value(i64 %94, i32 0, i32 %95, i32 %96)
  %98 = load %struct.compressor*, %struct.compressor** %3, align 8
  %99 = getelementptr inbounds %struct.compressor, %struct.compressor* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @mmLB_SYNC_RESET_SEL, align 4
  %102 = call i32 @DCP_REG(i32 %101)
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @dm_write_reg(i32 %100, i32 %102, i64 %103)
  br label %105

105:                                              ; preds = %83, %2
  ret void
}

declare dso_local %struct.dce110_compressor* @TO_DCE110_COMPRESSOR(%struct.compressor*) #1

declare dso_local i64 @dm_read_reg(i32, i32) #1

declare dso_local i32 @DCP_REG(i32) #1

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dm_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
