; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_sddr3.c_nvkm_sddr3_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_sddr3.c_nvkm_sddr3_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32*, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ramddr3_cwl = common dso_local global i32 0, align 4
@ramddr3_cl = common dso_local global i32 0, align 4
@ramddr3_wr = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_sddr3_calc(%struct.nvkm_ram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_ram*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %114 [
    i32 16, label %24
    i32 32, label %60
  ]

24:                                               ; preds = %1
  %25 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %26 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 23
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOSYS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %230

35:                                               ; preds = %24
  %36 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  %42 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %43 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %49 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %6, align 4
  %54 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %55 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  br label %117

60:                                               ; preds = %1
  %61 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %62 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 3968
  %70 = ashr i32 %69, 7
  store i32 %70, i32* %4, align 4
  %71 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %72 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 31
  %80 = ashr i32 %79, 0
  store i32 %80, i32* %5, align 4
  %81 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %82 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 8323072
  %90 = ashr i32 %89, 16
  store i32 %90, i32* %6, align 4
  %91 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %92 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 4
  %97 = ashr i32 %96, 2
  %98 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %99 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 64
  %104 = ashr i32 %103, 5
  %105 = or i32 %97, %104
  %106 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %107 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 512
  %112 = ashr i32 %111, 7
  %113 = or i32 %105, %112
  store i32 %113, i32* %8, align 4
  br label %117

114:                                              ; preds = %1
  %115 = load i32, i32* @ENOSYS, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %230

117:                                              ; preds = %60, %35
  %118 = load i32, i32* @ramddr3_cwl, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @ramxlat(i32 %118, i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* @ramddr3_cl, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @ramxlat(i32 %121, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* @ramddr3_wr, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @ramxlat(i32 %124, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %117
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132, %129, %117
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %230

138:                                              ; preds = %132
  %139 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %140 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, -3957
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* %6, align 4
  %146 = and i32 %145, 7
  %147 = shl i32 %146, 9
  %148 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %149 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %147
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, 14
  %156 = shl i32 %155, 3
  %157 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %158 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %156
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %5, align 4
  %164 = and i32 %163, 1
  %165 = shl i32 %164, 2
  %166 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %167 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  %172 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %173 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, -582
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %178, 1
  %180 = shl i32 %179, 2
  %181 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %182 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %180
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %8, align 4
  %188 = and i32 %187, 2
  %189 = shl i32 %188, 5
  %190 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %191 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %189
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* %8, align 4
  %197 = and i32 %196, 4
  %198 = shl i32 %197, 7
  %199 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %200 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %198
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %210 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %208
  store i32 %214, i32* %212, align 4
  %215 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %216 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, -57
  store i32 %220, i32* %218, align 4
  %221 = load i32, i32* %4, align 4
  %222 = and i32 %221, 7
  %223 = shl i32 %222, 3
  %224 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %225 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %223
  store i32 %229, i32* %227, align 4
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %138, %135, %114, %32
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @ramxlat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
