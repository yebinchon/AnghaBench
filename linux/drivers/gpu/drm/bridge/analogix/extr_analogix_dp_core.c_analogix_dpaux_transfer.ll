; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dpaux_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dpaux_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.drm_dp_aux_msg = type { i32 }
%struct.analogix_dp_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)* @analogix_dpaux_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dpaux_transfer(%struct.drm_dp_aux* %0, %struct.drm_dp_aux_msg* %1) #0 {
  %3 = alloca %struct.drm_dp_aux*, align 8
  %4 = alloca %struct.drm_dp_aux_msg*, align 8
  %5 = alloca %struct.analogix_dp_device*, align 8
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %3, align 8
  store %struct.drm_dp_aux_msg* %1, %struct.drm_dp_aux_msg** %4, align 8
  %6 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %7 = call %struct.analogix_dp_device* @to_dp(%struct.drm_dp_aux* %6)
  store %struct.analogix_dp_device* %7, %struct.analogix_dp_device** %5, align 8
  %8 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %9 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %4, align 8
  %10 = call i32 @analogix_dp_transfer(%struct.analogix_dp_device* %8, %struct.drm_dp_aux_msg* %9)
  ret i32 %10
}

declare dso_local %struct.analogix_dp_device* @to_dp(%struct.drm_dp_aux*) #1

declare dso_local i32 @analogix_dp_transfer(%struct.analogix_dp_device*, %struct.drm_dp_aux_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
