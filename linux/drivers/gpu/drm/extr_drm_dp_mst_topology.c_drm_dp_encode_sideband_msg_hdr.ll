; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_encode_sideband_msg_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_encode_sideband_msg_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_hdr = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_sideband_msg_hdr*, i32*, i32*)* @drm_dp_encode_sideband_msg_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_dp_encode_sideband_msg_hdr(%struct.drm_dp_sideband_msg_hdr* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_dp_sideband_msg_hdr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_dp_sideband_msg_hdr* %0, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %11 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 15
  %14 = shl i32 %13, 4
  %15 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 15
  %19 = or i32 %14, %18
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %19, i32* %24, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %45, %3
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %28 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %29, 2
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %34 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %50 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 7
  %53 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %54 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 6
  %57 = or i32 %52, %56
  %58 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %59 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 63
  %62 = or i32 %57, %61
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %69 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 7
  %72 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %73 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 6
  %76 = or i32 %71, %75
  %77 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %4, align 8
  %78 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 4
  %81 = or i32 %76, %80
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %81, i32* %86, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 %88, 2
  %90 = sub nsw i32 %89, 1
  %91 = call i32 @drm_dp_msg_header_crc4(i32* %87, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, 15
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %93
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  ret void
}

declare dso_local i32 @drm_dp_msg_header_crc4(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
