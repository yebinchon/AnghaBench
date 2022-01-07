; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_del_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_del_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_core = type { i32 }
%struct.i40iw_cm_listener = type { i32*, i32 }

@I40IW_CM_LISTENER_PASSIVE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_cm_core*, %struct.i40iw_cm_listener*, i32)* @i40iw_cm_del_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_cm_del_listen(%struct.i40iw_cm_core* %0, %struct.i40iw_cm_listener* %1, i32 %2) #0 {
  %4 = alloca %struct.i40iw_cm_core*, align 8
  %5 = alloca %struct.i40iw_cm_listener*, align 8
  %6 = alloca i32, align 4
  store %struct.i40iw_cm_core* %0, %struct.i40iw_cm_core** %4, align 8
  store %struct.i40iw_cm_listener* %1, %struct.i40iw_cm_listener** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @I40IW_CM_LISTENER_PASSIVE_STATE, align 4
  %8 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %5, align 8
  %9 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %5, align 8
  %11 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %4, align 8
  %13 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @i40iw_dec_refcnt_listen(%struct.i40iw_cm_core* %12, %struct.i40iw_cm_listener* %13, i32 1, i32 %14)
  ret i32 %15
}

declare dso_local i32 @i40iw_dec_refcnt_listen(%struct.i40iw_cm_core*, %struct.i40iw_cm_listener*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
