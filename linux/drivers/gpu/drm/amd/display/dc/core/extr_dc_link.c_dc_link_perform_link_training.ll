; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_perform_link_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_perform_link_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, i32* }
%struct.dc_link_settings = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_link_perform_link_training(%struct.dc* %0, %struct.dc_link_settings* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_link_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.dc*, %struct.dc** %4, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load %struct.dc*, %struct.dc** %4, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dc_link_dp_perform_link_training(i32 %21, %struct.dc_link_settings* %22, i32 %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %8

28:                                               ; preds = %8
  ret void
}

declare dso_local i32 @dc_link_dp_perform_link_training(i32, %struct.dc_link_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
