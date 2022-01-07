; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_set_mode_manual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8gxx_set_mode_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@LGS8GXX_PROD_LGS8913 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*)* @lgs8gxx_set_mode_manual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_set_mode_manual(%struct.lgs8gxx_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgs8gxx_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %3, align 8
  %6 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %7 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %1
  %14 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %15 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %14, i32 12, i32* %4)
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -129
  store i32 %17, i32* %4, align 4
  %18 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %18, i32 12, i32 %19)
  %21 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %22 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %21, i32 12, i32* %4)
  %23 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %24 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %23, i32 25, i32* %5)
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %45

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %34 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %33, i32 110, i32 5)
  %35 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %36 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %35, i32 57, i32 2)
  %37 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %38 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %37, i32 57, i32 3)
  %39 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %40 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %39, i32 61, i32 5)
  %41 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %42 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %41, i32 62, i32 40)
  %43 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %44 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %43, i32 83, i32 128)
  br label %52

45:                                               ; preds = %28, %13
  %46 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %47 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %46, i32 110, i32 63)
  %48 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %49 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %48, i32 57, i32 0)
  %50 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %51 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %50, i32 61, i32 4)
  br label %52

52:                                               ; preds = %45, %32
  %53 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %54 = call i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state* %53)
  store i32 0, i32* %2, align 4
  br label %79

55:                                               ; preds = %1
  %56 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %57 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %56, i32 126, i32 0)
  %58 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %59 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LGS8GXX_PROD_LGS8913, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %67 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %66, i32 193, i32 0)
  br label %68

68:                                               ; preds = %65, %55
  %69 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %70 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %69, i32 197, i32* %4)
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 224
  %73 = or i32 %72, 6
  store i32 %73, i32* %4, align 4
  %74 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %74, i32 197, i32 %75)
  %77 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %78 = call i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %68, %52
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state*, i32, i32*) #1

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

declare dso_local i32 @lgs8gxx_soft_reset(%struct.lgs8gxx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
