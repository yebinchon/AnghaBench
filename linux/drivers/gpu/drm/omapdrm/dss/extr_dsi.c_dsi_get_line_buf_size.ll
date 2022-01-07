; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_get_line_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_get_line_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DSI_QUIRK_GNQ = common dso_local global i32 0, align 4
@DSI_GNQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_get_line_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_get_line_buf_size(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %5 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %6 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DSI_QUIRK_GNQ, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 3069, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %16 = load i32, i32* @DSI_GNQ, align 4
  %17 = call i32 @REG_GET(%struct.dsi_data* %15, i32 %16, i32 14, i32 12)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %26 [
    i32 1, label %19
    i32 2, label %20
    i32 3, label %21
    i32 4, label %22
    i32 5, label %23
    i32 6, label %24
    i32 7, label %25
  ]

19:                                               ; preds = %14
  store i32 1536, i32* %2, align 4
  br label %28

20:                                               ; preds = %14
  store i32 2046, i32* %2, align 4
  br label %28

21:                                               ; preds = %14
  store i32 2559, i32* %2, align 4
  br label %28

22:                                               ; preds = %14
  store i32 3072, i32* %2, align 4
  br label %28

23:                                               ; preds = %14
  store i32 3582, i32* %2, align 4
  br label %28

24:                                               ; preds = %14
  store i32 4095, i32* %2, align 4
  br label %28

25:                                               ; preds = %14
  store i32 5760, i32* %2, align 4
  br label %28

26:                                               ; preds = %14
  %27 = call i32 (...) @BUG()
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @REG_GET(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
