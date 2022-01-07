; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-timings.c_ide_timing_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-timings.c_ide_timing_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_timing = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@IDE_TIMING_SETUP = common dso_local global i32 0, align 4
@IDE_TIMING_ACT8B = common dso_local global i32 0, align 4
@IDE_TIMING_REC8B = common dso_local global i32 0, align 4
@IDE_TIMING_CYC8B = common dso_local global i32 0, align 4
@IDE_TIMING_ACTIVE = common dso_local global i32 0, align 4
@IDE_TIMING_RECOVER = common dso_local global i32 0, align 4
@IDE_TIMING_CYCLE = common dso_local global i32 0, align 4
@IDE_TIMING_UDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_timing_merge(%struct.ide_timing* %0, %struct.ide_timing* %1, %struct.ide_timing* %2, i32 %3) #0 {
  %5 = alloca %struct.ide_timing*, align 8
  %6 = alloca %struct.ide_timing*, align 8
  %7 = alloca %struct.ide_timing*, align 8
  %8 = alloca i32, align 4
  store %struct.ide_timing* %0, %struct.ide_timing** %5, align 8
  store %struct.ide_timing* %1, %struct.ide_timing** %6, align 8
  store %struct.ide_timing* %2, %struct.ide_timing** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IDE_TIMING_SETUP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load %struct.ide_timing*, %struct.ide_timing** %5, align 8
  %15 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 7
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %18 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %17, i32 0, i32 7
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @max(i8* %16, i8* %19)
  %21 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %22 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %13, %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @IDE_TIMING_ACT8B, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.ide_timing*, %struct.ide_timing** %5, align 8
  %30 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %29, i32 0, i32 6
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %33 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %32, i32 0, i32 6
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @max(i8* %31, i8* %34)
  %36 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %37 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %28, %23
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IDE_TIMING_REC8B, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.ide_timing*, %struct.ide_timing** %5, align 8
  %45 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %44, i32 0, i32 5
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %48 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %47, i32 0, i32 5
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @max(i8* %46, i8* %49)
  %51 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %52 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %43, %38
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @IDE_TIMING_CYC8B, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.ide_timing*, %struct.ide_timing** %5, align 8
  %60 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %63 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @max(i8* %61, i8* %64)
  %66 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %67 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %58, %53
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @IDE_TIMING_ACTIVE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.ide_timing*, %struct.ide_timing** %5, align 8
  %75 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %78 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @max(i8* %76, i8* %79)
  %81 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %82 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %73, %68
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @IDE_TIMING_RECOVER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.ide_timing*, %struct.ide_timing** %5, align 8
  %90 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %93 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @max(i8* %91, i8* %94)
  %96 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %97 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %88, %83
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @IDE_TIMING_CYCLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.ide_timing*, %struct.ide_timing** %5, align 8
  %105 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %108 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @max(i8* %106, i8* %109)
  %111 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %112 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %103, %98
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @IDE_TIMING_UDMA, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.ide_timing*, %struct.ide_timing** %5, align 8
  %120 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %123 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @max(i8* %121, i8* %124)
  %126 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %127 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %118, %113
  ret void
}

declare dso_local i8* @max(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
