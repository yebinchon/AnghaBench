; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv20.c_nv20_devinit_meminit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv20.c_nv20_devinit_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.io_mapping = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"failed to map fb\0A\00", align 1
@NV10_PFB_REFCTRL = common dso_local global i32 0, align 4
@NV10_PFB_REFCTRL_VALID_1 = common dso_local global i32 0, align 4
@NV04_PFB_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_devinit*)* @nv20_devinit_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv20_devinit_meminit(%struct.nvkm_devinit* %0) #0 {
  %2 = alloca %struct.nvkm_devinit*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.io_mapping*, align 8
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %2, align 8
  %9 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %3, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 37
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 768, i32 2304
  store i32 %19, i32* %5, align 4
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = call %struct.io_mapping* @fbmem_init(%struct.nvkm_device* %20)
  store %struct.io_mapping* %21, %struct.io_mapping** %8, align 8
  %22 = load %struct.io_mapping*, %struct.io_mapping** %8, align 8
  %23 = icmp ne %struct.io_mapping* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %26 = call i32 @nvkm_error(%struct.nvkm_subdev* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %68

27:                                               ; preds = %1
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %29 = load i32, i32* @NV10_PFB_REFCTRL, align 4
  %30 = load i32, i32* @NV10_PFB_REFCTRL_VALID_1, align 4
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 %29, i32 %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %33 = load i32, i32* @NV04_PFB_CFG0, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @nvkm_mask(%struct.nvkm_device* %32, i32 %33, i32 0, i32 %34)
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %37 = call i32 @nvkm_rd32(%struct.nvkm_device* %36, i32 1049100)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %48, %27
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 33554432
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.io_mapping*, %struct.io_mapping** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @fbmem_poke(%struct.io_mapping* %43, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 33554432
  store i32 %50, i32* %7, align 4
  br label %39

51:                                               ; preds = %39
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %53 = call i32 @nvkm_rd32(%struct.nvkm_device* %52, i32 1049100)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.io_mapping*, %struct.io_mapping** %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 4
  %58 = call i32 @fbmem_peek(%struct.io_mapping* %55, i32 %57)
  %59 = icmp ne i32 %54, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %62 = load i32, i32* @NV04_PFB_CFG0, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @nvkm_mask(%struct.nvkm_device* %61, i32 %62, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %60, %51
  %66 = load %struct.io_mapping*, %struct.io_mapping** %8, align 8
  %67 = call i32 @fbmem_fini(%struct.io_mapping* %66)
  br label %68

68:                                               ; preds = %65, %24
  ret void
}

declare dso_local %struct.io_mapping* @fbmem_init(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @fbmem_poke(%struct.io_mapping*, i32, i32) #1

declare dso_local i32 @fbmem_peek(%struct.io_mapping*, i32) #1

declare dso_local i32 @fbmem_fini(%struct.io_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
