; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_optim_cloop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_optim_cloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32 }

@FE_32APSK_910 = common dso_local global i32 0, align 4
@FE_QPSK_14 = common dso_local global i32 0, align 4
@s2car_loop = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, i32, i32)* @get_optim_cloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_optim_cloop(%struct.stv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @FE_32APSK_910, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* @FE_32APSK_910, align 4
  %13 = load i32, i32* @FE_QPSK_14, align 4
  %14 = sub nsw i32 %12, %13
  %15 = mul nsw i32 %14, 10
  store i32 %15, i32* %7, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FE_QPSK_14, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @FE_QPSK_14, align 4
  %23 = sub nsw i32 %21, %22
  %24 = mul nsw i32 %23, 10
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %16
  br label %26

26:                                               ; preds = %25, %11
  %27 = load %struct.stv*, %struct.stv** %4, align 8
  %28 = getelementptr inbounds %struct.stv, %struct.stv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 3000000
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 0
  store i32 %33, i32* %7, align 4
  br label %64

34:                                               ; preds = %26
  %35 = load %struct.stv*, %struct.stv** %4, align 8
  %36 = getelementptr inbounds %struct.stv, %struct.stv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 7000000
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %7, align 4
  br label %63

42:                                               ; preds = %34
  %43 = load %struct.stv*, %struct.stv** %4, align 8
  %44 = getelementptr inbounds %struct.stv, %struct.stv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 15000000
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %7, align 4
  br label %62

50:                                               ; preds = %42
  %51 = load %struct.stv*, %struct.stv** %4, align 8
  %52 = getelementptr inbounds %struct.stv, %struct.stv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %53, 25000000
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 6
  store i32 %57, i32* %7, align 4
  br label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 8
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %39
  br label %64

64:                                               ; preds = %63, %31
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32*, i32** @s2car_loop, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
