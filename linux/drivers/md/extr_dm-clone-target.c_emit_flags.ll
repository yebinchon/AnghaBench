; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_emit_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_emit_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i32 }

@DM_CLONE_HYDRATION_ENABLED = common dso_local global i32 0, align 4
@DM_CLONE_DISCARD_PASSDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no_hydration \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"no_discard_passdown \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clone*, i8*, i32, i32*)* @emit_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_flags(%struct.clone* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.clone*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clone* %0, %struct.clone** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @DM_CLONE_HYDRATION_ENABLED, align 4
  %14 = load %struct.clone*, %struct.clone** %5, align 8
  %15 = getelementptr inbounds %struct.clone, %struct.clone* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @DM_CLONE_DISCARD_PASSDOWN, align 4
  %21 = load %struct.clone*, %struct.clone** %5, align 8
  %22 = getelementptr inbounds %struct.clone, %struct.clone* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %10, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @DM_CLONE_HYDRATION_ENABLED, align 4
  %32 = load %struct.clone*, %struct.clone** %5, align 8
  %33 = getelementptr inbounds %struct.clone, %struct.clone* %32, i32 0, i32 0
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %4
  %37 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %4
  %39 = load i32, i32* @DM_CLONE_DISCARD_PASSDOWN, align 4
  %40 = load %struct.clone*, %struct.clone** %5, align 8
  %41 = getelementptr inbounds %struct.clone, %struct.clone* %40, i32 0, i32 0
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @DMEMIT(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
