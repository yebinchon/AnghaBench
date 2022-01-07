; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_update_clock_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_update_clock_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_crtc_state = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_crtc_state*)* @komeda_crtc_update_clock_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_crtc_update_clock_ratio(%struct.komeda_crtc_state* %0) #0 {
  %2 = alloca %struct.komeda_crtc_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.komeda_crtc_state* %0, %struct.komeda_crtc_state** %2, align 8
  %5 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %2, align 8
  %6 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %2, align 8
  %12 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %2, align 8
  %15 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %18, 1000
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %2, align 8
  %22 = call i32 @komeda_crtc_get_aclk(%struct.komeda_crtc_state* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 32
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @div64_u64(i32 %24, i32 %25)
  %27 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %2, align 8
  %28 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @komeda_crtc_get_aclk(%struct.komeda_crtc_state*) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
