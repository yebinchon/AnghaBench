; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_writeback.c_rcar_du_wb_conn_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_writeback.c_rcar_du_wb_conn_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i32 }
%struct.drm_connector = type { i32 }
%struct.rcar_du_wb_conn_state = type { %struct.drm_connector_state }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_connector_state* (%struct.drm_connector*)* @rcar_du_wb_conn_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_connector_state* @rcar_du_wb_conn_duplicate_state(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector_state*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.rcar_du_wb_conn_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %6 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.drm_connector_state* null, %struct.drm_connector_state** %2, align 8
  br label %27

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rcar_du_wb_conn_state* @kzalloc(i32 4, i32 %15)
  store %struct.rcar_du_wb_conn_state* %16, %struct.rcar_du_wb_conn_state** %4, align 8
  %17 = load %struct.rcar_du_wb_conn_state*, %struct.rcar_du_wb_conn_state** %4, align 8
  %18 = icmp ne %struct.rcar_du_wb_conn_state* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.drm_connector_state* null, %struct.drm_connector_state** %2, align 8
  br label %27

20:                                               ; preds = %14
  %21 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %22 = load %struct.rcar_du_wb_conn_state*, %struct.rcar_du_wb_conn_state** %4, align 8
  %23 = getelementptr inbounds %struct.rcar_du_wb_conn_state, %struct.rcar_du_wb_conn_state* %22, i32 0, i32 0
  %24 = call i32 @__drm_atomic_helper_connector_duplicate_state(%struct.drm_connector* %21, %struct.drm_connector_state* %23)
  %25 = load %struct.rcar_du_wb_conn_state*, %struct.rcar_du_wb_conn_state** %4, align 8
  %26 = getelementptr inbounds %struct.rcar_du_wb_conn_state, %struct.rcar_du_wb_conn_state* %25, i32 0, i32 0
  store %struct.drm_connector_state* %26, %struct.drm_connector_state** %2, align 8
  br label %27

27:                                               ; preds = %20, %19, %13
  %28 = load %struct.drm_connector_state*, %struct.drm_connector_state** %2, align 8
  ret %struct.drm_connector_state* %28
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.rcar_du_wb_conn_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_connector_duplicate_state(%struct.drm_connector*, %struct.drm_connector_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
