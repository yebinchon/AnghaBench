; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgv100.c_gv100_grctx_generate_rop_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxgv100.c_gv100_grctx_generate_rop_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*)* @gv100_grctx_generate_rop_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_grctx_generate_rop_mapping(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %11 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %12 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %3, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %18 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %19 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 8
  %22 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %23 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = call i32 @nvkm_wr32(%struct.nvkm_device* %17, i32 4295608, i32 %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %73, %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 11
  br i1 %29, label %30, label %76

30:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 6
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %36 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 6
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 31
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 5
  %48 = shl i32 %45, %47
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %56, 4
  %58 = add nsw i32 4295432, %57
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @nvkm_wr32(%struct.nvkm_device* %55, i32 %58, i32 %59)
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 4
  %64 = add nsw i32 4308736, %63
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %61, i32 %64, i32 %65)
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %68, 4
  %70 = add nsw i32 4225036, %69
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @nvkm_wr32(%struct.nvkm_device* %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %54
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %27

76:                                               ; preds = %27
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %78 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %79 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 8
  %82 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %83 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %81, %84
  %86 = call i32 @nvkm_wr32(%struct.nvkm_device* %77, i32 4308944, i32 %85)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %87

87:                                               ; preds = %134, %76
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 5
  br i1 %89, label %90, label %139

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 0
  %93 = shl i32 1, %92
  %94 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %95 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = srem i32 %93, %96
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  %100 = shl i32 1, %99
  %101 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %102 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = srem i32 %100, %103
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 2
  %107 = shl i32 1, %106
  %108 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %109 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = srem i32 %107, %110
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 3
  %114 = shl i32 1, %113
  %115 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %116 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = srem i32 %114, %117
  store i32 %118, i32* %10, align 4
  %119 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = mul nsw i32 %120, 4
  %122 = add nsw i32 4308912, %121
  %123 = load i32, i32* %10, align 4
  %124 = shl i32 %123, 24
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 %125, 16
  %127 = or i32 %124, %126
  %128 = load i32, i32* %8, align 4
  %129 = shl i32 %128, 8
  %130 = or i32 %127, %129
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @nvkm_wr32(%struct.nvkm_device* %119, i32 %122, i32 %132)
  br label %134

134:                                              ; preds = %90
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 4
  store i32 %138, i32* %6, align 4
  br label %87

139:                                              ; preds = %87
  %140 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %141 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %142 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = shl i32 %143, 8
  %145 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %146 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %144, %147
  %149 = call i32 @nvkm_wr32(%struct.nvkm_device* %140, i32 4225212, i32 %148)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
