; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_dccg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_dccg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }

@MICROSECOND_TIME_BASE_DIV = common dso_local global i32 0, align 4
@MILLISECOND_TIME_BASE_DIV = common dso_local global i32 0, align 4
@DISPCLK_FREQ_CHANGE_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_dccg_init(%struct.dce_hwseq* %0) #0 {
  %2 = alloca %struct.dce_hwseq*, align 8
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %2, align 8
  %3 = load i32, i32* @MICROSECOND_TIME_BASE_DIV, align 4
  %4 = call i32 @REG_WRITE(i32 %3, i32 1180260)
  %5 = load i32, i32* @MILLISECOND_TIME_BASE_DIV, align 4
  %6 = call i32 @REG_WRITE(i32 %5, i32 1148576)
  %7 = load i32, i32* @DISPCLK_FREQ_CHANGE_CNTL, align 4
  %8 = call i32 @REG_WRITE(i32 %7, i32 134283324)
  ret void
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
