; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_vpstate.c_nvbios_vpstate_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_vpstate.c_nvbios_vpstate_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_vpstate_header = type { i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_vpstate_parse(%struct.nvkm_bios* %0, %struct.nvbios_vpstate_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca %struct.nvbios_vpstate_header*, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store %struct.nvbios_vpstate_header* %1, %struct.nvbios_vpstate_header** %5, align 8
  %6 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %7 = icmp ne %struct.nvbios_vpstate_header* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %124

11:                                               ; preds = %2
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %13 = call i64 @nvbios_vpstate_offset(%struct.nvkm_bios* %12)
  %14 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %15 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %14, i32 0, i32 4
  store i64 %13, i64* %15, align 8
  %16 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %17 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %124

23:                                               ; preds = %11
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %25 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %26 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @nvbios_rd08(%struct.nvkm_bios* %24, i64 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %31 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %33 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %121 [
    i32 16, label %35
  ]

35:                                               ; preds = %23
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %37 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %38 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i8* @nvbios_rd08(%struct.nvkm_bios* %36, i64 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %44 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %46 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %47 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 2
  %50 = call i8* @nvbios_rd08(%struct.nvkm_bios* %45, i64 %49)
  %51 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %52 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %54 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %55 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 3
  %58 = call i8* @nvbios_rd08(%struct.nvkm_bios* %53, i64 %57)
  %59 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %60 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  %61 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %62 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %63 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 4
  %66 = call i8* @nvbios_rd08(%struct.nvkm_bios* %61, i64 %65)
  %67 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %68 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %70 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %71 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 5
  %74 = call i8* @nvbios_rd08(%struct.nvkm_bios* %69, i64 %73)
  %75 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %76 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %78 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %79 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 15
  %82 = call i8* @nvbios_rd08(%struct.nvkm_bios* %77, i64 %81)
  %83 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %84 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %86 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 16
  br i1 %88, label %89, label %99

89:                                               ; preds = %35
  %90 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %91 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %92 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 16
  %95 = call i8* @nvbios_rd08(%struct.nvkm_bios* %90, i64 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %98 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %102

99:                                               ; preds = %35
  %100 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %101 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %100, i32 0, i32 2
  store i32 255, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %89
  %103 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %104 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 17
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %109 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %110 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 17
  %113 = call i8* @nvbios_rd08(%struct.nvkm_bios* %108, i64 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %116 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  br label %120

117:                                              ; preds = %102
  %118 = load %struct.nvbios_vpstate_header*, %struct.nvbios_vpstate_header** %5, align 8
  %119 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %118, i32 0, i32 3
  store i32 255, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %107
  store i32 0, i32* %3, align 4
  br label %124

121:                                              ; preds = %23
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %120, %20, %8
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @nvbios_vpstate_offset(%struct.nvkm_bios*) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
