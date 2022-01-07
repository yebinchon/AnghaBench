; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_enable_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_enable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DC_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_state*, %struct.pipe_ctx*)* @enable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_link(%struct.dc_state* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc_state*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.dc_state* %0, %struct.dc_state** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %6 = load i32, i32* @DC_ERROR_UNEXPECTED, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %35 [
    i32 135, label %12
    i32 131, label %16
    i32 134, label %20
    i32 132, label %25
    i32 133, label %25
    i32 130, label %25
    i32 129, label %29
    i32 128, label %33
  ]

12:                                               ; preds = %2
  %13 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %15 = call i32 @enable_link_dp(%struct.dc_state* %13, %struct.pipe_ctx* %14)
  store i32 %15, i32* %5, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %19 = call i32 @enable_link_edp(%struct.dc_state* %17, %struct.pipe_ctx* %18)
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.dc_state*, %struct.dc_state** %3, align 8
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %23 = call i32 @enable_link_dp_mst(%struct.dc_state* %21, %struct.pipe_ctx* %22)
  store i32 %23, i32* %5, align 4
  %24 = call i32 @msleep(i32 200)
  br label %36

25:                                               ; preds = %2, %2, %2
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %27 = call i32 @enable_link_hdmi(%struct.pipe_ctx* %26)
  %28 = load i32, i32* @DC_OK, align 4
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %31 = call i32 @enable_link_lvds(%struct.pipe_ctx* %30)
  %32 = load i32, i32* @DC_OK, align 4
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @DC_OK, align 4
  store i32 %34, i32* %5, align 4
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %33, %29, %25, %20, %16, %12
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @DC_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %36
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @enable_link_dp(%struct.dc_state*, %struct.pipe_ctx*) #1

declare dso_local i32 @enable_link_edp(%struct.dc_state*, %struct.pipe_ctx*) #1

declare dso_local i32 @enable_link_dp_mst(%struct.dc_state*, %struct.pipe_ctx*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @enable_link_hdmi(%struct.pipe_ctx*) #1

declare dso_local i32 @enable_link_lvds(%struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
