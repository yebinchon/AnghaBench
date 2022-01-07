; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_nv41.c_nv41_timer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_nv41.c_nv41_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_timer = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"input frequency : %dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"input multiplier: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"numerator       : %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"denominator     : %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"timer frequency : %dHz\0A\00", align 1
@NV04_PTIMER_NUMERATOR = common dso_local global i32 0, align 4
@NV04_PTIMER_DENOMINATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_timer*)* @nv41_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv41_timer_init(%struct.nvkm_timer* %0) #0 {
  %2 = alloca %struct.nvkm_timer*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_timer* %0, %struct.nvkm_timer** %2, align 8
  %9 = load %struct.nvkm_timer*, %struct.nvkm_timer** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_timer, %struct.nvkm_timer* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %3, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 31250, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %23, %1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %20, 2
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %18

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %42, %31
  %33 = load i32, i32* %7, align 4
  %34 = srem i32 %33, 5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = srem i32 %37, 5
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %43, 5
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sdiv i32 %45, 5
  store i32 %46, i32* %8, align 4
  br label %32

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i32, i32* %7, align 4
  %50 = srem i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = srem i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ false, %48 ], [ %55, %52 ]
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = load i32, i32* %7, align 4
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %8, align 4
  br label %48

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %72, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 65535
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 65535
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ true, %64 ], [ %69, %67 ]
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %64

77:                                               ; preds = %70
  %78 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @nvkm_debug(%struct.nvkm_subdev* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @nvkm_debug(%struct.nvkm_subdev* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @nvkm_debug(%struct.nvkm_subdev* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @nvkm_debug(%struct.nvkm_subdev* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = sdiv i32 %95, %96
  %98 = call i32 @nvkm_debug(%struct.nvkm_subdev* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 1
  %102 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 37408, i32 %101)
  %103 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %104 = load i32, i32* @NV04_PTIMER_NUMERATOR, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @nvkm_wr32(%struct.nvkm_device* %103, i32 %104, i32 %105)
  %107 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %108 = load i32, i32* @NV04_PTIMER_DENOMINATOR, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @nvkm_wr32(%struct.nvkm_device* %107, i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
