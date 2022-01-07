; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_uevent_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_uevent_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_notify = type { i32, i32, i32 }
%struct.nv50_disp_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.anon = type { %struct.nvif_notify_uevent_req }
%struct.nvif_notify_uevent_req = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_disp_chan_uevent_ctor(%struct.nvkm_object* %0, i8* %1, i32 %2, %struct.nvkm_notify* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_notify*, align 8
  %10 = alloca %struct.nv50_disp_chan*, align 8
  %11 = alloca %union.anon*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_notify* %3, %struct.nvkm_notify** %9, align 8
  %13 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %14 = call %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object* %13)
  store %struct.nv50_disp_chan* %14, %struct.nv50_disp_chan** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %union.anon*
  store %union.anon* %16, %union.anon** %11, align 8
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %union.anon*, %union.anon** %11, align 8
  %21 = bitcast %union.anon* %20 to %struct.nvif_notify_uevent_req*
  %22 = getelementptr inbounds %struct.nvif_notify_uevent_req, %struct.nvif_notify_uevent_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nvif_unvers(i32 %19, i8** %7, i32* %8, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %4
  %27 = load %struct.nvkm_notify*, %struct.nvkm_notify** %9, align 8
  %28 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %27, i32 0, i32 0
  store i32 4, i32* %28, align 4
  %29 = load %struct.nvkm_notify*, %struct.nvkm_notify** %9, align 8
  %30 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %10, align 8
  %32 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nvkm_notify*, %struct.nvkm_notify** %9, align 8
  %36 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object*) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
