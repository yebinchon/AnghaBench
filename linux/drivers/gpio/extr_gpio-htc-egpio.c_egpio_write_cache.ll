; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-htc-egpio.c_egpio_write_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-htc-egpio.c_egpio_write_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.egpio_info = type { i32, i32, i32, %struct.egpio_chip* }
%struct.egpio_chip = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"EGPIO: setting %x to %x, was %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.egpio_info*)* @egpio_write_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @egpio_write_cache(%struct.egpio_info* %0) #0 {
  %2 = alloca %struct.egpio_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.egpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.egpio_info* %0, %struct.egpio_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %87, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %10 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %90

13:                                               ; preds = %7
  %14 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %15 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %14, i32 0, i32 3
  %16 = load %struct.egpio_chip*, %struct.egpio_chip** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %16, i64 %18
  store %struct.egpio_chip* %19, %struct.egpio_chip** %4, align 8
  %20 = load %struct.egpio_chip*, %struct.egpio_chip** %4, align 8
  %21 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %87

25:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %79, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.egpio_chip*, %struct.egpio_chip** %4, align 8
  %29 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %26
  %34 = load %struct.egpio_chip*, %struct.egpio_chip** %4, align 8
  %35 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @egpio_pos(%struct.egpio_info* %37, i32 %38)
  %40 = add nsw i32 %36, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.egpio_chip*, %struct.egpio_chip** %4, align 8
  %42 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %43, %44
  %46 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %47 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %33
  br label %79

52:                                               ; preds = %33
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.egpio_chip*, %struct.egpio_chip** %4, align 8
  %55 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %56, %57
  %59 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %60 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %58, %61
  %63 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @egpio_readw(%struct.egpio_info* %63, i32 %64)
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %62, i32 %65)
  %67 = load %struct.egpio_chip*, %struct.egpio_chip** %4, align 8
  %68 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = ashr i32 %69, %70
  %72 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %73 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %71, %74
  %76 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @egpio_writew(i32 %75, %struct.egpio_info* %76, i32 %77)
  br label %79

79:                                               ; preds = %52, %51
  %80 = load %struct.egpio_info*, %struct.egpio_info** %2, align 8
  %81 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %26

86:                                               ; preds = %26
  br label %87

87:                                               ; preds = %86, %24
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %7

90:                                               ; preds = %7
  ret void
}

declare dso_local i32 @egpio_pos(%struct.egpio_info*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @egpio_readw(%struct.egpio_info*, i32) #1

declare dso_local i32 @egpio_writew(i32, %struct.egpio_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
