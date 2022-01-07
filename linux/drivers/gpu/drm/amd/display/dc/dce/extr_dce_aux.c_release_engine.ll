; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_release_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_release_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_aux = type { i32* }
%struct.aux_engine_dce110 = type { i32 }

@AUX_ARB_CONTROL = common dso_local global i32 0, align 4
@AUX_SW_DONE_USING_AUX_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_aux*)* @release_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_engine(%struct.dce_aux* %0) #0 {
  %2 = alloca %struct.dce_aux*, align 8
  %3 = alloca %struct.aux_engine_dce110*, align 8
  store %struct.dce_aux* %0, %struct.dce_aux** %2, align 8
  %4 = load %struct.dce_aux*, %struct.dce_aux** %2, align 8
  %5 = call %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux* %4)
  store %struct.aux_engine_dce110* %5, %struct.aux_engine_dce110** %3, align 8
  %6 = load %struct.dce_aux*, %struct.dce_aux** %2, align 8
  %7 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @dal_ddc_close(i32* %8)
  %10 = load %struct.dce_aux*, %struct.dce_aux** %2, align 8
  %11 = getelementptr inbounds %struct.dce_aux, %struct.dce_aux* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @AUX_ARB_CONTROL, align 4
  %13 = load i32, i32* @AUX_SW_DONE_USING_AUX_REG, align 4
  %14 = call i32 @REG_UPDATE(i32 %12, i32 %13, i32 1)
  ret void
}

declare dso_local %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux*) #1

declare dso_local i32 @dal_ddc_close(i32*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
