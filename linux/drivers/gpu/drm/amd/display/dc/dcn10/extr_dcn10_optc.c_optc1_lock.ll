; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.optc = type { i32 }

@OTG_CONTROL = common dso_local global i32 0, align 4
@OTG_GLOBAL_CONTROL0 = common dso_local global i32 0, align 4
@OTG_MASTER_UPDATE_LOCK_SEL = common dso_local global i32 0, align 4
@OTG_MASTER_UPDATE_LOCK = common dso_local global i32 0, align 4
@DCE_ENV_FPGA_MAXIMUS = common dso_local global i64 0, align 8
@UPDATE_LOCK_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_lock(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca %struct.optc*, align 8
  %4 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  %5 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %6 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %5)
  store %struct.optc* %6, %struct.optc** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @OTG_CONTROL, align 4
  %8 = call i32 @REG_READ(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load i32, i32* @OTG_GLOBAL_CONTROL0, align 4
  %15 = load i32, i32* @OTG_MASTER_UPDATE_LOCK_SEL, align 4
  %16 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %17 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @REG_SET(i32 %14, i32 0, i32 %15, i32 %18)
  %20 = load i32, i32* @OTG_MASTER_UPDATE_LOCK, align 4
  %21 = load i32, i32* @OTG_MASTER_UPDATE_LOCK, align 4
  %22 = call i32 @REG_SET(i32 %20, i32 0, i32 %21, i32 1)
  %23 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %24 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DCE_ENV_FPGA_MAXIMUS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %13
  %31 = load i32, i32* @OTG_MASTER_UPDATE_LOCK, align 4
  %32 = load i32, i32* @UPDATE_LOCK_STATUS, align 4
  %33 = call i32 @REG_WAIT(i32 %31, i32 %32, i32 1, i32 1, i32 10)
  br label %34

34:                                               ; preds = %12, %30, %13
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
