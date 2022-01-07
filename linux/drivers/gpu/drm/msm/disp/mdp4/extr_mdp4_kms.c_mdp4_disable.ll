; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp4_kms = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp4_disable(%struct.mdp4_kms* %0) #0 {
  %2 = alloca %struct.mdp4_kms*, align 8
  store %struct.mdp4_kms* %0, %struct.mdp4_kms** %2, align 8
  %3 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.mdp4_kms*, %struct.mdp4_kms** %2, align 8
  %5 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @clk_disable_unprepare(i64 %6)
  %8 = load %struct.mdp4_kms*, %struct.mdp4_kms** %2, align 8
  %9 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mdp4_kms*, %struct.mdp4_kms** %2, align 8
  %14 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @clk_disable_unprepare(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.mdp4_kms*, %struct.mdp4_kms** %2, align 8
  %19 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.mdp4_kms*, %struct.mdp4_kms** %2, align 8
  %24 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @clk_disable_unprepare(i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.mdp4_kms*, %struct.mdp4_kms** %2, align 8
  %29 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.mdp4_kms*, %struct.mdp4_kms** %2, align 8
  %34 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @clk_disable_unprepare(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
