; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_i2c_retry_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_i2c_retry_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux_msg = type { i32 }

@AUX_RETRY_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux_msg*, i32)* @drm_dp_i2c_retry_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_i2c_retry_count(%struct.drm_dp_aux_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_dp_aux_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_dp_aux_msg* %0, %struct.drm_dp_aux_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %3, align 8
  %8 = call i32 @drm_dp_aux_req_duration(%struct.drm_dp_aux_msg* %7)
  %9 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %3, align 8
  %10 = call i32 @drm_dp_aux_reply_duration(%struct.drm_dp_aux_msg* %9)
  %11 = add nsw i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @drm_dp_i2c_msg_duration(%struct.drm_dp_aux_msg* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @AUX_RETRY_INTERVAL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @DIV_ROUND_UP(i32 %15, i64 %19)
  ret i32 %20
}

declare dso_local i32 @drm_dp_aux_req_duration(%struct.drm_dp_aux_msg*) #1

declare dso_local i32 @drm_dp_aux_reply_duration(%struct.drm_dp_aux_msg*) #1

declare dso_local i32 @drm_dp_i2c_msg_duration(%struct.drm_dp_aux_msg*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
