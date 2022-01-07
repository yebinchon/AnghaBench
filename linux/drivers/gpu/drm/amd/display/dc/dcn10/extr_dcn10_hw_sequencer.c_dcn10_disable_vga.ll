; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_disable_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_disable_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }

@D1VGA_CONTROL = common dso_local global i32 0, align 4
@D1VGA_MODE_ENABLE = common dso_local global i32 0, align 4
@D2VGA_CONTROL = common dso_local global i32 0, align 4
@D2VGA_MODE_ENABLE = common dso_local global i32 0, align 4
@D3VGA_CONTROL = common dso_local global i32 0, align 4
@D3VGA_MODE_ENABLE = common dso_local global i32 0, align 4
@D4VGA_CONTROL = common dso_local global i32 0, align 4
@D4VGA_MODE_ENABLE = common dso_local global i32 0, align 4
@VGA_TEST_CONTROL = common dso_local global i32 0, align 4
@VGA_TEST_ENABLE = common dso_local global i32 0, align 4
@VGA_TEST_RENDER_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_hwseq*)* @dcn10_disable_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_disable_vga(%struct.dce_hwseq* %0) #0 {
  %2 = alloca %struct.dce_hwseq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @D1VGA_CONTROL, align 4
  %8 = load i32, i32* @D1VGA_MODE_ENABLE, align 4
  %9 = call i32 @REG_GET(i32 %7, i32 %8, i32* %3)
  %10 = load i32, i32* @D2VGA_CONTROL, align 4
  %11 = load i32, i32* @D2VGA_MODE_ENABLE, align 4
  %12 = call i32 @REG_GET(i32 %10, i32 %11, i32* %4)
  %13 = load i32, i32* @D3VGA_CONTROL, align 4
  %14 = load i32, i32* @D3VGA_MODE_ENABLE, align 4
  %15 = call i32 @REG_GET(i32 %13, i32 %14, i32* %5)
  %16 = load i32, i32* @D4VGA_CONTROL, align 4
  %17 = load i32, i32* @D4VGA_MODE_ENABLE, align 4
  %18 = call i32 @REG_GET(i32 %16, i32 %17, i32* %6)
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %46

31:                                               ; preds = %27, %24, %21, %1
  %32 = load i32, i32* @D1VGA_CONTROL, align 4
  %33 = call i32 @REG_WRITE(i32 %32, i32 0)
  %34 = load i32, i32* @D2VGA_CONTROL, align 4
  %35 = call i32 @REG_WRITE(i32 %34, i32 0)
  %36 = load i32, i32* @D3VGA_CONTROL, align 4
  %37 = call i32 @REG_WRITE(i32 %36, i32 0)
  %38 = load i32, i32* @D4VGA_CONTROL, align 4
  %39 = call i32 @REG_WRITE(i32 %38, i32 0)
  %40 = load i32, i32* @VGA_TEST_CONTROL, align 4
  %41 = load i32, i32* @VGA_TEST_ENABLE, align 4
  %42 = call i32 @REG_UPDATE(i32 %40, i32 %41, i32 1)
  %43 = load i32, i32* @VGA_TEST_CONTROL, align 4
  %44 = load i32, i32* @VGA_TEST_RENDER_START, align 4
  %45 = call i32 @REG_UPDATE(i32 %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
