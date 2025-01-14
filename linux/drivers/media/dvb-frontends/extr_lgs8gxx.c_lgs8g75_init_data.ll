; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8g75_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgs8gxx.c_lgs8g75_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32* }

@LGS8GXX_FIRMWARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*)* @lgs8g75_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8g75_init_data(%struct.lgs8gxx_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgs8gxx_state*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %3, align 8
  %7 = load i32, i32* @LGS8GXX_FIRMWARE, align 4
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %9 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @request_firmware(%struct.firmware** %4, i32 %7, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %66

17:                                               ; preds = %1
  %18 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %19 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %18, i32 198, i32 64)
  %20 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %21 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %20, i32 61, i32 4)
  %22 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %23 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %22, i32 57, i32 0)
  %24 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %25 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %24, i32 58, i32 0)
  %26 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %27 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %26, i32 56, i32 0)
  %28 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %29 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %28, i32 59, i32 0)
  %30 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %31 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %30, i32 56, i32 0)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %58, %17
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.firmware*, %struct.firmware** %4, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %40 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %39, i32 56, i32 0)
  %41 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %41, i32 58, i32 %43)
  %45 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 8
  %48 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %45, i32 59, i32 %47)
  %49 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %50 = load %struct.firmware*, %struct.firmware** %4, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %49, i32 60, i32 %56)
  br label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %32

61:                                               ; preds = %32
  %62 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %63 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %62, i32 56, i32 0)
  %64 = load %struct.firmware*, %struct.firmware** %4, align 8
  %65 = call i32 @release_firmware(%struct.firmware* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %15
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
