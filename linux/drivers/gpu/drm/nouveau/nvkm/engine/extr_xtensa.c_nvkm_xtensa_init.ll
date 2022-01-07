; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_xtensa.c_nvkm_xtensa_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_xtensa.c_nvkm_xtensa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_xtensa = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"nouveau/nv84_xuc%03x\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to load firmware %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"firmware %s too large\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_engine*)* @nvkm_xtensa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_xtensa_init(%struct.nvkm_engine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_engine*, align 8
  %4 = alloca %struct.nvkm_xtensa*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %3, align 8
  %15 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %16 = call %struct.nvkm_xtensa* @nvkm_xtensa(%struct.nvkm_engine* %15)
  store %struct.nvkm_xtensa* %16, %struct.nvkm_xtensa** %4, align 8
  %17 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.nvkm_subdev* %19, %struct.nvkm_subdev** %5, align 8
  %20 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %20, i32 0, i32 0
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  store %struct.nvkm_device* %22, %struct.nvkm_device** %6, align 8
  %23 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %111, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %32 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 12
  %36 = call i32 @snprintf(i8* %31, i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %39 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @request_firmware(%struct.firmware** %8, i8* %37, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %47 = call i32 @nvkm_warn(%struct.nvkm_subdev* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %2, align 4
  br label %180

49:                                               ; preds = %30
  %50 = load %struct.firmware*, %struct.firmware** %8, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 262144
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %57 = call i32 @nvkm_warn(%struct.nvkm_subdev* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load %struct.firmware*, %struct.firmware** %8, align 8
  %59 = call i32 @release_firmware(%struct.firmware* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %180

62:                                               ; preds = %49
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %64 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %65 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %66 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %65, i32 0, i32 2
  %67 = call i32 @nvkm_memory_new(%struct.nvkm_device* %63, i32 %64, i32 262144, i32 4096, i32 0, i32* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.firmware*, %struct.firmware** %8, align 8
  %72 = call i32 @release_firmware(%struct.firmware* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %2, align 4
  br label %180

74:                                               ; preds = %62
  %75 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %76 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @nvkm_kmap(i32 %77)
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %101, %74
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.firmware*, %struct.firmware** %8, align 8
  %82 = getelementptr inbounds %struct.firmware, %struct.firmware* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 4
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %79
  %87 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %88 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 %90, 4
  %92 = load %struct.firmware*, %struct.firmware** %8, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @nvkm_wo32(i32 %89, i32 %91, i32 %99)
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %79

104:                                              ; preds = %79
  %105 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %106 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @nvkm_done(i32 %107)
  %109 = load %struct.firmware*, %struct.firmware** %8, align 8
  %110 = call i32 @release_firmware(%struct.firmware* %109)
  br label %111

111:                                              ; preds = %104, %1
  %112 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %113 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @nvkm_memory_addr(i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %117 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @nvkm_memory_size(i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 3344
  %123 = call i32 @nvkm_wr32(%struct.nvkm_device* %120, i32 %122, i32 536870911)
  %124 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 3336
  %127 = call i32 @nvkm_wr32(%struct.nvkm_device* %124, i32 %126, i32 268435455)
  %128 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 3368
  %131 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %4, align 8
  %132 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @nvkm_wr32(%struct.nvkm_device* %128, i32 %130, i32 %135)
  %137 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 3104
  %140 = call i32 @nvkm_wr32(%struct.nvkm_device* %137, i32 %139, i32 63)
  %141 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 3460
  %144 = call i32 @nvkm_wr32(%struct.nvkm_device* %141, i32 %143, i32 63)
  %145 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 3264
  %148 = load i32, i32* %12, align 4
  %149 = ashr i32 %148, 8
  %150 = call i32 @nvkm_wr32(%struct.nvkm_device* %145, i32 %147, i32 %149)
  %151 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 3268
  %154 = call i32 @nvkm_wr32(%struct.nvkm_device* %151, i32 %153, i32 28)
  %155 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 3272
  %158 = load i32, i32* %13, align 4
  %159 = ashr i32 %158, 8
  %160 = call i32 @nvkm_wr32(%struct.nvkm_device* %155, i32 %157, i32 %159)
  %161 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %162 = call i32 @nvkm_rd32(%struct.nvkm_device* %161, i32 0)
  store i32 %162, i32* %14, align 4
  %163 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 3552
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @nvkm_wr32(%struct.nvkm_device* %163, i32 %165, i32 %166)
  %168 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 3304
  %171 = call i32 @nvkm_wr32(%struct.nvkm_device* %168, i32 %170, i32 15)
  %172 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 3104
  %175 = call i32 @nvkm_wr32(%struct.nvkm_device* %172, i32 %174, i32 63)
  %176 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 3460
  %179 = call i32 @nvkm_wr32(%struct.nvkm_device* %176, i32 %178, i32 63)
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %111, %70, %54, %44
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.nvkm_xtensa* @nvkm_xtensa(%struct.nvkm_engine*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_wo32(i32, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

declare dso_local i32 @nvkm_memory_size(i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
