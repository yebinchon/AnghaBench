; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv10.c_nv10_devinit_meminit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv10.c_nv10_devinit_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64, i32 }
%struct.io_mapping = type { i32 }

@nv10_devinit_meminit.mem_width = internal constant [3 x i32] [i32 16, i32 0, i32 32], align 4
@NV_11 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"failed to map fb\0A\00", align 1
@NV10_PFB_REFCTRL = common dso_local global i32 0, align 4
@NV10_PFB_REFCTRL_VALID_1 = common dso_local global i32 0, align 4
@NV04_PFB_CFG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_devinit*)* @nv10_devinit_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_devinit_meminit(%struct.nvkm_devinit* %0) #0 {
  %2 = alloca %struct.nvkm_devinit*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_mapping*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %2, align 8
  %12 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %13 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %3, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %4, align 8
  store i32 -559038737, i32* %6, align 4
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NV_11, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 23
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 3, i32* %5, align 4
  br label %29

28:                                               ; preds = %22, %1
  store i32 2, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %31 = call %struct.io_mapping* @fbmem_init(%struct.nvkm_device* %30)
  store %struct.io_mapping* %31, %struct.io_mapping** %7, align 8
  %32 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %33 = icmp ne %struct.io_mapping* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %36 = call i32 @nvkm_error(%struct.nvkm_subdev* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %128

37:                                               ; preds = %29
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %39 = load i32, i32* @NV10_PFB_REFCTRL, align 4
  %40 = load i32, i32* @NV10_PFB_REFCTRL_VALID_1, align 4
  %41 = call i32 @nvkm_wr32(%struct.nvkm_device* %38, i32 %39, i32 %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %83, %37
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %48 = load i32, i32* @NV04_PFB_CFG0, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* @nv10_devinit_meminit.mem_width, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nvkm_mask(%struct.nvkm_device* %47, i32 %48, i32 48, i32 %52)
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %79, %46
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %64, %57
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %63 = call i32 @fbmem_poke(%struct.io_mapping* %62, i32 28, i32 0)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %58

67:                                               ; preds = %58
  %68 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @fbmem_poke(%struct.io_mapping* %68, i32 28, i32 %69)
  %71 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %72 = call i32 @fbmem_poke(%struct.io_mapping* %71, i32 60, i32 0)
  %73 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %74 = call i32 @fbmem_peek(%struct.io_mapping* %73, i32 28)
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %87

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %54

82:                                               ; preds = %54
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %42

86:                                               ; preds = %42
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i32, i32* %6, align 4
  %89 = shl i32 %88, 1
  store i32 %89, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %118, %87
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %121

93:                                               ; preds = %90
  %94 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %95 = call i32 @nvkm_rd32(%struct.nvkm_device* %94, i32 1049100)
  %96 = sub nsw i32 %95, 1048576
  store i32 %96, i32* %11, align 4
  %97 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @fbmem_poke(%struct.io_mapping* %97, i32 %98, i32 %99)
  %101 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %102 = call i32 @fbmem_poke(%struct.io_mapping* %101, i32 0, i32 0)
  %103 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %104 = call i32 @fbmem_peek(%struct.io_mapping* %103, i32 0)
  %105 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %106 = call i32 @fbmem_peek(%struct.io_mapping* %105, i32 0)
  %107 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %108 = call i32 @fbmem_peek(%struct.io_mapping* %107, i32 0)
  %109 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %110 = call i32 @fbmem_peek(%struct.io_mapping* %109, i32 0)
  %111 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @fbmem_peek(%struct.io_mapping* %111, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %93
  br label %125

117:                                              ; preds = %93
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %90

121:                                              ; preds = %90
  %122 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %123 = load i32, i32* @NV04_PFB_CFG0, align 4
  %124 = call i32 @nvkm_mask(%struct.nvkm_device* %122, i32 %123, i32 4096, i32 0)
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.io_mapping*, %struct.io_mapping** %7, align 8
  %127 = call i32 @fbmem_fini(%struct.io_mapping* %126)
  br label %128

128:                                              ; preds = %125, %34
  ret void
}

declare dso_local %struct.io_mapping* @fbmem_init(%struct.nvkm_device*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @fbmem_poke(%struct.io_mapping*, i32, i32) #1

declare dso_local i32 @fbmem_peek(%struct.io_mapping*, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @fbmem_fini(%struct.io_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
