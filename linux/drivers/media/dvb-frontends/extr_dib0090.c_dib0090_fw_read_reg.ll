; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_fw_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_fw_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_fw_state = type { i32*, i32, %struct.TYPE_3__, i32, i8** }
%struct.TYPE_3__ = type { i32*, i32, i32, i8* }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"DiB0090 I2C read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib0090_fw_state*, i8*)* @dib0090_fw_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_fw_read_reg(%struct.dib0090_fw_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dib0090_fw_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dib0090_fw_state* %0, %struct.dib0090_fw_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %8 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %7, i32 0, i32 1
  %9 = call i64 @mutex_lock_interruptible(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %16 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %15, i32 0, i32 4
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %14, i8** %18, align 8
  %19 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %20 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %19, i32 0, i32 2
  %21 = call i32 @memset(%struct.TYPE_3__* %20, i32 0, i32 4)
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %24 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @I2C_M_RD, align 4
  %27 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %28 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %31 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %34 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %37 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 2, i32* %38, align 8
  %39 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %40 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %43 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %42, i32 0, i32 2
  %44 = call i32 @i2c_transfer(i32 %41, %struct.TYPE_3__* %43, i32 1)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %13
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %61

48:                                               ; preds = %13
  %49 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %50 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %56 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %54, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %48, %46
  %62 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %4, align 8
  %63 = getelementptr inbounds %struct.dib0090_fw_state, %struct.dib0090_fw_state* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %11
  %67 = load i32, i32* %3, align 4
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
