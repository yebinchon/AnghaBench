; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_fw_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_fw_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_fw_state = type { i32*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DiB0090 I2C write failed\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0090_fw_state*, i32, i32)* @dib0090_fw_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib0090_fw_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib0090_fw_state* %0, %struct.dib0090_fw_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %10 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %9, i32 0, i32 1
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 8
  %20 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %21 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 255
  %26 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %27 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %31 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %30, i32 0, i32 2
  %32 = call i32 @memset(%struct.TYPE_3__* %31, i32 0, i32 4)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %35 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 8
  %37 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %38 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %41 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %44 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %47 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 2, i32* %48, align 8
  %49 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %50 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %53 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %52, i32 0, i32 2
  %54 = call i32 @i2c_transfer(i32 %51, %struct.TYPE_3__* %53, i32 1)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %17
  %57 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EREMOTEIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %61

60:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %5, align 8
  %63 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %13
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
