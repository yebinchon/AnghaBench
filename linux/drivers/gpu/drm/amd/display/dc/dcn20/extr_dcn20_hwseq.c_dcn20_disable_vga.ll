; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_disable_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_disable_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }

@D1VGA_CONTROL = common dso_local global i32 0, align 4
@D2VGA_CONTROL = common dso_local global i32 0, align 4
@D3VGA_CONTROL = common dso_local global i32 0, align 4
@D4VGA_CONTROL = common dso_local global i32 0, align 4
@D5VGA_CONTROL = common dso_local global i32 0, align 4
@D6VGA_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_disable_vga(%struct.dce_hwseq* %0) #0 {
  %2 = alloca %struct.dce_hwseq*, align 8
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %2, align 8
  %3 = load i32, i32* @D1VGA_CONTROL, align 4
  %4 = call i32 @REG_WRITE(i32 %3, i32 0)
  %5 = load i32, i32* @D2VGA_CONTROL, align 4
  %6 = call i32 @REG_WRITE(i32 %5, i32 0)
  %7 = load i32, i32* @D3VGA_CONTROL, align 4
  %8 = call i32 @REG_WRITE(i32 %7, i32 0)
  %9 = load i32, i32* @D4VGA_CONTROL, align 4
  %10 = call i32 @REG_WRITE(i32 %9, i32 0)
  %11 = load i32, i32* @D5VGA_CONTROL, align 4
  %12 = call i32 @REG_WRITE(i32 %11, i32 0)
  %13 = load i32, i32* @D6VGA_CONTROL, align 4
  %14 = call i32 @REG_WRITE(i32 %13, i32 0)
  ret void
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
