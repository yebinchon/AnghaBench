; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_smp = type { i32 }
%struct.mdp5_smp_state = type { i32, i32, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp5_smp_release(%struct.mdp5_smp* %0, %struct.mdp5_smp_state* %1, i32 %2) #0 {
  %4 = alloca %struct.mdp5_smp*, align 8
  %5 = alloca %struct.mdp5_smp_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.mdp5_smp* %0, %struct.mdp5_smp** %4, align 8
  store %struct.mdp5_smp_state* %1, %struct.mdp5_smp_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mdp5_smp*, %struct.mdp5_smp** %4, align 8
  %12 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pipe2nclients(i32 %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @pipe2client(i32 %20, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.mdp5_smp_state*, %struct.mdp5_smp_state** %5, align 8
  %24 = getelementptr inbounds %struct.mdp5_smp_state, %struct.mdp5_smp_state* %23, i32 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load %struct.mdp5_smp_state*, %struct.mdp5_smp_state** %5, align 8
  %30 = getelementptr inbounds %struct.mdp5_smp_state, %struct.mdp5_smp_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mdp5_smp_state*, %struct.mdp5_smp_state** %5, align 8
  %33 = getelementptr inbounds %struct.mdp5_smp_state, %struct.mdp5_smp_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @bitmap_andnot(i32 %31, i32 %34, i8* %35, i32 %36)
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @bitmap_zero(i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %14

44:                                               ; preds = %14
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = load %struct.mdp5_smp_state*, %struct.mdp5_smp_state** %5, align 8
  %48 = getelementptr inbounds %struct.mdp5_smp_state, %struct.mdp5_smp_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  ret void
}

declare dso_local i32 @pipe2nclients(i32) #1

declare dso_local i64 @pipe2client(i32, i32) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i8*, i32) #1

declare dso_local i32 @bitmap_zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
