; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_enable_link_dp_mst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_enable_link_dp_mst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { i32 }
%struct.pipe_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dc_link* }
%struct.dc_link = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LANE_COUNT_UNKNOWN = common dso_local global i64 0, align 8
@DC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_state*, %struct.pipe_ctx*)* @enable_link_dp_mst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_link_dp_mst(%struct.dc_state* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_link*, align 8
  store %struct.dc_state* %0, %struct.dc_state** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  %7 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.dc_link*, %struct.dc_link** %10, align 8
  store %struct.dc_link* %11, %struct.dc_link** %6, align 8
  %12 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %13 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LANE_COUNT_UNKNOWN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @DC_OK, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %22 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %25 = call i32 @dm_helpers_dp_mst_clear_payload_allocation_table(i32 %23, %struct.dc_link* %24)
  %26 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %27 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %30 = call i32 @dm_helpers_dp_mst_poll_pending_down_reply(i32 %28, %struct.dc_link* %29)
  %31 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %32 = call i32 @dp_enable_mst_on_sink(%struct.dc_link* %31, i32 1)
  %33 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %34 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %35 = call i32 @enable_link_dp(%struct.dc_state* %33, %struct.pipe_ctx* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %20, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @dm_helpers_dp_mst_clear_payload_allocation_table(i32, %struct.dc_link*) #1

declare dso_local i32 @dm_helpers_dp_mst_poll_pending_down_reply(i32, %struct.dc_link*) #1

declare dso_local i32 @dp_enable_mst_on_sink(%struct.dc_link*, i32) #1

declare dso_local i32 @enable_link_dp(%struct.dc_state*, %struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
