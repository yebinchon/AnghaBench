; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_setPLL_double_lowregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_nv04.c_setPLL_double_lowregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_pll_vals = type { i32, i32, i32, i64, i64 }
%struct.nvbios_pll = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setPLL_double_lowregs(%struct.nvkm_devinit* %0, i32 %1, %struct.nvkm_pll_vals* %2) #0 {
  %4 = alloca %struct.nvkm_devinit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_pll_vals*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nvbios_pll, align 4
  %18 = alloca i32, align 4
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_pll_vals* %2, %struct.nvkm_pll_vals** %6, align 8
  %19 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  store %struct.nvkm_device* %22, %struct.nvkm_device** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 16416
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %32 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 16
  %35 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %36 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 -7798785, i32 -458753
  %44 = and i32 %39, %43
  %45 = or i32 %44, -1073741824
  %46 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %47 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 -49153, i32* %14, align 4
  %51 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %52 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %3
  %56 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %57 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %60 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br label %63

63:                                               ; preds = %55, %3
  %64 = phi i1 [ true, %3 ], [ %62, %55 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %16, align 4
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @nvkm_rd32(%struct.nvkm_device* %66, i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, -1073283072
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %208

77:                                               ; preds = %71, %63
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 16384
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 -820, i32* %14, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 16472
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 -201326593, i32* %14, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %122

88:                                               ; preds = %85
  %89 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %90 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @nvbios_pll_parse(i32 %91, i32 %92, %struct.nvbios_pll* %17)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %208

96:                                               ; preds = %88
  %97 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %6, align 8
  %98 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %17, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %99, %101
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %17, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %17, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %107, %96
  %111 = load i32, i32* %18, align 4
  %112 = shl i32 %111, 20
  %113 = or i32 268435456, %112
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %12, align 4
  %116 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %117 = call i32 @nvkm_rd32(%struct.nvkm_device* %116, i32 17920)
  store i32 %117, i32* %13, align 4
  %118 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %119 = load i32, i32* %13, align 4
  %120 = or i32 %119, -2147483648
  %121 = call i32 @nvkm_wr32(%struct.nvkm_device* %118, i32 17920, i32 %120)
  br label %122

122:                                              ; preds = %110, %85
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 4096, i32 256
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %125, %122
  %133 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, 268435456
  %137 = call i32 @nvkm_wr32(%struct.nvkm_device* %133, i32 %134, i32 %136)
  %138 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %12, align 4
  %141 = and i32 %140, -1073741825
  %142 = call i32 @nvkm_wr32(%struct.nvkm_device* %138, i32 %139, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %132
  %146 = load i32, i32* %12, align 4
  %147 = or i32 %146, 8388608
  store i32 %147, i32* %12, align 4
  %148 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %149 = load i32, i32* %12, align 4
  %150 = and i32 %149, 1073741823
  %151 = call i32 @nvkm_wr32(%struct.nvkm_device* %148, i32 16416, i32 %150)
  %152 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %153 = load i32, i32* %12, align 4
  %154 = and i32 %153, 1073741823
  %155 = call i32 @nvkm_wr32(%struct.nvkm_device* %152, i32 16440, i32 %154)
  br label %156

156:                                              ; preds = %145, %132
  %157 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %158 = call i32 @nvkm_rd32(%struct.nvkm_device* %157, i32 49216)
  store i32 %158, i32* %15, align 4
  %159 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %160, %161
  %163 = call i32 @nvkm_wr32(%struct.nvkm_device* %159, i32 49216, i32 %162)
  %164 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @nvkm_wr32(%struct.nvkm_device* %164, i32 %165, i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = icmp eq i32 %168, 16420
  br i1 %169, label %170, label %174

170:                                              ; preds = %156
  %171 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @nvkm_wr32(%struct.nvkm_device* %171, i32 16444, i32 %172)
  br label %174

174:                                              ; preds = %170, %156
  %175 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @nvkm_wr32(%struct.nvkm_device* %175, i32 %176, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %174
  %182 = load i32, i32* %12, align 4
  %183 = and i32 %182, -8388609
  store i32 %183, i32* %12, align 4
  %184 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @nvkm_wr32(%struct.nvkm_device* %184, i32 16416, i32 %185)
  %187 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @nvkm_wr32(%struct.nvkm_device* %187, i32 16440, i32 %188)
  %190 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @nvkm_wr32(%struct.nvkm_device* %190, i32 17920, i32 %191)
  br label %193

193:                                              ; preds = %181, %174
  %194 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @nvkm_wr32(%struct.nvkm_device* %194, i32 49216, i32 %195)
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %193
  %200 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %201 = load i32, i32* %12, align 4
  %202 = and i32 %201, -268435457
  %203 = call i32 @nvkm_wr32(%struct.nvkm_device* %200, i32 16416, i32 %202)
  %204 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %205 = load i32, i32* %12, align 4
  %206 = and i32 %205, -268435457
  %207 = call i32 @nvkm_wr32(%struct.nvkm_device* %204, i32 16440, i32 %206)
  br label %208

208:                                              ; preds = %76, %95, %199, %193
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i64 @nvbios_pll_parse(i32, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
