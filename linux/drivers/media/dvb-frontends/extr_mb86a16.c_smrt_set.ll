; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_smrt_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_smrt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32, i32, i32, i32 }

@MB86A16_SRATE1 = common dso_local global i32 0, align 4
@MB86A16_SRATE2 = common dso_local global i32 0, align 4
@MB86A16_SRATE3 = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*, i32)* @smrt_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smrt_set(%struct.mb86a16_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mb86a16_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %11 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %15 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 8192, %16
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 2, %18
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %19, %20
  %22 = mul nsw i32 %21, 8192
  %23 = sub nsw i32 %17, %22
  %24 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %25 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 2
  %28 = add nsw i32 %23, %27
  %29 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %30 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 3840
  %38 = ashr i32 %37, 8
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %9, align 1
  %40 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %41 = load i32, i32* @MB86A16_SRATE1, align 4
  %42 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %43 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 2
  %46 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %47 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 1
  %50 = or i32 %45, %49
  %51 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %52 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %50, %53
  %55 = trunc i32 %54 to i8
  %56 = call i64 @mb86a16_write(%struct.mb86a16_state* %40, i32 %41, i8 zeroext %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %2
  br label %74

59:                                               ; preds = %2
  %60 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %61 = load i32, i32* @MB86A16_SRATE2, align 4
  %62 = load i8, i8* %8, align 1
  %63 = call i64 @mb86a16_write(%struct.mb86a16_state* %60, i32 %61, i8 zeroext %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %74

66:                                               ; preds = %59
  %67 = load %struct.mb86a16_state*, %struct.mb86a16_state** %4, align 8
  %68 = load i32, i32* @MB86A16_SRATE3, align 4
  %69 = load i8, i8* %9, align 1
  %70 = call i64 @mb86a16_write(%struct.mb86a16_state* %67, i32 %68, i8 zeroext %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %78

74:                                               ; preds = %72, %65, %58
  %75 = load i32, i32* @verbose, align 4
  %76 = load i32, i32* @MB86A16_ERROR, align 4
  %77 = call i32 @dprintk(i32 %75, i32 %76, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %73
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @mb86a16_write(%struct.mb86a16_state*, i32, i8 zeroext) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
