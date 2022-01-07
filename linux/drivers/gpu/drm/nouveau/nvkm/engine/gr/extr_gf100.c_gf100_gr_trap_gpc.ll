; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_gpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_trap_gpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"GPC%d/ZCULL: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GPC%d/CCACHE: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GPC%d/ESETUP: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"GPC%d/%08x: unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*, i32)* @gf100_gr_trap_gpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_gr_trap_gpc(%struct.gf100_gr* %0, i32 %1) #0 {
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %14 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %5, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %6, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @GPC_UNIT(i32 %21, i32 11408)
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @gf100_gr_trap_gpc_rop(%struct.gf100_gr* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, -2
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %27, %2
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @GPC_UNIT(i32 %39, i32 2304)
  %41 = call i32 @nvkm_rd32(%struct.nvkm_device* %38, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @nvkm_error(%struct.nvkm_subdev* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @GPC_UNIT(i32 %47, i32 2304)
  %49 = call i32 @nvkm_wr32(%struct.nvkm_device* %46, i32 %48, i32 -1073741824)
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, -3
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %37, %33
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @GPC_UNIT(i32 %58, i32 4136)
  %60 = call i32 @nvkm_rd32(%struct.nvkm_device* %57, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @nvkm_error(%struct.nvkm_subdev* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @GPC_UNIT(i32 %66, i32 4136)
  %68 = call i32 @nvkm_wr32(%struct.nvkm_device* %65, i32 %67, i32 -1073741824)
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, -5
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %56, %52
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @GPC_UNIT(i32 %77, i32 2084)
  %79 = call i32 @nvkm_rd32(%struct.nvkm_device* %76, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @nvkm_error(%struct.nvkm_subdev* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @GPC_UNIT(i32 %85, i32 2084)
  %87 = call i32 @nvkm_wr32(%struct.nvkm_device* %84, i32 %86, i32 -1073741824)
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, -10
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %75, %71
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %123, %90
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %94 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %92, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %91
  %102 = load i32, i32* %8, align 4
  %103 = shl i32 65536, %102
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @gf100_gr_trap_tpc(%struct.gf100_gr* %109, i32 %110, i32 %111)
  %113 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @GPC_UNIT(i32 %114, i32 11408)
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @nvkm_wr32(%struct.nvkm_device* %113, i32 %115, i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %108, %101
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %91

126:                                              ; preds = %91
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @nvkm_error(%struct.nvkm_subdev* %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %126
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

declare dso_local i32 @gf100_gr_trap_gpc_rop(%struct.gf100_gr*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @gf100_gr_trap_tpc(%struct.gf100_gr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
