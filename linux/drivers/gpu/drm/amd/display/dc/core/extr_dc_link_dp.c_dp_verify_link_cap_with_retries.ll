; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_verify_link_cap_with_retries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_verify_link_cap_with_retries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, i32 }
%struct.dc_link_settings = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dp_verify_link_cap_with_retries(%struct.dc_link* %0, %struct.dc_link_settings* %1, i32 %2) #0 {
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %struct.dc_link_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %4, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  %16 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %17 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %16, i32 0, i32 1
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %20 = call i32 @dc_link_detect_sink(%struct.dc_link* %19, i32* %10)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %39

23:                                               ; preds = %15
  %24 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %25 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %26 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %25, i32 0, i32 0
  %27 = call i64 @dp_verify_link_cap(%struct.dc_link* %24, i32* %26, i32* %9)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %39

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33
  %35 = call i32 @msleep(i32 10)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %11

39:                                               ; preds = %32, %22, %11
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dc_link_detect_sink(%struct.dc_link*, i32*) #1

declare dso_local i64 @dp_verify_link_cap(%struct.dc_link*, i32*, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
