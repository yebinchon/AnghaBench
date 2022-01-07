; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000mc_state = type { i32 }

@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"timf: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib3000mc_state*, i32, i32, i64)* @dib3000mc_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_set_timing(%struct.dib3000mc_state* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.dib3000mc_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dib3000mc_state* %0, %struct.dib3000mc_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %12 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  store i32 1384402, i32* %9, align 4
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @msleep(i32 200)
  br label %20

20:                                               ; preds = %18, %15
  br label %25

21:                                               ; preds = %4
  %22 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %23 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %26, 1000
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %34 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %33, i32 416)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 8192
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 16384
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %46, 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sdiv i32 %53, 1000
  %55 = sdiv i32 %52, %54
  %56 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %57 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %48, %25
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 16
  %64 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %61, i32 23, i32 %63)
  %65 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 65535
  %68 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %65, i32 24, i32 %67)
  ret i32 0
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
