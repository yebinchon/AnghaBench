; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_pllgt215.c_gt215_pll_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_pllgt215.c_gt215_pll_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvbios_pll = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"unable to find matching pll values\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gt215_pll_calc(%struct.nvkm_subdev* %0, %struct.nvbios_pll* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_subdev*, align 8
  %10 = alloca %struct.nvbios_pll*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %9, align 8
  store %struct.nvbios_pll* %1, %struct.nvbios_pll** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 -1, i32* %16, align 4
  %24 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %25 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sdiv i32 %27, %28
  %30 = load i32*, i32** %15, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %15, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %34 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %7
  %38 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %39 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %15, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %7
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %46 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %51 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %15, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %56 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %59 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %57, %61
  %63 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %64 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %62, %66
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %70 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @max(i32 %68, i32 %73)
  store i32 %74, i32* %19, align 4
  %75 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %76 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %79 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %77, %81
  %83 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %84 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sdiv i32 %82, %86
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %90 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @min(i32 %88, i32 %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @min(i32 %95, i32 %96)
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %19, align 4
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %213, %54
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %216

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %104, %106
  %108 = load i32, i32* %18, align 4
  %109 = mul nsw i32 %107, %108
  store i32 %109, i32* %23, align 4
  %110 = load i32, i32* %23, align 4
  %111 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %112 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sdiv i32 %110, %113
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %23, align 4
  %116 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %117 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = srem i32 %115, %118
  store i32 %119, i32* %22, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %133, label %122

122:                                              ; preds = %103
  %123 = load i32, i32* %22, align 4
  %124 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %125 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %126, 2
  %128 = icmp sge i32 %123, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %21, align 4
  br label %132

132:                                              ; preds = %129, %122
  br label %151

133:                                              ; preds = %103
  %134 = load i32, i32* %22, align 4
  %135 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %136 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sdiv i32 %137, 2
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %21, align 4
  br label %143

143:                                              ; preds = %140, %133
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %21, align 4
  %146 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %147 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = sub nsw i32 %144, %149
  store i32 %150, i32* %22, align 4
  br label %151

151:                                              ; preds = %143, %132
  %152 = load i32, i32* %21, align 4
  %153 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %154 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %213

159:                                              ; preds = %151
  %160 = load i32, i32* %21, align 4
  %161 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %162 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = icmp sgt i32 %160, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %216

167:                                              ; preds = %159
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %170 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %21, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load i32, i32* %18, align 4
  %175 = sdiv i32 %173, %174
  %176 = load i32*, i32** %15, align 8
  %177 = load i32, i32* %176, align 4
  %178 = sdiv i32 %175, %177
  %179 = sub nsw i32 %168, %178
  %180 = call i32 @abs(i32 %179) #3
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %16, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %167
  %185 = load i32, i32* %17, align 4
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %21, align 4
  %187 = load i32*, i32** %12, align 8
  store i32 %186, i32* %187, align 4
  %188 = load i32, i32* %18, align 4
  %189 = load i32*, i32** %14, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %184, %167
  %191 = load i32*, i32** %13, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %212

193:                                              ; preds = %190
  %194 = load i32, i32* %22, align 4
  %195 = shl i32 %194, 13
  %196 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %197 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sdiv i32 %198, 2
  %200 = add nsw i32 %195, %199
  %201 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %202 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = sdiv i32 %200, %203
  %205 = load i32*, i32** %13, align 8
  store i32 %204, i32* %205, align 4
  %206 = load i32*, i32** %13, align 8
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %207, 4096
  %209 = and i32 %208, 65535
  %210 = load i32*, i32** %13, align 8
  store i32 %209, i32* %210, align 4
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %8, align 4
  br label %240

212:                                              ; preds = %190
  br label %213

213:                                              ; preds = %212, %158
  %214 = load i32, i32* %18, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %18, align 4
  br label %99

216:                                              ; preds = %166, %99
  %217 = load i32, i32* %16, align 4
  %218 = icmp eq i32 %217, -1
  %219 = zext i1 %218 to i32
  %220 = call i64 @unlikely(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %224 = call i32 @nvkm_error(%struct.nvkm_subdev* %223, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %8, align 4
  br label %240

227:                                              ; preds = %216
  %228 = load %struct.nvbios_pll*, %struct.nvbios_pll** %10, align 8
  %229 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32*, i32** %12, align 8
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %230, %232
  %234 = load i32*, i32** %14, align 8
  %235 = load i32, i32* %234, align 4
  %236 = sdiv i32 %233, %235
  %237 = load i32*, i32** %15, align 8
  %238 = load i32, i32* %237, align 4
  %239 = sdiv i32 %236, %238
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %227, %222, %193
  %241 = load i32, i32* %8, align 4
  ret i32 %241
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
