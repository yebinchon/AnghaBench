; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_plane = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_plane*)* @ipu_plane_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_plane_enable(%struct.ipu_plane* %0) #0 {
  %2 = alloca %struct.ipu_plane*, align 8
  store %struct.ipu_plane* %0, %struct.ipu_plane** %2, align 8
  %3 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %4 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %9 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ipu_dp_enable(i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %14 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ipu_dmfc_enable_channel(i32 %15)
  %17 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %18 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ipu_idmac_enable_channel(i32 %19)
  %21 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %22 = call i64 @ipu_plane_separate_alpha(%struct.ipu_plane* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %26 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ipu_idmac_enable_channel(i32 %27)
  br label %29

29:                                               ; preds = %24, %12
  %30 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %31 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ipu_plane*, %struct.ipu_plane** %2, align 8
  %36 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ipu_dp_enable_channel(i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @ipu_dp_enable(i32) #1

declare dso_local i32 @ipu_dmfc_enable_channel(i32) #1

declare dso_local i32 @ipu_idmac_enable_channel(i32) #1

declare dso_local i64 @ipu_plane_separate_alpha(%struct.ipu_plane*) #1

declare dso_local i32 @ipu_dp_enable_channel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
