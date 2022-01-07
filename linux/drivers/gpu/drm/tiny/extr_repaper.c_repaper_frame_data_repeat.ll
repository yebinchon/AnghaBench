; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_frame_data_repeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_repaper.c_repaper_frame_data_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repaper_epd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repaper_epd*, i32*, i32*, i32)* @repaper_frame_data_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repaper_frame_data_repeat(%struct.repaper_epd* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.repaper_epd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.repaper_epd* %0, %struct.repaper_epd** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i64 (...) @local_clock()
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.repaper_epd*, %struct.repaper_epd** %5, align 8
  %14 = getelementptr inbounds %struct.repaper_epd, %struct.repaper_epd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 1000
  %17 = mul nsw i32 %16, 1000
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %12, %18
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %26, %4
  %21 = load %struct.repaper_epd*, %struct.repaper_epd** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @repaper_frame_data(%struct.repaper_epd* %21, i32* %22, i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %20
  %27 = call i64 (...) @local_clock()
  %28 = load i64, i64* %10, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %20, label %30

30:                                               ; preds = %26
  ret void
}

declare dso_local i64 @local_clock(...) #1

declare dso_local i32 @repaper_frame_data(%struct.repaper_epd*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
