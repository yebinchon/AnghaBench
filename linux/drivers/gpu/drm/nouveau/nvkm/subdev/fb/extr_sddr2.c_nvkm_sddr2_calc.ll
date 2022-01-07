; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_sddr2.c_nvkm_sddr2_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_sddr2.c_nvkm_sddr2_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ramddr2_cl = common dso_local global i32 0, align 4
@ramddr2_wr = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_sddr2_calc(%struct.nvkm_ram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_ram*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %63 [
    i32 16, label %14
    i32 32, label %43
  ]

14:                                               ; preds = %1
  %15 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %28 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 3
  store i32 %42, i32* %7, align 4
  br label %66

43:                                               ; preds = %1
  %44 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %45 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 31
  store i32 %52, i32* %4, align 4
  %53 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %54 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 8323072
  %62 = ashr i32 %61, 16
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %1
  %64 = load i32, i32* @ENOSYS, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %172

66:                                               ; preds = %43, %14
  %67 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %68 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %76 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 255
  br i1 %81, label %82, label %98

82:                                               ; preds = %74, %66
  %83 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %84 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 4
  %89 = ashr i32 %88, 2
  %90 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %91 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 64
  %96 = ashr i32 %95, 5
  %97 = or i32 %89, %96
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %82, %74
  %99 = load i32, i32* @ramddr2_cl, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @ramxlat(i32 %99, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @ramddr2_wr, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @ramxlat(i32 %102, i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107, %98
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %172

113:                                              ; preds = %107
  %114 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %115 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, -3953
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, 7
  %122 = shl i32 %121, 9
  %123 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %124 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %122
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* %4, align 4
  %130 = and i32 %129, 7
  %131 = shl i32 %130, 4
  %132 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %133 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 4
  %138 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %139 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, -70
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %7, align 4
  %145 = and i32 %144, 1
  %146 = shl i32 %145, 2
  %147 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %148 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %146
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %7, align 4
  %154 = and i32 %153, 2
  %155 = shl i32 %154, 5
  %156 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %157 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %155
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %167 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %113, %110, %63
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @ramxlat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
