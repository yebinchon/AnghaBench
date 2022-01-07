; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_print.c_drm_print_regset32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_print.c_drm_print_regset32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.debugfs_regset32 = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%*s = 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_print_regset32(%struct.drm_printer* %0, %struct.debugfs_regset32* %1) #0 {
  %3 = alloca %struct.drm_printer*, align 8
  %4 = alloca %struct.debugfs_regset32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_printer* %0, %struct.drm_printer** %3, align 8
  store %struct.debugfs_regset32* %1, %struct.debugfs_regset32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %10 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %16 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strlen(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = call i32 @max(i32 %14, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %7

29:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %33 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %30
  %37 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %40 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %48 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %4, align 8
  %51 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %49, %57
  %59 = call i32 @readl(i64 %58)
  %60 = call i32 @drm_printf(%struct.drm_printer* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %46, i32 %59)
  br label %61

61:                                               ; preds = %36
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %30

64:                                               ; preds = %30
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
