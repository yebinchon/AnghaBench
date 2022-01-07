; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_requeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_q_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32, i32, i64 }
%struct.entry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue*, %struct.entry*, i32, %struct.entry*, %struct.entry*)* @q_requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q_requeue(%struct.queue* %0, %struct.entry* %1, i32 %2, %struct.entry* %3, %struct.entry* %4) #0 {
  %6 = alloca %struct.queue*, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.entry*, align 8
  %10 = alloca %struct.entry*, align 8
  %11 = alloca %struct.entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.queue* %0, %struct.queue** %6, align 8
  store %struct.entry* %1, %struct.entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.entry* %3, %struct.entry** %9, align 8
  store %struct.entry* %4, %struct.entry** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.queue*, %struct.queue** %6, align 8
  %15 = getelementptr inbounds %struct.queue, %struct.queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub i32 %16, 1
  %18 = load %struct.entry*, %struct.entry** %7, align 8
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %20, %21
  %23 = call i32 @min(i32 %17, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %102

26:                                               ; preds = %5
  %27 = load %struct.entry*, %struct.entry** %7, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.queue*, %struct.queue** %6, align 8
  %31 = getelementptr inbounds %struct.queue, %struct.queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub i32 %32, 1
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %102

35:                                               ; preds = %26
  %36 = load %struct.queue*, %struct.queue** %6, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.queue*, %struct.queue** %6, align 8
  %40 = getelementptr inbounds %struct.queue, %struct.queue* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call %struct.entry* @l_head(i32 %38, i64 %44)
  store %struct.entry* %45, %struct.entry** %11, align 8
  br label %46

46:                                               ; preds = %59, %35
  %47 = load %struct.entry*, %struct.entry** %11, align 8
  %48 = icmp ne %struct.entry* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.entry*, %struct.entry** %11, align 8
  %51 = getelementptr inbounds %struct.entry, %struct.entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %49, %46
  %55 = phi i1 [ false, %46 ], [ %53, %49 ]
  br i1 %55, label %56, label %65

56:                                               ; preds = %54
  %57 = load i32, i32* %12, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %56
  %60 = load %struct.queue*, %struct.queue** %6, align 8
  %61 = getelementptr inbounds %struct.queue, %struct.queue* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.entry*, %struct.entry** %11, align 8
  %64 = call %struct.entry* @l_next(i32 %62, %struct.entry* %63)
  store %struct.entry* %64, %struct.entry** %11, align 8
  br label %46

65:                                               ; preds = %54
  %66 = load %struct.entry*, %struct.entry** %11, align 8
  %67 = icmp ne %struct.entry* %66, null
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load %struct.queue*, %struct.queue** %6, align 8
  %70 = load %struct.entry*, %struct.entry** %11, align 8
  %71 = call i32 @q_del(%struct.queue* %69, %struct.entry* %70)
  %72 = load %struct.entry*, %struct.entry** %7, align 8
  %73 = getelementptr inbounds %struct.entry, %struct.entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.entry*, %struct.entry** %11, align 8
  %76 = getelementptr inbounds %struct.entry, %struct.entry* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.entry*, %struct.entry** %9, align 8
  %78 = icmp ne %struct.entry* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %68
  %80 = load i32, i32* %12, align 4
  switch i32 %80, label %91 [
    i32 0, label %81
    i32 1, label %86
  ]

81:                                               ; preds = %79
  %82 = load %struct.queue*, %struct.queue** %6, align 8
  %83 = load %struct.entry*, %struct.entry** %9, align 8
  %84 = load %struct.entry*, %struct.entry** %11, align 8
  %85 = call i32 @q_push_before(%struct.queue* %82, %struct.entry* %83, %struct.entry* %84)
  br label %95

86:                                               ; preds = %79
  %87 = load %struct.queue*, %struct.queue** %6, align 8
  %88 = load %struct.entry*, %struct.entry** %10, align 8
  %89 = load %struct.entry*, %struct.entry** %11, align 8
  %90 = call i32 @q_push_before(%struct.queue* %87, %struct.entry* %88, %struct.entry* %89)
  br label %95

91:                                               ; preds = %79
  %92 = load %struct.queue*, %struct.queue** %6, align 8
  %93 = load %struct.entry*, %struct.entry** %11, align 8
  %94 = call i32 @q_push(%struct.queue* %92, %struct.entry* %93)
  br label %95

95:                                               ; preds = %91, %86, %81
  br label %100

96:                                               ; preds = %68
  %97 = load %struct.queue*, %struct.queue** %6, align 8
  %98 = load %struct.entry*, %struct.entry** %11, align 8
  %99 = call i32 @q_push(%struct.queue* %97, %struct.entry* %98)
  br label %100

100:                                              ; preds = %96, %95
  br label %101

101:                                              ; preds = %100, %65
  br label %102

102:                                              ; preds = %101, %26, %5
  %103 = load %struct.queue*, %struct.queue** %6, align 8
  %104 = load %struct.entry*, %struct.entry** %7, align 8
  %105 = call i32 @q_del(%struct.queue* %103, %struct.entry* %104)
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.entry*, %struct.entry** %7, align 8
  %108 = getelementptr inbounds %struct.entry, %struct.entry* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.queue*, %struct.queue** %6, align 8
  %110 = load %struct.entry*, %struct.entry** %7, align 8
  %111 = call i32 @q_push(%struct.queue* %109, %struct.entry* %110)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.entry* @l_head(i32, i64) #1

declare dso_local %struct.entry* @l_next(i32, %struct.entry*) #1

declare dso_local i32 @q_del(%struct.queue*, %struct.entry*) #1

declare dso_local i32 @q_push_before(%struct.queue*, %struct.entry*, %struct.entry*) #1

declare dso_local i32 @q_push(%struct.queue*, %struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
