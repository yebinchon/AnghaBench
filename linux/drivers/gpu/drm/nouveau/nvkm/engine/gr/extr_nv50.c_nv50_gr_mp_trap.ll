; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_mp_trap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_mp_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@nv50_mp_exec_errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"TRAP_MP_EXEC - TP %d MP %d: %08x [%s] at %06x warp %d, opcode %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"TRAP_MP_EXEC - TP %d: No MPs claiming errors?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_gr*, i32, i32)* @nv50_gr_mp_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_mp_trap(%struct.nv50_gr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nv50_gr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [128 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nv50_gr* %0, %struct.nv50_gr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load %struct.nv50_gr*, %struct.nv50_gr** %4, align 8
  %20 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %7, align 8
  %23 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %24 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %23, i32 0, i32 0
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %24, align 8
  store %struct.nvkm_device* %25, %struct.nvkm_device** %8, align 8
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 5440)
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %118, %3
  %29 = load i32, i32* %17, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %121

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %17, align 4
  %34 = add nsw i32 %33, 24
  %35 = shl i32 1, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %118

39:                                               ; preds = %31
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %41 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 160
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 12
  %47 = add nsw i32 4227584, %46
  %48 = load i32, i32* %17, align 4
  %49 = shl i32 %48, 7
  %50 = add nsw i32 %47, %49
  store i32 %50, i32* %10, align 4
  br label %58

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 %52, 11
  %54 = add nsw i32 4227328, %53
  %55 = load i32, i32* %17, align 4
  %56 = shl i32 %55, 7
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %51, %44
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 16
  %62 = call i32 @nvkm_rd32(%struct.nvkm_device* %59, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 20
  %66 = call i32 @nvkm_rd32(%struct.nvkm_device* %63, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %118

70:                                               ; preds = %58
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %106

73:                                               ; preds = %70
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 32
  %77 = call i32 @nvkm_rd32(%struct.nvkm_device* %74, i32 %76)
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 36
  %81 = call i32 @nvkm_rd32(%struct.nvkm_device* %78, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 112
  %85 = call i32 @nvkm_rd32(%struct.nvkm_device* %82, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 116
  %89 = call i32 @nvkm_rd32(%struct.nvkm_device* %86, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %91 = load i32, i32* @nv50_mp_exec_errors, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @nvkm_snprintbf(i8* %90, i32 128, i32 %91, i32 %92)
  %94 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %12, align 4
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, 16777215
  %101 = load i32, i32* %13, align 4
  %102 = ashr i32 %101, 24
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %94, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %97, i8* %98, i32 %100, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %73, %70
  %107 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 16
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @nvkm_wr32(%struct.nvkm_device* %107, i32 %109, i32 %110)
  %112 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 20
  %115 = call i32 @nvkm_wr32(%struct.nvkm_device* %112, i32 %114, i32 0)
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %18, align 4
  br label %118

118:                                              ; preds = %106, %69, %38
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %28

121:                                              ; preds = %28
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_error(%struct.nvkm_subdev* %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %127, %124, %121
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, ...) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
