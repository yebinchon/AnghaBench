; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_event_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_event_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"wait_for_completion_timeout failed\00", align 1
@ETNA_NR_EVENTS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gpu*, i32, i32*)* @event_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_alloc(%struct.etnaviv_gpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_gpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = call i64 @msecs_to_jiffies(i32 100000)
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %34, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @wait_for_completion_timeout(i32* %20, i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %27 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %75

30:                                               ; preds = %18
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %39 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %38, i32 0, i32 1
  %40 = call i32 @spin_lock(i32* %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %68, %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  %46 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %47 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ETNA_NR_EVENTS, align 4
  %50 = call i32 @find_first_zero_bit(i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %57 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @memset(i32* %61, i32 0, i32 4)
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %65 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @set_bit(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %45
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %41

71:                                               ; preds = %41
  %72 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %73 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock(i32* %73)
  store i32 0, i32* %4, align 4
  br label %90

75:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %84, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %82 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %81, i32 0, i32 0
  %83 = call i32 @complete(i32* %82)
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %76

87:                                               ; preds = %76
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %71
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
