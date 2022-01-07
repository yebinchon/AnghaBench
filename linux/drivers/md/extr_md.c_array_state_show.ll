; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_array_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_array_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i64 }

@inactive = common dso_local global i32 0, align 4
@MD_NOT_READY = common dso_local global i32 0, align 4
@readonly = common dso_local global i32 0, align 4
@read_auto = common dso_local global i32 0, align 4
@MD_SB_CHANGE_PENDING = common dso_local global i32 0, align 4
@write_pending = common dso_local global i32 0, align 4
@clean = common dso_local global i32 0, align 4
@active_idle = common dso_local global i32 0, align 4
@active = common dso_local global i32 0, align 4
@MD_BROKEN = common dso_local global i32 0, align 4
@broken = common dso_local global i32 0, align 4
@clear = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@array_states = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*)* @array_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_state_show(%struct.mddev* %0, i8* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @inactive, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 9
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %2
  %12 = load i32, i32* @MD_NOT_READY, align 4
  %13 = load %struct.mddev*, %struct.mddev** %3, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 4
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %71, label %17

17:                                               ; preds = %11
  %18 = load %struct.mddev*, %struct.mddev** %3, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %58 [
    i32 1, label %21
    i32 2, label %23
    i32 0, label %25
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @readonly, align 4
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %17
  %24 = load i32, i32* @read_auto, align 4
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %17
  %26 = load %struct.mddev*, %struct.mddev** %3, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 5
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load i32, i32* @MD_SB_CHANGE_PENDING, align 4
  %30 = load %struct.mddev*, %struct.mddev** %3, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 8
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @write_pending, align 4
  store i32 %35, i32* %5, align 4
  br label %54

36:                                               ; preds = %25
  %37 = load %struct.mddev*, %struct.mddev** %3, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @clean, align 4
  store i32 %42, i32* %5, align 4
  br label %53

43:                                               ; preds = %36
  %44 = load %struct.mddev*, %struct.mddev** %3, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @active_idle, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @active, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %48
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.mddev*, %struct.mddev** %3, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 5
  %57 = call i32 @spin_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %17, %23, %21
  %59 = load i32, i32* @MD_BROKEN, align 4
  %60 = load %struct.mddev*, %struct.mddev** %3, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 4
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @clean, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @broken, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %64, %58
  br label %91

71:                                               ; preds = %11, %2
  %72 = load %struct.mddev*, %struct.mddev** %3, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 3
  %74 = call i64 @list_empty(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.mddev*, %struct.mddev** %3, align 8
  %78 = getelementptr inbounds %struct.mddev, %struct.mddev* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.mddev*, %struct.mddev** %3, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @clear, align 4
  store i32 %87, i32* %5, align 4
  br label %90

88:                                               ; preds = %81, %76, %71
  %89 = load i32, i32* @inactive, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %70
  %92 = load i8*, i8** %4, align 8
  %93 = load i8**, i8*** @array_states, align 8
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %97)
  ret i32 %98
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
