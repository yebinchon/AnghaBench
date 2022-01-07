; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_msgqueue_post_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_ls_ucode_msgqueue.c_acr_ls_msgqueue_post_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { i32 }
%struct.nvkm_falcon = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_MSGQUEUE_CMDLINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_msgqueue*, %struct.nvkm_falcon*, i32)* @acr_ls_msgqueue_post_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acr_ls_msgqueue_post_run(%struct.nvkm_msgqueue* %0, %struct.nvkm_falcon* %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_msgqueue*, align 8
  %5 = alloca %struct.nvkm_falcon*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.nvkm_msgqueue* %0, %struct.nvkm_msgqueue** %4, align 8
  store %struct.nvkm_falcon* %1, %struct.nvkm_falcon** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %7, align 8
  %15 = load i32, i32* @NVKM_MSGQUEUE_CMDLINE_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = mul nuw i64 4, %16
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32* %18, i32 0, i32 %20)
  %22 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %23 = call i32 @nvkm_msgqueue_write_cmdline(%struct.nvkm_msgqueue* %22, i32* %18)
  %24 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = mul nuw i64 4, %16
  %27 = trunc i64 %26 to i32
  %28 = call i32 @nvkm_falcon_load_dmem(%struct.nvkm_falcon* %24, i32* %18, i32 %25, i32 %27, i32 0)
  %29 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %4, align 8
  %30 = call i32 @nvkm_msgqueue_reinit(%struct.nvkm_msgqueue* %29)
  %31 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %32 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %31, i32 16, i32 255)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %34 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %35 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @nvkm_mc_intr_mask(%struct.nvkm_device* %33, i32 %38, i32 1)
  %40 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %41 = call i32 @nvkm_falcon_start(%struct.nvkm_falcon* %40)
  %42 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @nvkm_msgqueue_write_cmdline(%struct.nvkm_msgqueue*, i32*) #2

declare dso_local i32 @nvkm_falcon_load_dmem(%struct.nvkm_falcon*, i32*, i32, i32, i32) #2

declare dso_local i32 @nvkm_msgqueue_reinit(%struct.nvkm_msgqueue*) #2

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #2

declare dso_local i32 @nvkm_mc_intr_mask(%struct.nvkm_device*, i32, i32) #2

declare dso_local i32 @nvkm_falcon_start(%struct.nvkm_falcon*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
