; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_disable_hpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_disable_hpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.link_encoder* }
%struct.link_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.link_encoder*)*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_link_dp_disable_hpd(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca %struct.link_encoder*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %4 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %5 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %4, i32 0, i32 0
  %6 = load %struct.link_encoder*, %struct.link_encoder** %5, align 8
  store %struct.link_encoder* %6, %struct.link_encoder** %3, align 8
  %7 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %8 = icmp ne %struct.link_encoder* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %18 = getelementptr inbounds %struct.link_encoder, %struct.link_encoder* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.link_encoder*)*, i32 (%struct.link_encoder*)** %20, align 8
  %22 = load %struct.link_encoder*, %struct.link_encoder** %3, align 8
  %23 = call i32 %21(%struct.link_encoder* %22)
  br label %24

24:                                               ; preds = %16, %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
