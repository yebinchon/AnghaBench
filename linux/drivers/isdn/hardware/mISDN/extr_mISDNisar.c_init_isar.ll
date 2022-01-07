; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_init_isar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_init_isar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_hw = type { i32, %struct.TYPE_4__*, i32, i32 (i32, i32, i32)*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@DEBUG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: Testing version %d (%d time)\0A\00", align 1
@HW_RESET_REQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ftimer_handler = common dso_local global i32 0, align 4
@FLG_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isar_hw*)* @init_isar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_isar(%struct.isar_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isar_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.isar_hw* %0, %struct.isar_hw** %3, align 8
  store i32 3, i32* %4, align 4
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %11 = call i32 @ISARVersion(%struct.isar_hw* %10)
  %12 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %13 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %15 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DEBUG_HW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %9
  %25 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %26 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %29 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 3, %31
  %33 = call i32 @pr_notice(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %24, %9
  %35 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %36 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %49

40:                                               ; preds = %34
  %41 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %42 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %41, i32 0, i32 3
  %43 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %42, align 8
  %44 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %45 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @HW_RESET_REQ, align 4
  %48 = call i32 %43(i32 %46, i32 %47, i32 0)
  br label %5

49:                                               ; preds = %39, %5
  %50 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %51 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %88

57:                                               ; preds = %49
  %58 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %59 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* @ftimer_handler, align 4
  %64 = call i32 @timer_setup(i32* %62, i32 %63, i32 0)
  %65 = load i32, i32* @FLG_INITIALIZED, align 4
  %66 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %67 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = call i32 @test_and_set_bit(i32 %65, i32* %71)
  %73 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %74 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* @ftimer_handler, align 4
  %79 = call i32 @timer_setup(i32* %77, i32 %78, i32 0)
  %80 = load i32, i32* @FLG_INITIALIZED, align 4
  %81 = load %struct.isar_hw*, %struct.isar_hw** %3, align 8
  %82 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = call i32 @test_and_set_bit(i32 %80, i32* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %57, %54
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ISARVersion(%struct.isar_hw*) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
