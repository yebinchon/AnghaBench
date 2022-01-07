; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_decode_sideband_msg_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_decode_sideband_msg_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_hdr = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"crc4 mismatch 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_sideband_msg_hdr*, i32*, i32, i32*)* @drm_dp_decode_sideband_msg_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_decode_sideband_msg_hdr(%struct.drm_dp_sideband_msg_hdr* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_dp_sideband_msg_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_dp_sideband_msg_hdr* %0, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %154

19:                                               ; preds = %4
  store i32 3, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 240
  %24 = ashr i32 %23, 4
  %25 = sdiv i32 %24, 2
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %154

32:                                               ; preds = %19
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %34, 2
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @drm_dp_msg_header_crc4(i32* %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 15
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  %47 = icmp ne i32 %39, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %32
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %55)
  store i32 0, i32* %5, align 4
  br label %154

57:                                               ; preds = %32
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 240
  %62 = ashr i32 %61, 4
  %63 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %64 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 15
  %69 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %70 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %91, %57
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %74 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %75, 2
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %71
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %86 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %71

94:                                               ; preds = %71
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 7
  %101 = and i32 %100, 1
  %102 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %103 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 6
  %110 = and i32 %109, 1
  %111 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %112 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 63
  %119 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %120 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 7
  %129 = and i32 %128, 1
  %130 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %131 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 6
  %138 = and i32 %137, 1
  %139 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %140 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 4
  %147 = and i32 %146, 1
  %148 = load %struct.drm_dp_sideband_msg_hdr*, %struct.drm_dp_sideband_msg_hdr** %6, align 8
  %149 = getelementptr inbounds %struct.drm_dp_sideband_msg_hdr, %struct.drm_dp_sideband_msg_hdr* %148, i32 0, i32 8
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32*, i32** %9, align 8
  store i32 %152, i32* %153, align 4
  store i32 1, i32* %5, align 4
  br label %154

154:                                              ; preds = %94, %48, %31, %18
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @drm_dp_msg_header_crc4(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
