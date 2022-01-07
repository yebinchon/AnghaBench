; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-ioctls.c_ide_set_nice_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-ioctls.c_ide_set_nice_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@IDE_NICE_DSC_OVERLAP = common dso_local global i32 0, align 4
@IDE_NICE_1 = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ide_tape = common dso_local global i64 0, align 8
@IDE_DFLAG_DSC_OVERLAP = common dso_local global i32 0, align 4
@IDE_DFLAG_NICE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @ide_set_nice_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_set_nice_ioctl(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* @IDE_NICE_DSC_OVERLAP, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* @IDE_NICE_1, align 4
  %11 = shl i32 1, %10
  %12 = or i32 %9, %11
  %13 = sext i32 %12 to i64
  %14 = and i64 %7, %13
  %15 = icmp ne i64 %6, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @IDE_NICE_DSC_OVERLAP, align 4
  %22 = zext i32 %21 to i64
  %23 = lshr i64 %20, %22
  %24 = and i64 %23, 1
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ide_tape, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %76

35:                                               ; preds = %26, %19
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @IDE_NICE_DSC_OVERLAP, align 4
  %38 = zext i32 %37 to i64
  %39 = lshr i64 %36, %38
  %40 = and i64 %39, 1
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @IDE_DFLAG_DSC_OVERLAP, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @IDE_DFLAG_DSC_OVERLAP, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %42
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* @IDE_NICE_1, align 4
  %58 = zext i32 %57 to i64
  %59 = lshr i64 %56, %58
  %60 = and i64 %59, 1
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @IDE_DFLAG_NICE1, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %75

68:                                               ; preds = %55
  %69 = load i32, i32* @IDE_DFLAG_NICE1, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %68, %62
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %32, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
