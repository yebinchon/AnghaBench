; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_nv40.c_nv40_timer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_nv40.c_nv40_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_timer = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV04_PTIMER_NUMERATOR = common dso_local global i32 0, align 4
@NV04_PTIMER_DENOMINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unknown input clock freq\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"input frequency : %dHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"numerator       : %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"denominator     : %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"timer frequency : %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_timer*)* @nv40_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_timer_init(%struct.nvkm_timer* %0) #0 {
  %2 = alloca %struct.nvkm_timer*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_timer* %0, %struct.nvkm_timer** %2, align 8
  %8 = load %struct.nvkm_timer*, %struct.nvkm_timer** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_timer, %struct.nvkm_timer* %8, i32 0, i32 0
  store %struct.nvkm_subdev* %9, %struct.nvkm_subdev** %3, align 8
  %10 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 31250, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %1
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = load i32, i32* @NV04_PTIMER_NUMERATOR, align 4
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = load i32, i32* @NV04_PTIMER_DENOMINATOR, align 4
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %16
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %31 = call i32 @nvkm_warn(%struct.nvkm_subdev* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %1
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i32, i32* %6, align 4
  %35 = srem i32 %34, 5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = srem i32 %38, 5
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = load i32, i32* %6, align 4
  %45 = sdiv i32 %44, 5
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %46, 5
  store i32 %47, i32* %7, align 4
  br label %33

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %59, %48
  %50 = load i32, i32* %6, align 4
  %51 = srem i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = srem i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = load i32, i32* %6, align 4
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %7, align 4
  br label %49

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %73, %64
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %66, 65535
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %69, 65535
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ true, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %65

78:                                               ; preds = %71
  %79 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @nvkm_debug(%struct.nvkm_subdev* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @nvkm_debug(%struct.nvkm_subdev* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @nvkm_debug(%struct.nvkm_subdev* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %6, align 4
  %93 = sdiv i32 %91, %92
  %94 = call i32 @nvkm_debug(%struct.nvkm_subdev* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %96 = load i32, i32* @NV04_PTIMER_NUMERATOR, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @nvkm_wr32(%struct.nvkm_device* %95, i32 %96, i32 %97)
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %100 = load i32, i32* @NV04_PTIMER_DENOMINATOR, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
