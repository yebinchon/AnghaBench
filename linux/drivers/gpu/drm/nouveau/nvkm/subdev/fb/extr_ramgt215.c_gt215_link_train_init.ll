; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_link_train_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_link_train_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt215_ram = type { %struct.gt215_ltrain, %struct.TYPE_6__ }
%struct.gt215_ltrain = type { i8*, i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_M0205E = type { i32 }

@gt215_link_train_init.pattern = internal constant [16 x i32] [i32 -1431655766, i32 -858993460, i32 -572662307, i32 -286331154, i32 0, i32 286331153, i32 1145324612, i32 -572662307, i32 858993459, i32 1431655765, i32 2004318071, i32 1717986918, i32 -1717986919, i32 -2004318072, i32 -286331154, i32 -1145324613], align 16
@NVA3_TRAIN_UNSUPPORTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NVA3_TRAIN_ONCE = common dso_local global i32 0, align 4
@NVKM_RAM_MM_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gt215_ram*)* @gt215_link_train_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt215_link_train_init(%struct.gt215_ram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gt215_ram*, align 8
  %4 = alloca %struct.gt215_ltrain*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca %struct.nvbios_M0205E, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gt215_ram* %0, %struct.gt215_ram** %3, align 8
  %16 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %17 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %16, i32 0, i32 0
  store %struct.gt215_ltrain* %17, %struct.gt215_ltrain** %4, align 8
  %18 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %19 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %23, align 8
  store %struct.nvkm_device* %24, %struct.nvkm_device** %5, align 8
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %26 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %25, i32 0, i32 0
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %26, align 8
  store %struct.nvkm_bios* %27, %struct.nvkm_bios** %6, align 8
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @NVA3_TRAIN_UNSUPPORTED, align 4
  %29 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %30 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @nvbios_M0205Ep(%struct.nvkm_bios* %31, i32 %32, i32* %8, i32* %9, i32* %10, i32* %11, %struct.nvbios_M0205E* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %170

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.nvbios_M0205E, %struct.nvbios_M0205E* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 5
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %170

43:                                               ; preds = %38
  %44 = load i32, i32* @NVA3_TRAIN_ONCE, align 4
  %45 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %46 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %48 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  %49 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %50 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %50, i32 0, i32 3
  %52 = call i32 @nvkm_ram_get(%struct.nvkm_device* %47, i32 %48, i32 1, i32 16, i32 32768, i32 1, i32 1, i32* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %2, align 4
  br label %170

57:                                               ; preds = %43
  %58 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %59 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @nvkm_memory_addr(i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = ashr i32 %64, 16
  %66 = or i32 268435456, %65
  %67 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 1049912, i32 %66)
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %68, i32 1050024, i32 65535)
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %71 = call i32 @nvkm_mask(%struct.nvkm_device* %70, i32 1112064, i32 1, i32 1)
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %89, %57
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 48
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %77 = load i32, i32* %15, align 4
  %78 = shl i32 %77, 8
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @nvkm_wr32(%struct.nvkm_device* %76, i32 1112256, i32 %80)
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %83 = load i32, i32* %15, align 4
  %84 = srem i32 %83, 16
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* @gt215_link_train_init.pattern, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @nvkm_wr32(%struct.nvkm_device* %82, i32 1112320, i32 %87)
  br label %89

89:                                               ; preds = %75
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %72

92:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %110, %92
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 48
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %98 = load i32, i32* %15, align 4
  %99 = shl i32 %98, 8
  %100 = load i32, i32* %15, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @nvkm_wr32(%struct.nvkm_device* %97, i32 1112288, i32 %101)
  %103 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %104 = load i32, i32* %15, align 4
  %105 = srem i32 %104, 16
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* @gt215_link_train_init.pattern, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @nvkm_wr32(%struct.nvkm_device* %103, i32 1112352, i32 %108)
  br label %110

110:                                              ; preds = %96
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %93

113:                                              ; preds = %93
  %114 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %115 = call i8* @nvkm_rd32(%struct.nvkm_device* %114, i32 5888)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %118 = load i32, i32* %13, align 4
  %119 = ashr i32 %118, 16
  %120 = call i32 @nvkm_wr32(%struct.nvkm_device* %117, i32 5888, i32 %119)
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %134, %113
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %122, 16
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %126 = load i32, i32* %15, align 4
  %127 = shl i32 %126, 2
  %128 = add nsw i32 7340032, %127
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* @gt215_link_train_init.pattern, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @nvkm_wr32(%struct.nvkm_device* %125, i32 %128, i32 %132)
  br label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %121

137:                                              ; preds = %121
  store i32 0, i32* %15, align 4
  br label %138

138:                                              ; preds = %151, %137
  %139 = load i32, i32* %15, align 4
  %140 = icmp slt i32 %139, 16
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %143 = load i32, i32* %15, align 4
  %144 = shl i32 %143, 2
  %145 = add nsw i32 7340288, %144
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* @gt215_link_train_init.pattern, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @nvkm_wr32(%struct.nvkm_device* %142, i32 %145, i32 %149)
  br label %151

151:                                              ; preds = %141
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %138

154:                                              ; preds = %138
  %155 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @nvkm_wr32(%struct.nvkm_device* %155, i32 5888, i32 %156)
  %158 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %159 = call i8* @nvkm_rd32(%struct.nvkm_device* %158, i32 1050400)
  %160 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %161 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %163 = call i8* @nvkm_rd32(%struct.nvkm_device* %162, i32 1118688)
  %164 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %165 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %167 = call i8* @nvkm_rd32(%struct.nvkm_device* %166, i32 1119232)
  %168 = load %struct.gt215_ltrain*, %struct.gt215_ltrain** %4, align 8
  %169 = getelementptr inbounds %struct.gt215_ltrain, %struct.gt215_ltrain* %168, i32 0, i32 0
  store i8* %167, i8** %169, align 8
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %154, %55, %42, %35
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @nvbios_M0205Ep(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*, %struct.nvbios_M0205E*) #1

declare dso_local i32 @nvkm_ram_get(%struct.nvkm_device*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i8* @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
