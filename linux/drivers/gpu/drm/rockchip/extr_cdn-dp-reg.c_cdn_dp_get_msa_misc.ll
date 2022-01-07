; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_get_msa_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_get_msa_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_info = type { i32, i32 }
%struct.drm_display_mode = type { i32 }

@BT_601 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_info*, %struct.drm_display_mode*)* @cdn_dp_get_msa_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_get_msa_misc(%struct.video_info* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.video_info*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store %struct.video_info* %0, %struct.video_info** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.video_info*, %struct.video_info** %3, align 8
  %9 = getelementptr inbounds %struct.video_info, %struct.video_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %25 [
    i32 132, label %11
    i32 128, label %11
    i32 129, label %13
    i32 130, label %18
    i32 131, label %23
  ]

11:                                               ; preds = %2, %2
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %12, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @BT_601, align 4
  %15 = mul nsw i32 %14, 8
  %16 = add nsw i32 6, %15
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @BT_601, align 4
  %20 = mul nsw i32 %19, 8
  %21 = add nsw i32 5, %20
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  br label %25

23:                                               ; preds = %2
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 5, i32* %24, align 4
  br label %25

25:                                               ; preds = %2, %23, %18, %13, %11
  %26 = load %struct.video_info*, %struct.video_info** %3, align 8
  %27 = getelementptr inbounds %struct.video_info, %struct.video_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %39 [
    i32 6, label %29
    i32 8, label %31
    i32 10, label %33
    i32 12, label %35
    i32 16, label %37
  ]

29:                                               ; preds = %25
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %30, align 4
  br label %39

31:                                               ; preds = %25
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 1, i32* %32, align 4
  br label %39

33:                                               ; preds = %25
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 2, i32* %34, align 4
  br label %39

35:                                               ; preds = %25
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 3, i32* %36, align 4
  br label %39

37:                                               ; preds = %25
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 4, i32* %38, align 4
  br label %39

39:                                               ; preds = %25, %37, %35, %33, %31, %29
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 2, %41
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 32, %44
  %46 = add nsw i32 %42, %45
  %47 = load %struct.video_info*, %struct.video_info** %3, align 8
  %48 = getelementptr inbounds %struct.video_info, %struct.video_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 128
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 16384, i32 0
  %53 = add nsw i32 %46, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
