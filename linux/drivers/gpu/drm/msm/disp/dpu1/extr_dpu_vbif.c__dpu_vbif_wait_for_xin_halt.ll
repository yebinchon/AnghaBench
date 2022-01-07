; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c__dpu_vbif_wait_for_xin_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c__dpu_vbif_wait_for_xin_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_vbif = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dpu_hw_vbif.0*, i32)* }
%struct.dpu_hw_vbif.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid arguments vbif %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"VBIF %d client %d not halting. TIMEDOUT.\0A\00", align 1
@VBIF_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"VBIF %d client %d is halted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_vbif*, i32)* @_dpu_vbif_wait_for_xin_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_vbif_wait_for_xin_halt(%struct.dpu_hw_vbif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_hw_vbif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpu_hw_vbif* %0, %struct.dpu_hw_vbif** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %10 = icmp ne %struct.dpu_hw_vbif* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %13 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dpu_hw_vbif.0*, i32)*, i32 (%struct.dpu_hw_vbif.0*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.dpu_hw_vbif.0*, i32)* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %16, %11, %2
  %23 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %24 = icmp ne %struct.dpu_hw_vbif* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 (i8*, i32, ...) @DPU_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %16
  %30 = call i32 (...) @ktime_get()
  %31 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %32 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ktime_add_us(i32 %30, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %63, %29
  %38 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %39 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dpu_hw_vbif.0*, i32)*, i32 (%struct.dpu_hw_vbif.0*, i32)** %40, align 8
  %42 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %43 = bitcast %struct.dpu_hw_vbif* %42 to %struct.dpu_hw_vbif.0*
  %44 = load i32, i32* %5, align 4
  %45 = call i32 %41(%struct.dpu_hw_vbif.0* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %65

49:                                               ; preds = %37
  %50 = call i32 (...) @ktime_get()
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @ktime_compare_safe(i32 %50, i32 %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %56 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.dpu_hw_vbif.0*, i32)*, i32 (%struct.dpu_hw_vbif.0*, i32)** %57, align 8
  %59 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %60 = bitcast %struct.dpu_hw_vbif* %59 to %struct.dpu_hw_vbif.0*
  %61 = load i32, i32* %5, align 4
  %62 = call i32 %58(%struct.dpu_hw_vbif.0* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %65

63:                                               ; preds = %49
  %64 = call i32 @usleep_range(i32 501, i32 1000)
  br label %37

65:                                               ; preds = %54, %48
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %72 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VBIF_0, align 8
  %75 = sub nsw i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i8*, i32, ...) @DPU_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  br label %87

79:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  %80 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %81 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VBIF_0, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %68
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @DPU_ERROR(i8*, i32, ...) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_compare_safe(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DPU_DEBUG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
