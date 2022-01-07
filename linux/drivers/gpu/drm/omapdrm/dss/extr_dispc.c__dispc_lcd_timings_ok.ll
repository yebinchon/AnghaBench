; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c__dispc_lcd_timings_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c__dispc_lcd_timings_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, i32, i32, i32, i32, i32, i32)* @_dispc_lcd_timings_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dispc_lcd_timings_ok(%struct.dispc_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dispc_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %81, label %18

18:                                               ; preds = %7
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.dispc_device*, %struct.dispc_device** %9, align 8
  %21 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %19, %24
  br i1 %25, label %81, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %81, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.dispc_device*, %struct.dispc_device** %9, align 8
  %32 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %81, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %81, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.dispc_device*, %struct.dispc_device** %9, align 8
  %43 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %41, %46
  br i1 %47, label %81, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %81, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.dispc_device*, %struct.dispc_device** %9, align 8
  %54 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %52, %57
  br i1 %58, label %81, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.dispc_device*, %struct.dispc_device** %9, align 8
  %65 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %63, %68
  br i1 %69, label %81, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.dispc_device*, %struct.dispc_device** %9, align 8
  %76 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %74, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73, %70, %62, %59, %51, %48, %40, %37, %29, %26, %18, %7
  store i32 0, i32* %8, align 4
  br label %83

82:                                               ; preds = %73
  store i32 1, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
