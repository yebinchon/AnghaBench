; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_set_cabc_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_set_cabc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acx565akm_panel = type { i32, i32 }

@MIPID_CMD_READ_CABC = common dso_local global i32 0, align 4
@MIPID_CMD_WRITE_CABC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acx565akm_panel*, i32)* @acx565akm_set_cabc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acx565akm_set_cabc_mode(%struct.acx565akm_panel* %0, i32 %1) #0 {
  %3 = alloca %struct.acx565akm_panel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acx565akm_panel* %0, %struct.acx565akm_panel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %8 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %10 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %15 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %16 = load i32, i32* @MIPID_CMD_READ_CABC, align 4
  %17 = call i32 @acx565akm_read(%struct.acx565akm_panel* %15, i32 %16, i32* %5, i32 1)
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, -4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 3
  %22 = or i32 256, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %26 = load i32, i32* @MIPID_CMD_WRITE_CABC, align 4
  %27 = call i32 @acx565akm_write(%struct.acx565akm_panel* %25, i32 %26, i32* %5, i32 2)
  br label %28

28:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @acx565akm_read(%struct.acx565akm_panel*, i32, i32*, i32) #1

declare dso_local i32 @acx565akm_write(%struct.acx565akm_panel*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
