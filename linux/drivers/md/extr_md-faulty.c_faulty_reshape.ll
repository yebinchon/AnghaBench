; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-faulty.c_faulty_reshape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-faulty.c_faulty_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, %struct.faulty_conf* }
%struct.faulty_conf = type { i32*, i32*, i64 }

@ModeMask = common dso_local global i32 0, align 4
@ModeShift = common dso_local global i32 0, align 4
@ClearFaults = common dso_local global i32 0, align 4
@ClearErrors = common dso_local global i32 0, align 4
@Modes = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @faulty_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @faulty_reshape(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.faulty_conf*, align 8
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %8 = load %struct.mddev*, %struct.mddev** %3, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ModeMask, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mddev*, %struct.mddev** %3, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ModeShift, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mddev*, %struct.mddev** %3, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 2
  %20 = load %struct.faulty_conf*, %struct.faulty_conf** %19, align 8
  store %struct.faulty_conf* %20, %struct.faulty_conf** %6, align 8
  %21 = load %struct.mddev*, %struct.mddev** %3, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @ClearFaults, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %32 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  br label %91

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ClearErrors, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @Modes, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %44 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %50 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @atomic_set(i32* %54, i32 0)
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %38

59:                                               ; preds = %38
  br label %90

60:                                               ; preds = %33
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @Modes, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %67 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %64
  %78 = load %struct.faulty_conf*, %struct.faulty_conf** %6, align 8
  %79 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @atomic_set(i32* %83, i32 %84)
  br label %89

86:                                               ; preds = %60
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %96

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90, %30
  %92 = load %struct.mddev*, %struct.mddev** %3, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 0
  store i32 -1, i32* %93, align 8
  %94 = load %struct.mddev*, %struct.mddev** %3, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 1
  store i32 -1, i32* %95, align 4
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %86, %25
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
