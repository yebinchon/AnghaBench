; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_timing_generator.c_program_pix_dur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_timing_generator.c_program_pix_dur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@mmDMIF_PG0_DPG_PIPE_ARBITRATION_CONTROL1 = common dso_local global i64 0, align 8
@DPG_PIPE_ARBITRATION_CONTROL1 = common dso_local global i32 0, align 4
@PIXEL_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*, i64)* @program_pix_dur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_pix_dur(%struct.timing_generator* %0, i64 %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @mmDMIF_PG0_DPG_PIPE_ARBITRATION_CONTROL1, align 8
  %9 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %10 = call %struct.TYPE_4__* @DCE110TG_FROM_TG(%struct.timing_generator* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %8, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %16 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @dm_read_reg(i32 %17, i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %37

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @div_u64(i64 10000000000, i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @DPG_PIPE_ARBITRATION_CONTROL1, align 4
  %29 = load i32, i32* @PIXEL_DURATION, align 4
  %30 = call i32 @set_reg_field_value(i64 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %32 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @dm_write_reg(i32 %33, i64 %34, i64 %35)
  br label %37

37:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.TYPE_4__* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i64 @dm_read_reg(i32, i64) #1

declare dso_local i32 @div_u64(i64, i64) #1

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
