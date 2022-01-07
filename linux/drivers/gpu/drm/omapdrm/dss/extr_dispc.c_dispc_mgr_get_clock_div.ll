; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_get_clock_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_get_clock_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }
%struct.dispc_clock_info = type { i64, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispc_mgr_get_clock_div(%struct.dispc_device* %0, i32 %1, %struct.dispc_clock_info* %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dispc_clock_info*, align 8
  %7 = alloca i64, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dispc_clock_info* %2, %struct.dispc_clock_info** %6, align 8
  %8 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %9 = call i64 @dispc_fclk_rate(%struct.dispc_device* %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @DISPC_DIVISORo(i32 %11)
  %13 = call i8* @REG_GET(%struct.dispc_device* %10, i32 %12, i32 23, i32 16)
  %14 = ptrtoint i8* %13 to i64
  %15 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %6, align 8
  %16 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @DISPC_DIVISORo(i32 %18)
  %20 = call i8* @REG_GET(%struct.dispc_device* %17, i32 %19, i32 7, i32 0)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %6, align 8
  %23 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %6, align 8
  %26 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = udiv i64 %24, %27
  %29 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %6, align 8
  %30 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %6, align 8
  %32 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %6, align 8
  %35 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %33, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %6, align 8
  %41 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  ret i32 0
}

declare dso_local i64 @dispc_fclk_rate(%struct.dispc_device*) #1

declare dso_local i8* @REG_GET(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @DISPC_DIVISORo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
