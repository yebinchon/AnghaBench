; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dpout_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dp.c_nvbios_dpout_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_dpout = type { i32, i8**, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_dpout_parse(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.nvbios_dpout* %6) #0 {
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nvbios_dpout*, align 8
  %15 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.nvbios_dpout* %6, %struct.nvbios_dpout** %14, align 8
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @nvbios_dpout_entry(%struct.nvkm_bios* %16, i32 %17, i32* %18, i32* %19, i32* %20, i32* %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %24 = call i32 @memset(%struct.nvbios_dpout* %23, i32 0, i32 40)
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %175

27:                                               ; preds = %7
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %175

31:                                               ; preds = %27
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, 0
  %35 = call i8* @nvbios_rd16(%struct.nvkm_bios* %32, i32 %34)
  %36 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %37 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 2
  %41 = call i8* @nvbios_rd16(%struct.nvkm_bios* %38, i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %44 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %173 [
    i32 32, label %47
    i32 33, label %52
    i32 48, label %52
    i32 64, label %120
    i32 65, label %120
    i32 66, label %120
  ]

47:                                               ; preds = %31
  %48 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %49 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, 192
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %31, %31, %47
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 5
  %56 = call i8* @nvbios_rd08(%struct.nvkm_bios* %53, i32 %55)
  %57 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %58 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 6
  %62 = call i8* @nvbios_rd16(%struct.nvkm_bios* %59, i32 %61)
  %63 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %64 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8* %62, i8** %66, align 8
  %67 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 8
  %70 = call i8* @nvbios_rd16(%struct.nvkm_bios* %67, i32 %69)
  %71 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %72 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* %70, i8** %74, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 12
  br i1 %77, label %78, label %85

78:                                               ; preds = %52
  %79 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 10
  %82 = call i8* @nvbios_rd16(%struct.nvkm_bios* %79, i32 %81)
  %83 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %84 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %78, %52
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %87, 15
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 12
  %93 = call i8* @nvbios_rd16(%struct.nvkm_bios* %90, i32 %92)
  %94 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %95 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  store i8* %93, i8** %97, align 8
  %98 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 14
  %101 = call i8* @nvbios_rd16(%struct.nvkm_bios* %98, i32 %100)
  %102 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %103 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 3
  store i8* %101, i8** %105, align 8
  br label %106

106:                                              ; preds = %89, %85
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %108, 17
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 16
  %114 = call i8* @nvbios_rd16(%struct.nvkm_bios* %111, i32 %113)
  %115 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %116 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 4
  store i8* %114, i8** %118, align 8
  br label %119

119:                                              ; preds = %110, %106
  br label %174

120:                                              ; preds = %31, %31, %31
  %121 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 4
  %124 = call i8* @nvbios_rd08(%struct.nvkm_bios* %121, i32 %123)
  %125 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %126 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 5
  %130 = call i8* @nvbios_rd16(%struct.nvkm_bios* %127, i32 %129)
  %131 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %132 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %131, i32 0, i32 1
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  store i8* %130, i8** %134, align 8
  %135 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 7
  %138 = call i8* @nvbios_rd16(%struct.nvkm_bios* %135, i32 %137)
  %139 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %140 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %139, i32 0, i32 1
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  store i8* %138, i8** %142, align 8
  %143 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 9
  %146 = call i8* @nvbios_rd16(%struct.nvkm_bios* %143, i32 %145)
  %147 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %148 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 11
  %152 = call i8* @nvbios_rd16(%struct.nvkm_bios* %149, i32 %151)
  %153 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %154 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %153, i32 0, i32 1
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 2
  store i8* %152, i8** %156, align 8
  %157 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 13
  %160 = call i8* @nvbios_rd16(%struct.nvkm_bios* %157, i32 %159)
  %161 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %162 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %161, i32 0, i32 1
  %163 = load i8**, i8*** %162, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 3
  store i8* %160, i8** %164, align 8
  %165 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 15
  %168 = call i8* @nvbios_rd16(%struct.nvkm_bios* %165, i32 %167)
  %169 = load %struct.nvbios_dpout*, %struct.nvbios_dpout** %14, align 8
  %170 = getelementptr inbounds %struct.nvbios_dpout, %struct.nvbios_dpout* %169, i32 0, i32 1
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 4
  store i8* %168, i8** %172, align 8
  br label %174

173:                                              ; preds = %31
  store i32 0, i32* %15, align 4
  br label %174

174:                                              ; preds = %173, %120, %119
  br label %175

175:                                              ; preds = %174, %27, %7
  %176 = load i32, i32* %15, align 4
  ret i32 %176
}

declare dso_local i32 @nvbios_dpout_entry(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_dpout*, i32, i32) #1

declare dso_local i8* @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
