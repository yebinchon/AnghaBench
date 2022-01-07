; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_match_tmds_partner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_match_tmds_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mxm = type { i32 }
%struct.context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mxms_odev = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_mxm*, i32*, i8*)* @mxm_match_tmds_partner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_match_tmds_partner(%struct.nvkm_mxm* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_mxm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca %struct.mxms_odev, align 8
  store %struct.nvkm_mxm* %0, %struct.nvkm_mxm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.context*
  store %struct.context* %11, %struct.context** %8, align 8
  %12 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @mxms_output_device(%struct.nvkm_mxm* %12, i32* %13, %struct.mxms_odev* %9)
  %15 = getelementptr inbounds %struct.mxms_odev, %struct.mxms_odev* %9, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.mxms_odev, %struct.mxms_odev* %9, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.context*, %struct.context** %8, align 8
  %22 = getelementptr inbounds %struct.context, %struct.context* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %28

27:                                               ; preds = %18, %3
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @mxms_output_device(%struct.nvkm_mxm*, i32*, %struct.mxms_odev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
