; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_drive_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_drive_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.dc_link** }
%struct.link_training_settings = type { i32 }
%struct.dc_link = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_link_set_drive_settings(%struct.dc* %0, %struct.link_training_settings* %1, %struct.dc_link* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.link_training_settings*, align 8
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.link_training_settings* %1, %struct.link_training_settings** %5, align 8
  store %struct.dc_link* %2, %struct.dc_link** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %26, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.dc*, %struct.dc** %4, align 8
  %11 = getelementptr inbounds %struct.dc, %struct.dc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.dc*, %struct.dc** %4, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 1
  %17 = load %struct.dc_link**, %struct.dc_link*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dc_link*, %struct.dc_link** %17, i64 %19
  %21 = load %struct.dc_link*, %struct.dc_link** %20, align 8
  %22 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %23 = icmp eq %struct.dc_link* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %8

29:                                               ; preds = %24, %8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.dc*, %struct.dc** %4, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %37

37:                                               ; preds = %35, %29
  %38 = load %struct.dc*, %struct.dc** %4, align 8
  %39 = getelementptr inbounds %struct.dc, %struct.dc* %38, i32 0, i32 1
  %40 = load %struct.dc_link**, %struct.dc_link*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dc_link*, %struct.dc_link** %40, i64 %42
  %44 = load %struct.dc_link*, %struct.dc_link** %43, align 8
  %45 = load %struct.link_training_settings*, %struct.link_training_settings** %5, align 8
  %46 = call i32 @dc_link_dp_set_drive_settings(%struct.dc_link* %44, %struct.link_training_settings* %45)
  ret void
}

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local i32 @dc_link_dp_set_drive_settings(%struct.dc_link*, %struct.link_training_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
