; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_hw_sequencer.c_dce120_update_dchub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_hw_sequencer.c_dce120_update_dchub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }
%struct.dchub_init_data = type { i32, i32, i32, i32, i32, i32 }

@DCHUB_FB_LOCATION = common dso_local global i32 0, align 4
@FB_TOP = common dso_local global i32 0, align 4
@FB_BASE = common dso_local global i32 0, align 4
@DCHUB_AGP_BASE = common dso_local global i32 0, align 4
@AGP_BASE = common dso_local global i32 0, align 4
@DCHUB_AGP_BOT = common dso_local global i32 0, align 4
@AGP_BOT = common dso_local global i32 0, align 4
@DCHUB_AGP_TOP = common dso_local global i32 0, align 4
@AGP_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_hwseq*, %struct.dchub_init_data*)* @dce120_update_dchub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce120_update_dchub(%struct.dce_hwseq* %0, %struct.dchub_init_data* %1) #0 {
  %3 = alloca %struct.dce_hwseq*, align 8
  %4 = alloca %struct.dchub_init_data*, align 8
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %3, align 8
  store %struct.dchub_init_data* %1, %struct.dchub_init_data** %4, align 8
  %5 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %6 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %76 [
    i32 128, label %8
    i32 129, label %39
    i32 130, label %66
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @DCHUB_FB_LOCATION, align 4
  %10 = load i32, i32* @FB_TOP, align 4
  %11 = load i32, i32* @FB_BASE, align 4
  %12 = call i32 @REG_UPDATE_2(i32 %9, i32 %10, i32 0, i32 %11, i32 65535)
  %13 = load i32, i32* @DCHUB_AGP_BASE, align 4
  %14 = load i32, i32* @AGP_BASE, align 4
  %15 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %16 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 22
  %19 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 %18)
  %20 = load i32, i32* @DCHUB_AGP_BOT, align 4
  %21 = load i32, i32* @AGP_BOT, align 4
  %22 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %23 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 22
  %26 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 %25)
  %27 = load i32, i32* @DCHUB_AGP_TOP, align 4
  %28 = load i32, i32* @AGP_TOP, align 4
  %29 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %30 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %33 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = sub nsw i32 %35, 1
  %37 = ashr i32 %36, 22
  %38 = call i32 @REG_UPDATE(i32 %27, i32 %28, i32 %37)
  br label %77

39:                                               ; preds = %2
  %40 = load i32, i32* @DCHUB_AGP_BASE, align 4
  %41 = load i32, i32* @AGP_BASE, align 4
  %42 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %43 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 22
  %46 = call i32 @REG_UPDATE(i32 %40, i32 %41, i32 %45)
  %47 = load i32, i32* @DCHUB_AGP_BOT, align 4
  %48 = load i32, i32* @AGP_BOT, align 4
  %49 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %50 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 22
  %53 = call i32 @REG_UPDATE(i32 %47, i32 %48, i32 %52)
  %54 = load i32, i32* @DCHUB_AGP_TOP, align 4
  %55 = load i32, i32* @AGP_TOP, align 4
  %56 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %57 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %60 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = sub nsw i32 %62, 1
  %64 = ashr i32 %63, 22
  %65 = call i32 @REG_UPDATE(i32 %54, i32 %55, i32 %64)
  br label %77

66:                                               ; preds = %2
  %67 = load i32, i32* @DCHUB_AGP_BASE, align 4
  %68 = load i32, i32* @AGP_BASE, align 4
  %69 = call i32 @REG_UPDATE(i32 %67, i32 %68, i32 0)
  %70 = load i32, i32* @DCHUB_AGP_BOT, align 4
  %71 = load i32, i32* @AGP_BOT, align 4
  %72 = call i32 @REG_UPDATE(i32 %70, i32 %71, i32 262143)
  %73 = load i32, i32* @DCHUB_AGP_TOP, align 4
  %74 = load i32, i32* @AGP_TOP, align 4
  %75 = call i32 @REG_UPDATE(i32 %73, i32 %74, i32 0)
  br label %77

76:                                               ; preds = %2
  br label %77

77:                                               ; preds = %76, %66, %39, %8
  %78 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %79 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %78, i32 0, i32 4
  store i32 1, i32* %79, align 4
  %80 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %81 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %80, i32 0, i32 5
  store i32 0, i32* %81, align 4
  ret void
}

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
