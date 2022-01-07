; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_perf.c_nvbios_perf_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_perf.c_nvbios_perf_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i64 }
%struct.bit_entry = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_perf_table(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.bit_entry, align 8
  %17 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %19 = call i32 @bit_entry(%struct.nvkm_bios* %18, i8 signext 80, %struct.bit_entry* %16)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %107, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %23, 2
  br i1 %24, label %25, label %106

25:                                               ; preds = %21
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %27 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 0
  %30 = call i64 @nvbios_rd32(%struct.nvkm_bios* %26, i64 %29)
  store i64 %30, i64* %17, align 8
  %31 = load i64, i64* %17, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %25
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %35 = load i64, i64* %17, align 8
  %36 = add nsw i64 %35, 0
  %37 = call i32 @nvbios_rd08(%struct.nvkm_bios* %34, i64 %36)
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %40 = load i64, i64* %17, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @nvbios_rd08(%struct.nvkm_bios* %39, i64 %41)
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 64
  br i1 %46, label %47, label %73

47:                                               ; preds = %33
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 65
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %53 = load i64, i64* %17, align 8
  %54 = add nsw i64 %53, 5
  %55 = call i32 @nvbios_rd08(%struct.nvkm_bios* %52, i64 %54)
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %58 = load i64, i64* %17, align 8
  %59 = add nsw i64 %58, 2
  %60 = call i32 @nvbios_rd08(%struct.nvkm_bios* %57, i64 %59)
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %63 = load i64, i64* %17, align 8
  %64 = add nsw i64 %63, 4
  %65 = call i32 @nvbios_rd08(%struct.nvkm_bios* %62, i64 %64)
  %66 = load i32*, i32** %14, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %68 = load i64, i64* %17, align 8
  %69 = add nsw i64 %68, 3
  %70 = call i32 @nvbios_rd08(%struct.nvkm_bios* %67, i64 %69)
  %71 = load i32*, i32** %15, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i64, i64* %17, align 8
  store i64 %72, i64* %8, align 8
  br label %156

73:                                               ; preds = %47, %33
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 32
  br i1 %76, label %77, label %103

77:                                               ; preds = %73
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 64
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %83 = load i64, i64* %17, align 8
  %84 = add nsw i64 %83, 2
  %85 = call i32 @nvbios_rd08(%struct.nvkm_bios* %82, i64 %84)
  %86 = load i32*, i32** %12, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %88 = load i64, i64* %17, align 8
  %89 = add nsw i64 %88, 3
  %90 = call i32 @nvbios_rd08(%struct.nvkm_bios* %87, i64 %89)
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  %92 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %93 = load i64, i64* %17, align 8
  %94 = add nsw i64 %93, 4
  %95 = call i32 @nvbios_rd08(%struct.nvkm_bios* %92, i64 %94)
  %96 = load i32*, i32** %14, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %98 = load i64, i64* %17, align 8
  %99 = add nsw i64 %98, 5
  %100 = call i32 @nvbios_rd08(%struct.nvkm_bios* %97, i64 %99)
  %101 = load i32*, i32** %15, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i64, i64* %17, align 8
  store i64 %102, i64* %8, align 8
  br label %156

103:                                              ; preds = %77, %73
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %25
  br label %106

106:                                              ; preds = %105, %21
  br label %107

107:                                              ; preds = %106, %7
  %108 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %109 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %155

112:                                              ; preds = %107
  %113 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %114 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %115 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 6
  %118 = call i32 @nvbios_rd08(%struct.nvkm_bios* %113, i64 %117)
  %119 = icmp sge i32 %118, 37
  br i1 %119, label %120, label %154

120:                                              ; preds = %112
  %121 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %122 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %123 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 148
  %126 = call i64 @nvbios_rd16(%struct.nvkm_bios* %121, i64 %125)
  store i64 %126, i64* %17, align 8
  %127 = load i64, i64* %17, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %120
  %130 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %131 = load i64, i64* %17, align 8
  %132 = add nsw i64 %131, 0
  %133 = call i32 @nvbios_rd08(%struct.nvkm_bios* %130, i64 %132)
  %134 = load i32*, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  %135 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %136 = load i64, i64* %17, align 8
  %137 = add nsw i64 %136, 1
  %138 = call i32 @nvbios_rd08(%struct.nvkm_bios* %135, i64 %137)
  %139 = load i32*, i32** %10, align 8
  store i32 %138, i32* %139, align 4
  %140 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %141 = load i64, i64* %17, align 8
  %142 = add nsw i64 %141, 2
  %143 = call i32 @nvbios_rd08(%struct.nvkm_bios* %140, i64 %142)
  %144 = load i32*, i32** %12, align 8
  store i32 %143, i32* %144, align 4
  %145 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %146 = load i64, i64* %17, align 8
  %147 = add nsw i64 %146, 3
  %148 = call i32 @nvbios_rd08(%struct.nvkm_bios* %145, i64 %147)
  %149 = load i32*, i32** %13, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %14, align 8
  store i32 0, i32* %150, align 4
  %151 = load i32*, i32** %15, align 8
  store i32 0, i32* %151, align 4
  %152 = load i64, i64* %17, align 8
  store i64 %152, i64* %8, align 8
  br label %156

153:                                              ; preds = %120
  br label %154

154:                                              ; preds = %153, %112
  br label %155

155:                                              ; preds = %154, %107
  store i64 0, i64* %8, align 8
  br label %156

156:                                              ; preds = %155, %129, %81, %51
  %157 = load i64, i64* %8, align 8
  ret i64 %157
}

declare dso_local i32 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i64 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
