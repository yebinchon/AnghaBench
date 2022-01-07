; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_ctxctl_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_ctxctl_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@E_BAD_FWMTHD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"FECS MTHD subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"FECS ucode error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"FECS watchdog timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"FECS %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*)* @gf100_gr_ctxctl_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_gr_ctxctl_isr(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %12 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %13 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %3, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %4, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 4234264)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %22 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %31 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 4233236)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @E_BAD_FWMTHD, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %37 = call i32 @nvkm_rd32(%struct.nvkm_device* %36, i32 4233224)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %39 = call i32 @nvkm_rd32(%struct.nvkm_device* %38, i32 4233228)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 458752
  %42 = ashr i32 %41, 16
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 16380
  store i32 %44, i32* %10, align 4
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %46 = call i32 @nvkm_rd32(%struct.nvkm_device* %45, i32 4233232)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50, i32 %51)
  br label %57

53:                                               ; preds = %29
  %54 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %35
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %59 = call i32 @nvkm_wr32(%struct.nvkm_device* %58, i32 4234272, i32 1)
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, -2
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %57, %25, %1
  %63 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %64 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 524288
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %73 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %75 = call i32 @gf100_gr_ctxctl_debug(%struct.gf100_gr* %74)
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %77 = call i32 @nvkm_wr32(%struct.nvkm_device* %76, i32 4234272, i32 524288)
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, -524289
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %71, %67, %62
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %88 = call i32 @gf100_gr_ctxctl_debug(%struct.gf100_gr* %87)
  %89 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @nvkm_wr32(%struct.nvkm_device* %89, i32 4234272, i32 %90)
  br label %92

92:                                               ; preds = %83, %80
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @gf100_gr_ctxctl_debug(%struct.gf100_gr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
