; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm3510_state = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%dkHz:\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" BC1_2_3_4: %x, N: %x A: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm3510_state*, i32)* @bcm3510_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_set_freq(%struct.bcm3510_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm3510_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sdiv i32 %11, 1000
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i8*, i32, ...) @deb_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 168000
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 28, i32* %6, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 378000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 44, i32* %6, align 4
  br label %23

22:                                               ; preds = %18
  store i32 48, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %21
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 470000
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 470001
  store i32 %29, i32* %5, align 4
  store i32 18805, i32* %9, align 4
  br label %47

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 90000
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 90001
  store i32 %35, i32* %5, align 4
  store i32 15005, i32* %9, align 4
  br label %46

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, 76000
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 76001
  store i32 %41, i32* %5, align 4
  store i32 14865, i32* %9, align 4
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 54001
  store i32 %44, i32* %5, align 4
  store i32 14645, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %33
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %48, 6000
  %50 = mul nsw i32 %49, 60
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = mul nsw i32 %52, 4
  %54 = sdiv i32 %53, 10
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 6
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 63
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, i32, ...) @deb_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp sge i32 %63, 16
  br i1 %64, label %65, label %74

65:                                               ; preds = %47
  %66 = load i32, i32* %8, align 4
  %67 = icmp sle i32 %66, 2047
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.bcm3510_state*, %struct.bcm3510_state** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @bcm3510_tuner_cmd(%struct.bcm3510_state* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %65, %47
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @deb_info(i8*, i32, ...) #1

declare dso_local i32 @bcm3510_tuner_cmd(%struct.bcm3510_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
