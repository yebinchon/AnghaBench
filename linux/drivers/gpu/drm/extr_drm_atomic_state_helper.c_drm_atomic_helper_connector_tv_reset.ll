; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c_drm_atomic_helper_connector_tv_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_state_helper.c_drm_atomic_helper_connector_tv_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_connector_state*, %struct.drm_cmdline_mode }
%struct.drm_connector_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.drm_cmdline_mode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_helper_connector_tv_reset(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_cmdline_mode*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %5, i32 0, i32 1
  store %struct.drm_cmdline_mode* %6, %struct.drm_cmdline_mode** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  store %struct.drm_connector_state* %9, %struct.drm_connector_state** %4, align 8
  %10 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %11 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %13, i32* %17, align 4
  %18 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %19 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i32 %21, i32* %25, align 4
  %26 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %27 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %31 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %35 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %39 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
