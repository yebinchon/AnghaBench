; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_check_pkt3_indx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_check_pkt3_indx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32 }
%struct.radeon_cs_packet = type { i32 }
%struct.radeon_bo = type { i32 }

@.str = private unnamed_addr constant [69 x i8] c"[drm] Buffer too small for PACKET3 INDX_BUFFER (need %u have %lu) !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_cs_track_check_pkt3_indx_buffer(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, %struct.radeon_bo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_cs_packet*, align 8
  %7 = alloca %struct.radeon_bo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %6, align 8
  store %struct.radeon_bo* %2, %struct.radeon_bo** %7, align 8
  %10 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %11 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  %14 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = add i32 %15, 2
  %17 = call i64 @radeon_get_ib_value(%struct.radeon_cs_parser* %14, i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = add nsw i64 %18, 1
  %20 = load %struct.radeon_bo*, %struct.radeon_bo** %7, align 8
  %21 = call i64 @radeon_bo_size(%struct.radeon_bo* %20)
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i64, i64* %9, align 8
  %25 = add nsw i64 %24, 1
  %26 = load %struct.radeon_bo*, %struct.radeon_bo** %7, align 8
  %27 = call i64 @radeon_bo_size(%struct.radeon_bo* %26)
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i64 @radeon_bo_size(%struct.radeon_bo*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
