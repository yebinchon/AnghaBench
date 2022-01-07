; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_setup_panel_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_link_encoder.c_setup_panel_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_link_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dc_context* }
%struct.dc_context = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@DP_DPHY_INTERNAL_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_link_encoder*, i32)* @setup_panel_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_panel_mode(%struct.dce110_link_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.dce110_link_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_context*, align 8
  store %struct.dce110_link_encoder* %0, %struct.dce110_link_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dce110_link_encoder*, %struct.dce110_link_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.dce110_link_encoder, %struct.dce110_link_encoder* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  store %struct.dc_context* %10, %struct.dc_context** %6, align 8
  %11 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %12 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* @DP_DPHY_INTERNAL_CTRL, align 4
  %21 = call i32 @REG(i32 %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* @DP_DPHY_INTERNAL_CTRL, align 4
  %24 = call i32 @REG_READ(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %28 [
    i32 129, label %26
    i32 128, label %27
  ]

26:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %29

27:                                               ; preds = %19
  store i32 17, i32* %5, align 4
  br label %29

28:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %27, %26
  %30 = load i32, i32* @DP_DPHY_INTERNAL_CTRL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @REG_WRITE(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %18
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
