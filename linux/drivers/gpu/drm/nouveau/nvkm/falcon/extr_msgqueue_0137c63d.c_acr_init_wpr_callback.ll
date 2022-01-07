; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0137c63d.c_acr_init_wpr_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0137c63d.c_acr_init_wpr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_msgqueue_hdr = type { i32 }
%struct.anon = type { %struct.nvkm_msgqueue_msg, i64 }
%struct.nvkm_msgqueue_msg = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ACR WPR init failure: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ACR WPR init complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*)* @acr_init_wpr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acr_init_wpr_callback(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_hdr* %1) #0 {
  %3 = alloca %struct.nvkm_msgqueue*, align 8
  %4 = alloca %struct.nvkm_msgqueue_hdr*, align 8
  %5 = alloca %struct.anon*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %3, align 8
  store %struct.nvkm_msgqueue_hdr* %1, %struct.nvkm_msgqueue_hdr** %4, align 8
  %7 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %4, align 8
  %8 = bitcast %struct.nvkm_msgqueue_hdr* %7 to i8*
  %9 = bitcast i8* %8 to %struct.anon*
  store %struct.anon* %9, %struct.anon** %5, align 8
  %10 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %13, align 8
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %6, align 8
  %15 = load %struct.anon*, %struct.anon** %5, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %21 = load %struct.anon*, %struct.anon** %5, align 8
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @nvkm_error(%struct.nvkm_subdev* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %27 = call i32 @nvkm_debug(%struct.nvkm_subdev* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %29 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %28, i32 0, i32 0
  %30 = call i32 @complete_all(i32* %29)
  br label %31

31:                                               ; preds = %25, %19
  ret void
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i64) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
