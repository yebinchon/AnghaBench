; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_prop_trap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_prop_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"TRAP_PROP - TP %d - CUDA_FAULT - Global read fault at address %02x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"TRAP_PROP - TP %d - CUDA_FAULT - Global write fault at address %02x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"TRAP_PROP - TP %d - Unknown CUDA fault at address %02x%08x\0A\00", align 1
@nv50_gr_trap_prop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"TRAP_PROP - TP %d - %08x [%s] - Address %02x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"TRAP_PROP - TP %d - e0c: %08x, e18: %08x, e1c: %08x, e20: %08x, e24: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_gr*, i32, i32, i32)* @nv50_gr_prop_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_prop_trap(%struct.nv50_gr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nv50_gr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_subdev*, align 8
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [128 x i8], align 16
  store %struct.nv50_gr* %0, %struct.nv50_gr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.nv50_gr*, %struct.nv50_gr** %5, align 8
  %20 = getelementptr inbounds %struct.nv50_gr, %struct.nv50_gr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %9, align 8
  %23 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %24 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %23, i32 0, i32 0
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %24, align 8
  store %struct.nvkm_device* %25, %struct.nvkm_device** %10, align 8
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 4
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 8
  %33 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 12
  %37 = call i32 @nvkm_rd32(%struct.nvkm_device* %34, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 16
  %41 = call i32 @nvkm_rd32(%struct.nvkm_device* %38, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 20
  %45 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 24
  %49 = call i32 @nvkm_rd32(%struct.nvkm_device* %46, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 28
  %53 = call i32 @nvkm_rd32(%struct.nvkm_device* %50, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %4
  %58 = load i32, i32* %14, align 4
  %59 = and i32 %58, -2147483648
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = ashr i32 %66, 24
  %68 = and i32 %67, 31
  %69 = or i32 %65, %68
  %70 = call i32 (%struct.nvkm_subdev*, i8*, i32, i32, ...) @nvkm_error(%struct.nvkm_subdev* %62, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, -520093697
  store i32 %72, i32* %14, align 4
  br label %96

73:                                               ; preds = %57
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %74, 12
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %14, align 4
  %83 = ashr i32 %82, 7
  %84 = and i32 %83, 31
  %85 = or i32 %81, %84
  %86 = call i32 (%struct.nvkm_subdev*, i8*, i32, i32, ...) @nvkm_error(%struct.nvkm_subdev* %78, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = and i32 %87, -3969
  store i32 %88, i32* %14, align 4
  br label %95

89:                                               ; preds = %73
  %90 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 (%struct.nvkm_subdev*, i8*, i32, i32, ...) @nvkm_error(%struct.nvkm_subdev* %90, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %77
  br label %96

96:                                               ; preds = %95, %61
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, -129
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %104 = load i32, i32* @nv50_gr_trap_prop, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @nvkm_snprintbf(i8* %103, i32 128, i32 %104, i32 %105)
  %107 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 (%struct.nvkm_subdev*, i8*, i32, i32, ...) @nvkm_error(%struct.nvkm_subdev* %107, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %109, i8* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %102, %99
  %115 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %9, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i32 (%struct.nvkm_subdev*, i8*, i32, i32, ...) @nvkm_error(%struct.nvkm_subdev* %115, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, ...) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
