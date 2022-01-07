; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_volt.c_nvbios_volt_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_volt.c_nvbios_volt_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_volt = type { i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@NVBIOS_VOLT_GPIO = common dso_local global i8* null, align 8
@NVBIOS_VOLT_PWM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_volt_parse(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.nvbios_volt* %5) #0 {
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nvbios_volt*, align 8
  %13 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.nvbios_volt* %5, %struct.nvbios_volt** %12, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @nvbios_volt_table(%struct.nvkm_bios* %14, i32* %15, i32* %16, i32* %17, i32* %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %21 = call i32 @memset(%struct.nvbios_volt* %20, i32 0, i32 40)
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %26, %28
  switch i32 %29, label %209 [
    i32 18, label %30
    i32 32, label %42
    i32 48, label %54
    i32 64, label %66
    i32 80, label %137
  ]

30:                                               ; preds = %6
  %31 = load i8*, i8** @NVBIOS_VOLT_GPIO, align 8
  %32 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %33 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %35 = load i64, i64* %13, align 8
  %36 = add nsw i64 %35, 4
  %37 = call i32 @nvbios_rd08(%struct.nvkm_bios* %34, i64 %36)
  %38 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %39 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %41 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  br label %209

42:                                               ; preds = %6
  %43 = load i8*, i8** @NVBIOS_VOLT_GPIO, align 8
  %44 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %45 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %47 = load i64, i64* %13, align 8
  %48 = add nsw i64 %47, 5
  %49 = call i32 @nvbios_rd08(%struct.nvkm_bios* %46, i64 %48)
  %50 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %51 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %53 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %209

54:                                               ; preds = %6
  %55 = load i8*, i8** @NVBIOS_VOLT_GPIO, align 8
  %56 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %57 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %56, i32 0, i32 8
  store i8* %55, i8** %57, align 8
  %58 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %59 = load i64, i64* %13, align 8
  %60 = add nsw i64 %59, 4
  %61 = call i32 @nvbios_rd08(%struct.nvkm_bios* %58, i64 %60)
  %62 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %63 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %65 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  br label %209

66:                                               ; preds = %6
  %67 = load i8*, i8** @NVBIOS_VOLT_GPIO, align 8
  %68 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %69 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %71 = load i64, i64* %13, align 8
  %72 = add nsw i64 %71, 4
  %73 = call i32 @nvbios_rd32(%struct.nvkm_bios* %70, i64 %72)
  %74 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %75 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %77 = load i64, i64* %13, align 8
  %78 = add nsw i64 %77, 8
  %79 = call i8* @nvbios_rd16(%struct.nvkm_bios* %76, i64 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %82 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %84 = load i64, i64* %13, align 8
  %85 = add nsw i64 %84, 11
  %86 = call i32 @nvbios_rd08(%struct.nvkm_bios* %83, i64 %85)
  %87 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %88 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %90 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %92 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %95 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %98 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %101 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %99, %102
  %104 = add nsw i32 %96, %103
  %105 = call i32 @min(i32 %93, i32 %104)
  %106 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %107 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %109 = load i64, i64* %13, align 8
  %110 = add nsw i64 %109, 14
  %111 = call i32 @nvbios_rd32(%struct.nvkm_bios* %108, i64 %110)
  %112 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %113 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %115 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %136, label %118

118:                                              ; preds = %66
  %119 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %120 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %123 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %126 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %129 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = add nsw i32 %124, %131
  %133 = call i32 @max(i32 %121, i32 %132)
  %134 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %135 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %118, %66
  br label %209

137:                                              ; preds = %6
  %138 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %139 = load i64, i64* %13, align 8
  %140 = add nsw i64 %139, 10
  %141 = call i32 @nvbios_rd32(%struct.nvkm_bios* %138, i64 %140)
  %142 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %143 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %145 = load i64, i64* %13, align 8
  %146 = add nsw i64 %145, 14
  %147 = call i32 @nvbios_rd32(%struct.nvkm_bios* %144, i64 %146)
  %148 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %149 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %151 = load i64, i64* %13, align 8
  %152 = add nsw i64 %151, 18
  %153 = call i32 @nvbios_rd32(%struct.nvkm_bios* %150, i64 %152)
  %154 = and i32 %153, 16777215
  %155 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %156 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %158 = load i64, i64* %13, align 8
  %159 = add nsw i64 %158, 4
  %160 = call i32 @nvbios_rd32(%struct.nvkm_bios* %157, i64 %159)
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %137
  %164 = load i8*, i8** @NVBIOS_VOLT_PWM, align 8
  %165 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %166 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %165, i32 0, i32 8
  store i8* %164, i8** %166, align 8
  %167 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %168 = load i64, i64* %13, align 8
  %169 = add nsw i64 %168, 5
  %170 = call i32 @nvbios_rd32(%struct.nvkm_bios* %167, i64 %169)
  %171 = sdiv i32 %170, 1000
  %172 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %173 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 8
  %174 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %175 = load i64, i64* %13, align 8
  %176 = add nsw i64 %175, 22
  %177 = call i32 @nvbios_rd32(%struct.nvkm_bios* %174, i64 %176)
  %178 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %179 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 4
  br label %208

180:                                              ; preds = %137
  %181 = load i8*, i8** @NVBIOS_VOLT_GPIO, align 8
  %182 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %183 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %182, i32 0, i32 8
  store i8* %181, i8** %183, align 8
  %184 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %185 = load i64, i64* %13, align 8
  %186 = add nsw i64 %185, 6
  %187 = call i32 @nvbios_rd08(%struct.nvkm_bios* %184, i64 %186)
  %188 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %189 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %191 = load i64, i64* %13, align 8
  %192 = add nsw i64 %191, 22
  %193 = call i8* @nvbios_rd16(%struct.nvkm_bios* %190, i64 %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %196 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  %197 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %198 = load i64, i64* %13, align 8
  %199 = add nsw i64 %198, 4
  %200 = call i32 @nvbios_rd08(%struct.nvkm_bios* %197, i64 %199)
  %201 = and i32 %200, 2
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = load %struct.nvbios_volt*, %struct.nvbios_volt** %12, align 8
  %207 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %180, %163
  br label %209

209:                                              ; preds = %6, %208, %136, %54, %42, %30
  %210 = load i64, i64* %13, align 8
  ret i64 %210
}

declare dso_local i64 @nvbios_volt_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_volt*, i32, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i8* @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
