; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_set_mode_auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_set_mode_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LGS8GXX_PROD_LGS8913 = common dso_local global i64 0, align 8
@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@LGS8GXX_PROD_LGS8GL5 = common dso_local global i64 0, align 8
@LGS8GXX_PROD_LGS8G42 = common dso_local global i64 0, align 8
@LGS8GXX_PROD_LGS8G52 = common dso_local global i64 0, align 8
@LGS8GXX_PROD_LGS8G54 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*)* @lgs8gxx_set_mode_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_set_mode_auto(%struct.lgs8gxx_state* %0) #0 {
  %2 = alloca %struct.lgs8gxx_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %2, align 8
  %5 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %6 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @LGS8GXX_PROD_LGS8913, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %15 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %14, i32 198, i32 1)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %22 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %21, i32 12, i64* %3)
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, -5
  store i64 %24, i64* %3, align 8
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = or i64 %26, 128
  %28 = trunc i64 %27 to i32
  %29 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %25, i32 12, i32 %28)
  %30 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %31 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %30, i32 57, i32 0)
  %32 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %33 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %32, i32 61, i32 4)
  br label %70

34:                                               ; preds = %16
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @LGS8GXX_PROD_LGS8913, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @LGS8GXX_PROD_LGS8GL5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @LGS8GXX_PROD_LGS8G42, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @LGS8GXX_PROD_LGS8G52, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @LGS8GXX_PROD_LGS8G54, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50, %46, %42, %38, %34
  %55 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %56 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %55, i32 126, i64* %3)
  %57 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %58 = load i64, i64* %3, align 8
  %59 = or i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %57, i32 126, i32 %60)
  %62 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %63 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %62, i32 197, i64* %3)
  %64 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %65 = load i64, i64* %3, align 8
  %66 = and i64 %65, 224
  %67 = trunc i64 %66 to i32
  %68 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %64, i32 197, i32 %67)
  br label %69

69:                                               ; preds = %54, %50
  br label %70

70:                                               ; preds = %69, %20
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @LGS8GXX_PROD_LGS8913, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %76 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %75, i32 193, i32 3)
  %77 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %78 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %77, i32 124, i64* %3)
  %79 = load i64, i64* %3, align 8
  %80 = and i64 %79, 140
  %81 = or i64 %80, 3
  store i64 %81, i64* %3, align 8
  %82 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %83 = load i64, i64* %3, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %82, i32 124, i32 %84)
  %86 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %87 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %86, i32 195, i64* %3)
  %88 = load i64, i64* %3, align 8
  %89 = and i64 %88, 239
  %90 = or i64 %89, 16
  store i64 %90, i64* %3, align 8
  %91 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %92 = load i64, i64* %3, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %91, i32 195, i32 %93)
  br label %95

95:                                               ; preds = %74, %70
  %96 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %97 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LGS8GXX_PROD_LGS8G52, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %105 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %104, i32 217, i32 64)
  br label %106

106:                                              ; preds = %103, %95
  ret i32 0
}

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

declare dso_local i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
