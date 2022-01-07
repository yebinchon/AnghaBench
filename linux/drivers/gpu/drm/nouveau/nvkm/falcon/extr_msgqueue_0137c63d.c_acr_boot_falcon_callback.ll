; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0137c63d.c_acr_boot_falcon_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0137c63d.c_acr_boot_falcon_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev* }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_msgqueue_hdr = type { i32 }
%struct.acr_bootstrap_falcon_msg = type { %struct.nvkm_msgqueue_msg, i64 }
%struct.nvkm_msgqueue_msg = type { i32 }

@NVKM_SECBOOT_FALCON_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"in bootstrap falcon callback:\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid falcon ID 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s booted\0A\00", align 1
@nvkm_secboot_falcon_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_msgqueue*, %struct.nvkm_msgqueue_hdr*)* @acr_boot_falcon_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acr_boot_falcon_callback(%struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue_hdr* %1) #0 {
  %3 = alloca %struct.nvkm_msgqueue*, align 8
  %4 = alloca %struct.nvkm_msgqueue_hdr*, align 8
  %5 = alloca %struct.acr_bootstrap_falcon_msg*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i64, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %3, align 8
  store %struct.nvkm_msgqueue_hdr* %1, %struct.nvkm_msgqueue_hdr** %4, align 8
  %8 = load %struct.nvkm_msgqueue_hdr*, %struct.nvkm_msgqueue_hdr** %4, align 8
  %9 = bitcast %struct.nvkm_msgqueue_hdr* %8 to i8*
  %10 = bitcast i8* %9 to %struct.acr_bootstrap_falcon_msg*
  store %struct.acr_bootstrap_falcon_msg* %10, %struct.acr_bootstrap_falcon_msg** %5, align 8
  %11 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %14, align 8
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %6, align 8
  %16 = load %struct.acr_bootstrap_falcon_msg*, %struct.acr_bootstrap_falcon_msg** %5, align 8
  %17 = getelementptr inbounds %struct.acr_bootstrap_falcon_msg, %struct.acr_bootstrap_falcon_msg* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @NVKM_SECBOOT_FALCON_END, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %24 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %35

28:                                               ; preds = %2
  %29 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %30 = load i32*, i32** @nvkm_secboot_falcon_name, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nvkm_debug(%struct.nvkm_subdev* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
