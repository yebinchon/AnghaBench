; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dce_calcs.c_is_display_configuration_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dce_calcs.c_is_display_configuration_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bw_calcs_vbios = type { i32, i32 }
%struct.dce_bw_output = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bw_calcs_vbios*, %struct.dce_bw_output*)* @is_display_configuration_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_display_configuration_supported(%struct.bw_calcs_vbios* %0, %struct.dce_bw_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bw_calcs_vbios*, align 8
  %5 = alloca %struct.dce_bw_output*, align 8
  %6 = alloca i32, align 4
  store %struct.bw_calcs_vbios* %0, %struct.bw_calcs_vbios** %4, align 8
  store %struct.dce_bw_output* %1, %struct.dce_bw_output** %5, align 8
  %7 = load %struct.bw_calcs_vbios*, %struct.bw_calcs_vbios** %4, align 8
  %8 = getelementptr inbounds %struct.bw_calcs_vbios, %struct.bw_calcs_vbios* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bw_fixed_to_int(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = mul nsw i32 %11, 1000
  store i32 %12, i32* %6, align 4
  %13 = load %struct.dce_bw_output*, %struct.dce_bw_output** %5, align 8
  %14 = getelementptr inbounds %struct.dce_bw_output, %struct.dce_bw_output* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.bw_calcs_vbios*, %struct.bw_calcs_vbios** %4, align 8
  %21 = getelementptr inbounds %struct.bw_calcs_vbios, %struct.bw_calcs_vbios* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bw_fixed_to_int(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 1000
  store i32 %25, i32* %6, align 4
  %26 = load %struct.dce_bw_output*, %struct.dce_bw_output** %5, align 8
  %27 = getelementptr inbounds %struct.dce_bw_output, %struct.dce_bw_output* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @bw_fixed_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
