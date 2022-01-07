; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_viewport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }
%struct.rect = type { i32, i32, i32, i32 }

@VIEWPORT_START = common dso_local global i32 0, align 4
@VIEWPORT_X_START = common dso_local global i32 0, align 4
@VIEWPORT_Y_START = common dso_local global i32 0, align 4
@VIEWPORT_SIZE = common dso_local global i32 0, align 4
@VIEWPORT_HEIGHT = common dso_local global i32 0, align 4
@VIEWPORT_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.rect*)* @program_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_viewport(%struct.dce_transform* %0, %struct.rect* %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca %struct.rect*, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store %struct.rect* %1, %struct.rect** %4, align 8
  %5 = load i32, i32* @VIEWPORT_START, align 4
  %6 = load i32, i32* @VIEWPORT_X_START, align 4
  %7 = load %struct.rect*, %struct.rect** %4, align 8
  %8 = getelementptr inbounds %struct.rect, %struct.rect* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VIEWPORT_Y_START, align 4
  %11 = load %struct.rect*, %struct.rect** %4, align 8
  %12 = getelementptr inbounds %struct.rect, %struct.rect* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @REG_SET_2(i32 %5, i32 0, i32 %6, i32 %9, i32 %10, i32 %13)
  %15 = load i32, i32* @VIEWPORT_SIZE, align 4
  %16 = load i32, i32* @VIEWPORT_HEIGHT, align 4
  %17 = load %struct.rect*, %struct.rect** %4, align 8
  %18 = getelementptr inbounds %struct.rect, %struct.rect* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VIEWPORT_WIDTH, align 4
  %21 = load %struct.rect*, %struct.rect** %4, align 8
  %22 = getelementptr inbounds %struct.rect, %struct.rect* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @REG_SET_2(i32 %15, i32 0, i32 %16, i32 %19, i32 %20, i32 %23)
  ret void
}

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
