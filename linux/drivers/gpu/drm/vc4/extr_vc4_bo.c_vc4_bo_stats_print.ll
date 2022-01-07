; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_stats_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_stats_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.vc4_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"%30s: %6dkb BOs (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%30s: %6zdkb BOs (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"userspace BO cache\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"total purged BO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_printer*, %struct.vc4_dev*)* @vc4_bo_stats_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_bo_stats_print(%struct.drm_printer* %0, %struct.vc4_dev* %1) #0 {
  %3 = alloca %struct.drm_printer*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_printer* %0, %struct.drm_printer** %3, align 8
  store %struct.vc4_dev* %1, %struct.vc4_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %51, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %9 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %6
  %13 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %14 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %51

23:                                               ; preds = %12
  %24 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %25 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %26 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %34 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 1024
  %42 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %43 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @drm_printf(%struct.drm_printer* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %41, i64 %49)
  br label %51

51:                                               ; preds = %23, %22
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %6

54:                                               ; preds = %6
  %55 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %56 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %60 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %54
  %65 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %66 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %67 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 1024
  %71 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %72 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @drm_printf(%struct.drm_printer* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %70, i64 %74)
  br label %76

76:                                               ; preds = %64, %54
  %77 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %78 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %84 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %85 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 1024
  %89 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %90 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @drm_printf(%struct.drm_printer* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %88, i64 %92)
  br label %94

94:                                               ; preds = %82, %76
  %95 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %96 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = call i32 @mutex_unlock(i32* %97)
  ret void
}

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i8*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
