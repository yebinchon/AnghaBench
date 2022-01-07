; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_base.c_nvkm_timer_wait_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/timer/extr_base.c_nvkm_timer_wait_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_timer_wait = type { i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"stalled at %016llx\0A\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvkm_timer_wait_test(%struct.nvkm_timer_wait* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nvkm_timer_wait*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca i64, align 8
  store %struct.nvkm_timer_wait* %0, %struct.nvkm_timer_wait** %3, align 8
  %6 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.nvkm_subdev* %9, %struct.nvkm_subdev** %4, align 8
  %10 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i64 @nvkm_timer_read(%struct.TYPE_2__* %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %33 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = icmp eq i32 %34, 16
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @nvkm_fatal(%struct.nvkm_subdev* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* @ETIMEDOUT, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %2, align 8
  br label %73

43:                                               ; preds = %31
  br label %50

44:                                               ; preds = %25
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %47 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %49 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %44, %43
  %51 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %52 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %55 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %59 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i64, i64* @ETIMEDOUT, align 8
  %64 = sub nsw i64 0, %63
  store i64 %64, i64* %2, align 8
  br label %73

65:                                               ; preds = %50
  %66 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %67 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.nvkm_timer_wait*, %struct.nvkm_timer_wait** %3, align 8
  %70 = getelementptr inbounds %struct.nvkm_timer_wait, %struct.nvkm_timer_wait* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %65, %62, %37
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i64 @nvkm_timer_read(%struct.TYPE_2__*) #1

declare dso_local i32 @nvkm_fatal(%struct.nvkm_subdev*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
