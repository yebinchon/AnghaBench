; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_autolock_gi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_autolock_gi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GI_945 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"try GI 945\0A\00", align 1
@GI_595 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"try GI 595\0A\00", align 1
@GI_420 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"try GI 420\0A\00", align 1
@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@GI_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"auto detect finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*, i32, i32, i32*)* @lgs8gxx_autolock_gi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_autolock_gi(%struct.lgs8gxx_state* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lgs8gxx_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GI_945, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %33

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GI_595, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GI_420, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %35 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %43 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %42, i32 12, i32* %12)
  %44 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %45 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %44, i32 24, i32* %13)
  %46 = load i32, i32* @GI_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = and i32 %53, 254
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = load i32, i32* %13, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %61, i32 12, i32 %62)
  %64 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %64, i32 24, i32 %65)
  br label %71

67:                                               ; preds = %33
  %68 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %68, i32 4, i32 %69)
  br label %71

71:                                               ; preds = %67, %41
  %72 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %73 = call i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state* %72)
  %74 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @lgs8gxx_wait_ca_lock(%struct.lgs8gxx_state* %74, i32* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %71
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79, %71
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %100

85:                                               ; preds = %79
  %86 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %87 = call i32 @lgs8gxx_is_autodetect_finished(%struct.lgs8gxx_state* %86, i32* %11)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %100

92:                                               ; preds = %85
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %99

97:                                               ; preds = %92
  %98 = load i32*, i32** %9, align 8
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %95
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %90, %83
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state*, i32, i32*) #1

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

declare dso_local i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state*) #1

declare dso_local i32 @lgs8gxx_wait_ca_lock(%struct.lgs8gxx_state*, i32*) #1

declare dso_local i32 @lgs8gxx_is_autodetect_finished(%struct.lgs8gxx_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
