; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_mxm.c_mxm_sor_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_mxm.c_mxm_sor_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.TYPE_2__, %struct.nvkm_subdev }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unknown sor map v%02x\0A\00", align 1
@g84_sor_map = common dso_local global i32* null, align 8
@g92_sor_map = common dso_local global i32* null, align 8
@g94_sor_map = common dso_local global i32* null, align 8
@g98_sor_map = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"missing sor map\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxm_sor_map(%struct.nvkm_bios* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %11, i32 0, i32 1
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %6, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %14 = call i32 @mxm_table(%struct.nvkm_bios* %13, i32* %7, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 6
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 4
  %24 = call i32 @nvbios_rd16(%struct.nvkm_bios* %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %20
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @nvbios_rd08(%struct.nvkm_bios* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 17
  br i1 %35, label %36, label %57

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 3
  %41 = call i32 @nvbios_rd08(%struct.nvkm_bios* %38, i32 %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @nvbios_rd08(%struct.nvkm_bios* %44, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @nvbios_rd08(%struct.nvkm_bios* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %125

56:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %125

57:                                               ; preds = %33
  %58 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %20
  br label %62

62:                                               ; preds = %61, %17, %2
  %63 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %64 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 132
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %70 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 134
  br i1 %73, label %74, label %80

74:                                               ; preds = %68, %62
  %75 = load i32*, i32** @g84_sor_map, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %3, align 4
  br label %125

80:                                               ; preds = %68
  %81 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %82 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 146
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32*, i32** @g92_sor_map, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %3, align 4
  br label %125

92:                                               ; preds = %80
  %93 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %94 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 148
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %100 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 150
  br i1 %103, label %104, label %110

104:                                              ; preds = %98, %92
  %105 = load i32*, i32** @g94_sor_map, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %3, align 4
  br label %125

110:                                              ; preds = %98
  %111 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %112 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 152
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i32*, i32** @g98_sor_map, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %3, align 4
  br label %125

122:                                              ; preds = %110
  %123 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %124 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %122, %116, %104, %86, %74, %56, %43
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @mxm_table(%struct.nvkm_bios*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
