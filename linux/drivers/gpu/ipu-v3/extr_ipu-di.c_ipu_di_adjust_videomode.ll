; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_adjust_videomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_adjust_videomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_di = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.videomode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to adjust videomode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"videomode adapted for IPU restrictions\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_di_adjust_videomode(%struct.ipu_di* %0, %struct.videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_di*, align 8
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca i32, align 4
  store %struct.ipu_di* %0, %struct.ipu_di** %4, align 8
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  %7 = load %struct.videomode*, %struct.videomode** %5, align 8
  %8 = getelementptr inbounds %struct.videomode, %struct.videomode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

12:                                               ; preds = %2
  %13 = load %struct.videomode*, %struct.videomode** %5, align 8
  %14 = getelementptr inbounds %struct.videomode, %struct.videomode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 2, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.videomode*, %struct.videomode** %5, align 8
  %18 = getelementptr inbounds %struct.videomode, %struct.videomode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load %struct.videomode*, %struct.videomode** %5, align 8
  %24 = getelementptr inbounds %struct.videomode, %struct.videomode* %23, i32 0, i32 0
  store i32 2, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.videomode*, %struct.videomode** %5, align 8
  %27 = getelementptr inbounds %struct.videomode, %struct.videomode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %56

30:                                               ; preds = %12
  %31 = load %struct.videomode*, %struct.videomode** %5, align 8
  %32 = getelementptr inbounds %struct.videomode, %struct.videomode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.videomode*, %struct.videomode** %5, align 8
  %38 = getelementptr inbounds %struct.videomode, %struct.videomode* %37, i32 0, i32 0
  store i32 2, i32* %38, align 4
  %39 = load %struct.videomode*, %struct.videomode** %5, align 8
  %40 = getelementptr inbounds %struct.videomode, %struct.videomode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load %struct.videomode*, %struct.videomode** %5, align 8
  %45 = getelementptr inbounds %struct.videomode, %struct.videomode* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %55

46:                                               ; preds = %30
  %47 = load %struct.ipu_di*, %struct.ipu_di** %4, align 8
  %48 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55, %22
  %57 = load %struct.ipu_di*, %struct.ipu_di** %4, align 8
  %58 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %46, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
