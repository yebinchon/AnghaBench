; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_disable(%struct.mdp5_kms* %0) #0 {
  %2 = alloca %struct.mdp5_kms*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %2, align 8
  %3 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %5 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %9 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %15 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @clk_disable_unprepare(i64 %16)
  %18 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %19 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @clk_disable_unprepare(i64 %20)
  %22 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %23 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @clk_disable_unprepare(i64 %24)
  %26 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %27 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %32 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @clk_disable_unprepare(i64 %33)
  br label %35

35:                                               ; preds = %30, %1
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
