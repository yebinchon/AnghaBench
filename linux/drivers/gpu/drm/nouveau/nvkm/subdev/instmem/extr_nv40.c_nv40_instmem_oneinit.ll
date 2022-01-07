; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv40.c_nv40_instmem_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv40.c_nv40_instmem_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_instmem = type { i32 }
%struct.nv40_instmem = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_instmem*)* @nv40_instmem_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_instmem_oneinit(%struct.nvkm_instmem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_instmem*, align 8
  %4 = alloca %struct.nv40_instmem*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_instmem* %0, %struct.nvkm_instmem** %3, align 8
  %8 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %3, align 8
  %9 = call %struct.nv40_instmem* @nv40_instmem(%struct.nvkm_instmem* %8)
  store %struct.nv40_instmem* %9, %struct.nv40_instmem** %4, align 8
  %10 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %11 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 5440)
  %17 = and i32 %16, 65280
  %18 = ashr i32 %17, 8
  %19 = call i32 @hweight8(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 27296, %25
  %27 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %28 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 67
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 20224, %36
  %38 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %39 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  br label %58

41:                                               ; preds = %30
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %43 = call i64 @nv44_gr_class(%struct.nvkm_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 18816, %46
  %48 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %49 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  br label %57

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 19008, %52
  %54 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %55 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %61 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 16384
  store i32 %64, i32* %62, align 8
  %65 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %66 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 32
  store i32 %69, i32* %67, align 8
  %70 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %71 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 524288
  store i32 %74, i32* %72, align 8
  %75 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %76 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 524288
  store i32 %79, i32* %77, align 8
  %80 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %81 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @round_up(i32 %83, i32 4096)
  %85 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %86 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %89 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %88, i32 0, i32 1
  %90 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %91 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @nvkm_mm_init(i32* %89, i32 0, i32 0, i32 %93, i32 1)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %59
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %143

99:                                               ; preds = %59
  %100 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %101 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %102 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %103 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = call i32 @nvkm_memory_new(%struct.nvkm_device* %100, i32 %101, i32 65536, i32 0, i32 0, i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %143

110:                                              ; preds = %99
  %111 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %112 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %113 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = call i32 @nvkm_ramht_new(%struct.nvkm_device* %111, i32 32768, i32 0, i32* null, i32* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %143

120:                                              ; preds = %110
  %121 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %122 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %123 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %124 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = call i32 @nvkm_memory_new(%struct.nvkm_device* %121, i32 %122, i32 32768, i32 0, i32 0, i32* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %2, align 4
  br label %143

131:                                              ; preds = %120
  %132 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %133 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %134 = load %struct.nv40_instmem*, %struct.nv40_instmem** %4, align 8
  %135 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = call i32 @nvkm_memory_new(%struct.nvkm_device* %132, i32 %133, i32 131072, i32 0, i32 1, i32* %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %143

142:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %140, %129, %118, %108, %97
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.nv40_instmem* @nv40_instmem(%struct.nvkm_instmem*) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i64 @nv44_gr_class(%struct.nvkm_device*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @nvkm_mm_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_ramht_new(%struct.nvkm_device*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
