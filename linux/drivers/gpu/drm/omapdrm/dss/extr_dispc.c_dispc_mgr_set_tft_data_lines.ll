; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_set_tft_data_lines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_set_tft_data_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@DISPC_MGR_FLD_TFTDATALINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32)* @dispc_mgr_set_tft_data_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_set_tft_data_lines(%struct.dispc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %13 [
    i32 12, label %9
    i32 16, label %10
    i32 18, label %11
    i32 24, label %12
  ]

9:                                                ; preds = %3
  store i32 0, i32* %7, align 4
  br label %15

10:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %15

11:                                               ; preds = %3
  store i32 2, i32* %7, align 4
  br label %15

12:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %15

13:                                               ; preds = %3
  %14 = call i32 (...) @BUG()
  br label %21

15:                                               ; preds = %12, %11, %10, %9
  %16 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DISPC_MGR_FLD_TFTDATALINES, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @mgr_fld_write(%struct.dispc_device* %16, i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %13
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mgr_fld_write(%struct.dispc_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
