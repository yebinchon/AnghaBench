; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_triplebuffer_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_triplebuffer_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.optc = type { i32 }

@OTG_GLOBAL_CONTROL0 = common dso_local global i32 0, align 4
@OTG_MASTER_UPDATE_LOCK_SEL = common dso_local global i32 0, align 4
@OTG_VUPDATE_KEEPOUT = common dso_local global i32 0, align 4
@OTG_MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_EN = common dso_local global i32 0, align 4
@OTG_MASTER_UPDATE_LOCK = common dso_local global i32 0, align 4
@DCE_ENV_FPGA_MAXIMUS = common dso_local global i64 0, align 8
@UPDATE_LOCK_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc2_triplebuffer_lock(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  %4 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %5 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %4)
  store %struct.optc* %5, %struct.optc** %3, align 8
  %6 = load i32, i32* @OTG_GLOBAL_CONTROL0, align 4
  %7 = load i32, i32* @OTG_MASTER_UPDATE_LOCK_SEL, align 4
  %8 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %9 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @REG_SET(i32 %6, i32 0, i32 %7, i32 %10)
  %12 = load i32, i32* @OTG_VUPDATE_KEEPOUT, align 4
  %13 = load i32, i32* @OTG_MASTER_UPDATE_LOCK_VUPDATE_KEEPOUT_EN, align 4
  %14 = call i32 @REG_SET(i32 %12, i32 0, i32 %13, i32 1)
  %15 = load i32, i32* @OTG_MASTER_UPDATE_LOCK, align 4
  %16 = load i32, i32* @OTG_MASTER_UPDATE_LOCK, align 4
  %17 = call i32 @REG_SET(i32 %15, i32 0, i32 %16, i32 1)
  %18 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %19 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DCE_ENV_FPGA_MAXIMUS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @OTG_MASTER_UPDATE_LOCK, align 4
  %27 = load i32, i32* @UPDATE_LOCK_STATUS, align 4
  %28 = call i32 @REG_WAIT(i32 %26, i32 %27, i32 1, i32 1, i32 10)
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
