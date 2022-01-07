; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_read_one_cpu_vals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_read_one_cpu_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sens_cpu_temp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"  CPU%d: temp reading error !\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"  CPU%d: temp   = %d.%03d\0A\00", align 1
@sens_cpu_volts = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"  CPU%d, volts reading error !\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  CPU%d: volts  = %d.%03d\0A\00", align 1
@sens_cpu_amps = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"  CPU%d, current reading error !\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"  CPU%d: amps   = %d.%03d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"  CPU%d: power  = %d.%03d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @read_one_cpu_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_one_cpu_vals(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** @sens_cpu_temp, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wf_sensor_get(i32 %16, i32* %8)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %78

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @FIX32TOPRINT(i32 %27)
  %29 = call i32 @DBG_LOTS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** @sens_cpu_volts, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wf_sensor_get(i32 %36, i32* %9)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %78

45:                                               ; preds = %25
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @FIX32TOPRINT(i32 %47)
  %49 = call i32 @DBG_LOTS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load i32*, i32** @sens_cpu_amps, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wf_sensor_get(i32 %54, i32* %10)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %45
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @FIX32TOPRINT(i32 %65)
  %67 = call i32 @DBG_LOTS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %64, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 %68, %69
  %71 = ashr i32 %70, 16
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @FIX32TOPRINT(i32 %75)
  %77 = call i32 @DBG_LOTS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %73, i32 %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %63, %58, %40, %20
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @wf_sensor_get(i32, i32*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @DBG_LOTS(i8*, i32, i32) #1

declare dso_local i32 @FIX32TOPRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
