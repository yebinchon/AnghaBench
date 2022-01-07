; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nv50_gr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_gr_init(%struct.nvkm_gr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_gr*, align 8
  %4 = alloca %struct.nv50_gr*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %3, align 8
  %9 = load %struct.nvkm_gr*, %struct.nvkm_gr** %3, align 8
  %10 = call %struct.nv50_gr* @nv50_gr(%struct.nvkm_gr* %9)
  store %struct.nv50_gr* %10, %struct.nv50_gr** %4, align 8
  %11 = load %struct.nv50_gr*, %struct.nv50_gr** %4, align 8
  %12 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %5, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %18 = call i32 @nvkm_wr32(%struct.nvkm_device* %17, i32 4194444, i32 4)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %20 = call i32 @nvkm_wr32(%struct.nvkm_device* %19, i32 4196356, i32 -1073741824)
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = call i32 @nvkm_wr32(%struct.nvkm_device* %21, i32 4220928, i32 -1073741824)
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %24 = call i32 @nvkm_wr32(%struct.nvkm_device* %23, i32 4197380, i32 -1073741824)
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %26 = call i32 @nvkm_wr32(%struct.nvkm_device* %25, i32 4200448, i32 -1073741824)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 4214808, i32 -1073741824)
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = call i32 @nvkm_wr32(%struct.nvkm_device* %29, i32 4202496, i32 -1073741824)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = call i32 @nvkm_rd32(%struct.nvkm_device* %31, i32 5440)
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %81, %1
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %84

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %81

43:                                               ; preds = %36
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %45 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 160
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 12
  %52 = add nsw i32 4229376, %51
  %53 = call i32 @nvkm_wr32(%struct.nvkm_device* %49, i32 %52, i32 -1073741824)
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 12
  %57 = add nsw i32 4230664, %56
  %58 = call i32 @nvkm_wr32(%struct.nvkm_device* %54, i32 %57, i32 -1073741824)
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 12
  %62 = add nsw i32 4227860, %61
  %63 = call i32 @nvkm_wr32(%struct.nvkm_device* %59, i32 %62, i32 -1073741824)
  br label %80

64:                                               ; preds = %43
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 11
  %68 = add nsw i32 4228608, %67
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %65, i32 %68, i32 -1073741824)
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 11
  %73 = add nsw i32 4228872, %72
  %74 = call i32 @nvkm_wr32(%struct.nvkm_device* %70, i32 %73, i32 -1073741824)
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %76, 11
  %78 = add nsw i32 4227868, %77
  %79 = call i32 @nvkm_wr32(%struct.nvkm_device* %75, i32 %78, i32 -1073741824)
  br label %80

80:                                               ; preds = %64, %48
  br label %81

81:                                               ; preds = %80, %42
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %33

84:                                               ; preds = %33
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %86 = call i32 @nvkm_wr32(%struct.nvkm_device* %85, i32 4194568, i32 -1)
  %87 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %88 = call i32 @nvkm_wr32(%struct.nvkm_device* %87, i32 4194616, i32 -1)
  %89 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %90 = call i32 @nvkm_wr32(%struct.nvkm_device* %89, i32 4194560, i32 -1)
  %91 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %92 = call i32 @nvkm_wr32(%struct.nvkm_device* %91, i32 4194620, i32 -1)
  %93 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %94 = call i32 @nvkm_wr32(%struct.nvkm_device* %93, i32 4195584, i32 65537)
  %95 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %96 = load %struct.nv50_gr*, %struct.nv50_gr** %4, align 8
  %97 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %96, i32 0, i32 0
  %98 = call i32 @nv50_grctx_init(%struct.nvkm_device* %95, i32* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %84
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %177

103:                                              ; preds = %84
  %104 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %105 = call i32 @nvkm_wr32(%struct.nvkm_device* %104, i32 4196388, i32 0)
  %106 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %107 = call i32 @nvkm_wr32(%struct.nvkm_device* %106, i32 4196392, i32 0)
  %108 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %109 = call i32 @nvkm_wr32(%struct.nvkm_device* %108, i32 4196396, i32 0)
  %110 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %111 = call i32 @nvkm_wr32(%struct.nvkm_device* %110, i32 4196400, i32 0)
  %112 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %113 = call i32 @nvkm_wr32(%struct.nvkm_device* %112, i32 4195116, i32 0)
  %114 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %115 = call i32 @nvkm_wr32(%struct.nvkm_device* %114, i32 4195120, i32 0)
  %116 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %117 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 240
  switch i32 %119, label %124 [
    i32 80, label %120
    i32 128, label %120
    i32 144, label %120
    i32 160, label %123
  ]

120:                                              ; preds = %103, %103, %103
  %121 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %122 = call i32 @nvkm_wr32(%struct.nvkm_device* %121, i32 4205736, i32 2048)
  br label %148

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %103, %123
  %125 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %126 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 160
  br i1 %128, label %139, label %129

129:                                              ; preds = %124
  %130 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %131 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 170
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %136 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 172
  br i1 %138, label %139, label %142

139:                                              ; preds = %134, %129, %124
  %140 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %141 = call i32 @nvkm_wr32(%struct.nvkm_device* %140, i32 4205736, i32 2050)
  br label %147

142:                                              ; preds = %134
  %143 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %144 = call i32 @nvkm_wr32(%struct.nvkm_device* %143, i32 4205760, i32 0)
  %145 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %146 = call i32 @nvkm_wr32(%struct.nvkm_device* %145, i32 4205736, i32 2)
  br label %147

147:                                              ; preds = %142, %139
  br label %148

148:                                              ; preds = %147, %120
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %173, %148
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 8
  br i1 %151, label %152, label %176

152:                                              ; preds = %149
  %153 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %154 = load i32, i32* %8, align 4
  %155 = mul nsw i32 %154, 16
  %156 = add nsw i32 4205600, %155
  %157 = call i32 @nvkm_wr32(%struct.nvkm_device* %153, i32 %156, i32 0)
  %158 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %159 = load i32, i32* %8, align 4
  %160 = mul nsw i32 %159, 16
  %161 = add nsw i32 4205604, %160
  %162 = call i32 @nvkm_wr32(%struct.nvkm_device* %158, i32 %161, i32 0)
  %163 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %164 = load i32, i32* %8, align 4
  %165 = mul nsw i32 %164, 16
  %166 = add nsw i32 4205608, %165
  %167 = call i32 @nvkm_wr32(%struct.nvkm_device* %163, i32 %166, i32 0)
  %168 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %169 = load i32, i32* %8, align 4
  %170 = mul nsw i32 %169, 16
  %171 = add nsw i32 4205612, %170
  %172 = call i32 @nvkm_wr32(%struct.nvkm_device* %168, i32 %171, i32 0)
  br label %173

173:                                              ; preds = %152
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %149

176:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %101
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.nv50_gr* @nv50_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv50_grctx_init(%struct.nvkm_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
