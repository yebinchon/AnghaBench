; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_train_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_train_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.gk104_ram_train = type { i32, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S, %struct.nvbios_M0209S }
%struct.nvbios_M0209S = type { i64* }
%struct.nvbios_M0205E = type { i32 }
%struct.nvbios_M0205S = type { i32 }
%struct.nvbios_M0209E = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ram*, i32, i32, %struct.gk104_ram_train*)* @gk104_ram_train_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_ram_train_type(%struct.nvkm_ram* %0, i32 %1, i32 %2, %struct.gk104_ram_train* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_ram*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gk104_ram_train*, align 8
  %10 = alloca %struct.nvkm_bios*, align 8
  %11 = alloca %struct.nvbios_M0205E, align 4
  %12 = alloca %struct.nvbios_M0205S, align 4
  %13 = alloca %struct.nvbios_M0209E, align 4
  %14 = alloca %struct.nvbios_M0209S*, align 8
  %15 = alloca %struct.nvbios_M0209S*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gk104_ram_train* %3, %struct.gk104_ram_train** %9, align 8
  %21 = load %struct.nvkm_ram*, %struct.nvkm_ram** %6, align 8
  %22 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %27, align 8
  store %struct.nvkm_bios* %28, %struct.nvkm_bios** %10, align 8
  %29 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %9, align 8
  %30 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %29, i32 0, i32 8
  store %struct.nvbios_M0209S* %30, %struct.nvbios_M0209S** %14, align 8
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @nvbios_M0205Ep(%struct.nvkm_bios* %31, i32 %32, i32* %16, i32* %17, i32* %18, i32* %19, %struct.nvbios_M0205E* %11)
  store i32 %33, i32* %20, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %152

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.nvbios_M0205E, %struct.nvbios_M0205E* %11, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %62 [
    i32 0, label %41
    i32 1, label %44
    i32 4, label %47
    i32 6, label %50
    i32 7, label %53
    i32 8, label %56
    i32 9, label %59
  ]

41:                                               ; preds = %38
  %42 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %9, align 8
  %43 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %42, i32 0, i32 7
  store %struct.nvbios_M0209S* %43, %struct.nvbios_M0209S** %15, align 8
  br label %63

44:                                               ; preds = %38
  %45 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %9, align 8
  %46 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %45, i32 0, i32 6
  store %struct.nvbios_M0209S* %46, %struct.nvbios_M0209S** %15, align 8
  br label %63

47:                                               ; preds = %38
  %48 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %9, align 8
  %49 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %48, i32 0, i32 5
  store %struct.nvbios_M0209S* %49, %struct.nvbios_M0209S** %15, align 8
  br label %63

50:                                               ; preds = %38
  %51 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %9, align 8
  %52 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %51, i32 0, i32 4
  store %struct.nvbios_M0209S* %52, %struct.nvbios_M0209S** %15, align 8
  br label %63

53:                                               ; preds = %38
  %54 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %9, align 8
  %55 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %54, i32 0, i32 3
  store %struct.nvbios_M0209S* %55, %struct.nvbios_M0209S** %15, align 8
  br label %63

56:                                               ; preds = %38
  %57 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %9, align 8
  %58 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %57, i32 0, i32 2
  store %struct.nvbios_M0209S* %58, %struct.nvbios_M0209S** %15, align 8
  br label %63

59:                                               ; preds = %38
  %60 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %9, align 8
  %61 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %60, i32 0, i32 1
  store %struct.nvbios_M0209S* %61, %struct.nvbios_M0209S** %15, align 8
  br label %63

62:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %152

63:                                               ; preds = %59, %56, %53, %50, %47, %44, %41
  %64 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @nvbios_M0205Sp(%struct.nvkm_bios* %64, i32 %65, i32 %66, i32* %16, i32* %17, %struct.nvbios_M0205S* %12)
  store i32 %67, i32* %20, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %152

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.nvbios_M0205S, %struct.nvbios_M0205S* %12, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %7, align 4
  %75 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @nvbios_M0209Ep(%struct.nvkm_bios* %75, i32 %76, i32* %16, i32* %17, i32* %18, i32* %19, %struct.nvbios_M0209E* %13)
  store i32 %77, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %152

82:                                               ; preds = %72
  %83 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %15, align 8
  %86 = call i32 @nvbios_M0209Sp(%struct.nvkm_bios* %83, i32 %84, i32 0, i32* %16, i32* %17, %struct.nvbios_M0209S* %85)
  store i32 %86, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %152

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %136

95:                                               ; preds = %91
  %96 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %97 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %13, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %14, align 8
  %100 = call i32 @nvbios_M0209Sp(%struct.nvkm_bios* %96, i32 %98, i32 0, i32* %16, i32* %17, %struct.nvbios_M0209S* %99)
  store i32 %100, i32* %20, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %152

105:                                              ; preds = %95
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %132, %105
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %15, align 8
  %109 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = call i32 @ARRAY_SIZE(i64* %110)
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %106
  %114 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %14, align 8
  %115 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %15, align 8
  %118 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i64, i64* %116, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.nvbios_M0209S*, %struct.nvbios_M0209S** %15, align 8
  %127 = getelementptr inbounds %struct.nvbios_M0209S, %struct.nvbios_M0209S* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64 %125, i64* %131, align 8
  br label %132

132:                                              ; preds = %113
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %106

135:                                              ; preds = %106
  br label %144

136:                                              ; preds = %91
  %137 = getelementptr inbounds %struct.nvbios_M0209E, %struct.nvbios_M0209E* %13, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %152

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %135
  %145 = getelementptr inbounds %struct.nvbios_M0205E, %struct.nvbios_M0205E* %11, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 1, %146
  %148 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %9, align 8
  %149 = getelementptr inbounds %struct.gk104_ram_train, %struct.gk104_ram_train* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %144, %140, %102, %88, %79, %69, %62, %35
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @nvbios_M0205Ep(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*, %struct.nvbios_M0205E*) #1

declare dso_local i32 @nvbios_M0205Sp(%struct.nvkm_bios*, i32, i32, i32*, i32*, %struct.nvbios_M0205S*) #1

declare dso_local i32 @nvbios_M0209Ep(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*, %struct.nvbios_M0209E*) #1

declare dso_local i32 @nvbios_M0209Sp(%struct.nvkm_bios*, i32, i32, i32*, i32*, %struct.nvbios_M0209S*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
