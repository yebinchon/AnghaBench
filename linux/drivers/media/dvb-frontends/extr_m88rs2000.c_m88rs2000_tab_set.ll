; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_tab_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_tab_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m88rs2000_state = type { i32 }
%struct.inittab = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m88rs2000_state*, %struct.inittab*)* @m88rs2000_tab_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs2000_tab_set(%struct.m88rs2000_state* %0, %struct.inittab* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m88rs2000_state*, align 8
  %5 = alloca %struct.inittab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.m88rs2000_state* %0, %struct.m88rs2000_state** %4, align 8
  store %struct.inittab* %1, %struct.inittab** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.inittab*, %struct.inittab** %5, align 8
  %9 = icmp eq %struct.inittab* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %89

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %85, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 255
  br i1 %16, label %17, label %88

17:                                               ; preds = %14
  %18 = load %struct.inittab*, %struct.inittab** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.inittab, %struct.inittab* %18, i64 %20
  %22 = getelementptr inbounds %struct.inittab, %struct.inittab* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %75 [
    i32 1, label %24
    i32 16, label %39
    i32 255, label %56
    i32 0, label %74
  ]

24:                                               ; preds = %17
  %25 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %4, align 8
  %26 = load %struct.inittab*, %struct.inittab** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.inittab, %struct.inittab* %26, i64 %28
  %30 = getelementptr inbounds %struct.inittab, %struct.inittab* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inittab*, %struct.inittab** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.inittab, %struct.inittab* %32, i64 %34
  %36 = getelementptr inbounds %struct.inittab, %struct.inittab* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %25, i32 %31, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %78

39:                                               ; preds = %17
  %40 = load %struct.inittab*, %struct.inittab** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.inittab, %struct.inittab* %40, i64 %42
  %44 = getelementptr inbounds %struct.inittab, %struct.inittab* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.inittab*, %struct.inittab** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.inittab, %struct.inittab* %48, i64 %50
  %52 = getelementptr inbounds %struct.inittab, %struct.inittab* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mdelay(i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  br label %78

56:                                               ; preds = %17
  %57 = load %struct.inittab*, %struct.inittab** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.inittab, %struct.inittab* %57, i64 %59
  %61 = getelementptr inbounds %struct.inittab, %struct.inittab* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 170
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.inittab*, %struct.inittab** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.inittab, %struct.inittab* %65, i64 %67
  %69 = getelementptr inbounds %struct.inittab, %struct.inittab* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 255
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %89

73:                                               ; preds = %64, %56
  br label %74

74:                                               ; preds = %17, %73
  br label %78

75:                                               ; preds = %17
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %89

78:                                               ; preds = %74, %55, %24
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %89

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %14

88:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %81, %75, %72, %10
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @m88rs2000_writereg(%struct.m88rs2000_state*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
