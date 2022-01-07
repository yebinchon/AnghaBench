; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_vmap_entry = type { i32, i32, i32, i32, i64* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_volt_map(%struct.nvkm_volt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_volt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.nvbios_vmap_entry, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %19, align 8
  store %struct.nvkm_bios* %20, %struct.nvkm_bios** %8, align 8
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @nvbios_vmap_entry_parse(%struct.nvkm_bios* %21, i32 %22, i32* %10, i32* %11, %struct.nvbios_vmap_entry* %9)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %206

26:                                               ; preds = %3
  %27 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %28 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  br label %217

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %80

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %41, %35
  %46 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @div64_s64(i32 %50, i32 10)
  store i32 %51, i32* %13, align 4
  %52 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 4
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %58 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %56, %59
  %61 = call i32 @div64_s64(i32 %60, i32 10)
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %13, align 4
  %64 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 4
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %70 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %68, %71
  %73 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %74 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = call i32 @div64_s64(i32 %76, i32 100000)
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %179

80:                                               ; preds = %41, %38
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %83, label %175

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  switch i32 %85, label %171 [
    i32 1, label %86
    i32 3, label %163
    i32 2, label %170
  ]

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 4
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = mul nsw i32 %91, 15625
  %93 = ashr i32 %92, 18
  store i32 %93, i32* %13, align 4
  %94 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %100 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %98, %101
  %103 = mul nsw i32 %102, 15625
  %104 = ashr i32 %103, 18
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 4
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 2
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* %7, align 4
  %113 = mul nsw i32 %111, %112
  %114 = mul nsw i32 %113, 15625
  %115 = ashr i32 %114, 10
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %13, align 4
  %118 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 4
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 3
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %124 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %122, %125
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 %126, %127
  %129 = mul nsw i32 %128, 15625
  %130 = ashr i32 %129, 18
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 4
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 4
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %139 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %143 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %141, %144
  %146 = mul nsw i32 %145, 15625
  %147 = ashr i32 %146, 30
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %13, align 4
  %150 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 4
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 5
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* %7, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %7, align 4
  %158 = mul nsw i32 %156, %157
  %159 = mul nsw i32 %158, 15625
  %160 = ashr i32 %159, 18
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %13, align 4
  br label %174

163:                                              ; preds = %83
  %164 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %165, %167
  %169 = sdiv i32 %168, 2
  store i32 %169, i32* %13, align 4
  br label %174

170:                                              ; preds = %83
  br label %171

171:                                              ; preds = %83, %170
  %172 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %171, %163, %86
  br label %178

175:                                              ; preds = %80
  %176 = load i32, i32* @ENODEV, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %217

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178, %45
  %180 = load i32, i32* %13, align 4
  %181 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @max(i32 %180, i32 %182)
  %184 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @min(i32 %183, i32 %185)
  store i32 %186, i32* %13, align 4
  %187 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 255
  br i1 %189, label %190, label %204

190:                                              ; preds = %179
  %191 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %192 = getelementptr inbounds %struct.nvbios_vmap_entry, %struct.nvbios_vmap_entry* %9, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @nvkm_volt_map(%struct.nvkm_volt* %191, i32 %193, i32 %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = load i32, i32* %14, align 4
  store i32 %199, i32* %4, align 4
  br label %217

200:                                              ; preds = %190
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %200, %179
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %4, align 4
  br label %217

206:                                              ; preds = %3
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* %6, align 4
  %211 = mul nsw i32 %210, 10000
  br label %215

212:                                              ; preds = %206
  %213 = load i32, i32* @ENODEV, align 4
  %214 = sub nsw i32 0, %213
  br label %215

215:                                              ; preds = %212, %209
  %216 = phi i32 [ %211, %209 ], [ %214, %212 ]
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %215, %204, %198, %175, %31
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i64 @nvbios_vmap_entry_parse(%struct.nvkm_bios*, i32, i32*, i32*, %struct.nvbios_vmap_entry*) #1

declare dso_local i32 @div64_s64(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
