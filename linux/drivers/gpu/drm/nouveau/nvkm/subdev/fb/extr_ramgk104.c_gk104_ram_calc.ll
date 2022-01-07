; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32 }
%struct.gk104_ram = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.nvkm_ram_data*, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.TYPE_8__* }
%struct.nvkm_ram_data = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nvkm_clk* }
%struct.nvkm_clk = type { i32 }

@nv_clk_src_mem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk104_ram_calc(%struct.nvkm_ram* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_ram*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gk104_ram*, align 8
  %7 = alloca %struct.nvkm_clk*, align 8
  %8 = alloca %struct.nvkm_ram_data*, align 8
  %9 = alloca %struct.nvkm_ram_data*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %12 = call %struct.gk104_ram* @gk104_ram(%struct.nvkm_ram* %11)
  store %struct.gk104_ram* %12, %struct.gk104_ram** %6, align 8
  %13 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %14 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_clk*, %struct.nvkm_clk** %20, align 8
  store %struct.nvkm_clk* %21, %struct.nvkm_clk** %7, align 8
  %22 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %23 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store %struct.nvkm_ram_data* %24, %struct.nvkm_ram_data** %8, align 8
  %25 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %26 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %27, align 8
  %29 = icmp eq %struct.nvkm_ram_data* %28, null
  br i1 %29, label %30, label %128

30:                                               ; preds = %2
  %31 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %32 = load %struct.nvkm_clk*, %struct.nvkm_clk** %7, align 8
  %33 = load i32, i32* @nv_clk_src_mem, align 4
  %34 = call i32 @nvkm_clk_read(%struct.nvkm_clk* %32, i32 %33)
  %35 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %36 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = call i32 @gk104_ram_calc_data(%struct.gk104_ram* %31, i32 %34, %struct.nvkm_ram_data* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %152

43:                                               ; preds = %30
  %44 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %47 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = call i32 @gk104_ram_calc_data(%struct.gk104_ram* %44, i32 %45, %struct.nvkm_ram_data* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %152

54:                                               ; preds = %43
  %55 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %56 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %61 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %59, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %54
  %67 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %8, align 8
  %68 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %69 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = bitcast %struct.nvkm_ram_data* %67 to i8*
  %72 = bitcast %struct.nvkm_ram_data* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false)
  %73 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %74 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  store %struct.nvkm_ram_data* %75, %struct.nvkm_ram_data** %9, align 8
  br label %86

76:                                               ; preds = %54
  %77 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %8, align 8
  %78 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %79 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = bitcast %struct.nvkm_ram_data* %77 to i8*
  %82 = bitcast %struct.nvkm_ram_data* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 24, i1 false)
  %83 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %84 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store %struct.nvkm_ram_data* %85, %struct.nvkm_ram_data** %9, align 8
  br label %86

86:                                               ; preds = %76, %66
  %87 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %88 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %8, align 8
  %92 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %95 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %8, align 8
  %99 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %102 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %8, align 8
  %106 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %109 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %112 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store %struct.nvkm_ram_data* %110, %struct.nvkm_ram_data** %113, align 8
  %114 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %8, align 8
  %115 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %116 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = call i64 @memcmp(%struct.nvkm_ram_data* %114, %struct.nvkm_ram_data* %117, i32 12)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %86
  %121 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %122 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %125 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store %struct.nvkm_ram_data* %123, %struct.nvkm_ram_data** %126, align 8
  br label %127

127:                                              ; preds = %120, %86
  br label %145

128:                                              ; preds = %2
  %129 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %130 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %131, align 8
  %133 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %134 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = icmp ne %struct.nvkm_ram_data* %132, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @BUG_ON(i32 %137)
  %139 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %140 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %143 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store %struct.nvkm_ram_data* %141, %struct.nvkm_ram_data** %144, align 8
  br label %145

145:                                              ; preds = %128, %127
  %146 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %147 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %148 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %149, align 8
  %151 = call i32 @gk104_ram_calc_xits(%struct.gk104_ram* %146, %struct.nvkm_ram_data* %150)
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %145, %52, %41
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.gk104_ram* @gk104_ram(%struct.nvkm_ram*) #1

declare dso_local i32 @gk104_ram_calc_data(%struct.gk104_ram*, i32, %struct.nvkm_ram_data*) #1

declare dso_local i32 @nvkm_clk_read(%struct.nvkm_clk*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @memcmp(%struct.nvkm_ram_data*, %struct.nvkm_ram_data*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gk104_ram_calc_xits(%struct.gk104_ram*, %struct.nvkm_ram_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
