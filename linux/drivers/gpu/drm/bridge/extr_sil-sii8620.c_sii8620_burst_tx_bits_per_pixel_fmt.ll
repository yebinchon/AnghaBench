; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_tx_bits_per_pixel_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_burst_tx_bits_per_pixel_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }
%struct.mhl_burst_bits_per_pixel_fmt = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@MHL_BURST_ID_BITS_PER_PIXEL_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*, i32)* @sii8620_burst_tx_bits_per_pixel_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_burst_tx_bits_per_pixel_fmt(%struct.sii8620* %0, i32 %1) #0 {
  %3 = alloca %struct.sii8620*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mhl_burst_bits_per_pixel_fmt*, align 8
  %6 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 32, i32* %6, align 4
  %7 = load %struct.sii8620*, %struct.sii8620** %3, align 8
  %8 = call %struct.mhl_burst_bits_per_pixel_fmt* @sii8620_burst_get_tx_buf(%struct.sii8620* %7, i32 32)
  store %struct.mhl_burst_bits_per_pixel_fmt* %8, %struct.mhl_burst_bits_per_pixel_fmt** %5, align 8
  %9 = load %struct.mhl_burst_bits_per_pixel_fmt*, %struct.mhl_burst_bits_per_pixel_fmt** %5, align 8
  %10 = icmp ne %struct.mhl_burst_bits_per_pixel_fmt* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.mhl_burst_bits_per_pixel_fmt*, %struct.mhl_burst_bits_per_pixel_fmt** %5, align 8
  %14 = getelementptr inbounds %struct.mhl_burst_bits_per_pixel_fmt, %struct.mhl_burst_bits_per_pixel_fmt* %13, i32 0, i32 1
  %15 = load i32, i32* @MHL_BURST_ID_BITS_PER_PIXEL_FMT, align 4
  %16 = call i32 @sii8620_mhl_burst_hdr_set(%struct.TYPE_4__* %14, i32 %15)
  %17 = load %struct.mhl_burst_bits_per_pixel_fmt*, %struct.mhl_burst_bits_per_pixel_fmt** %5, align 8
  %18 = getelementptr inbounds %struct.mhl_burst_bits_per_pixel_fmt, %struct.mhl_burst_bits_per_pixel_fmt* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.mhl_burst_bits_per_pixel_fmt*, %struct.mhl_burst_bits_per_pixel_fmt** %5, align 8
  %20 = getelementptr inbounds %struct.mhl_burst_bits_per_pixel_fmt, %struct.mhl_burst_bits_per_pixel_fmt* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.mhl_burst_bits_per_pixel_fmt*, %struct.mhl_burst_bits_per_pixel_fmt** %5, align 8
  %26 = getelementptr inbounds %struct.mhl_burst_bits_per_pixel_fmt, %struct.mhl_burst_bits_per_pixel_fmt* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 8
  %30 = load %struct.mhl_burst_bits_per_pixel_fmt*, %struct.mhl_burst_bits_per_pixel_fmt** %5, align 8
  %31 = call i64 @sii8620_checksum(%struct.mhl_burst_bits_per_pixel_fmt* %30, i32 32)
  %32 = load %struct.mhl_burst_bits_per_pixel_fmt*, %struct.mhl_burst_bits_per_pixel_fmt** %5, align 8
  %33 = getelementptr inbounds %struct.mhl_burst_bits_per_pixel_fmt, %struct.mhl_burst_bits_per_pixel_fmt* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %31
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  br label %39

39:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.mhl_burst_bits_per_pixel_fmt* @sii8620_burst_get_tx_buf(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_mhl_burst_hdr_set(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @sii8620_checksum(%struct.mhl_burst_bits_per_pixel_fmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
