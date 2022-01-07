; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_i2c = type { i32, i32, i32, i32, i32, i64, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i64 }

@I2C_M_IGNORE_NAK = common dso_local global i64 0, align 8
@REG_CTRL_ACK_IGNORE = common dso_local global i64 0, align 8
@REG_CTRL = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@STATE_READ = common dso_local global i32 0, align 4
@STATE_WRITE = common dso_local global i32 0, align 4
@REG_CTRL_START = common dso_local global i64 0, align 8
@I2C_TIMEOUT_MS = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_i2c*, %struct.i2c_msg*, i32)* @meson_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_i2c_xfer_msg(%struct.meson_i2c* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.meson_i2c*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.meson_i2c* %0, %struct.meson_i2c** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %11 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %12 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %11, i32 0, i32 7
  store %struct.i2c_msg* %10, %struct.i2c_msg** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %17 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %19 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %21 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %23 = call i32 @meson_i2c_reset_tokens(%struct.meson_i2c* %22)
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @I2C_M_IGNORE_NAK, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i64, i64* @REG_CTRL_ACK_IGNORE, align 8
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i64 [ %31, %30 ], [ 0, %32 ]
  store i64 %34, i64* %8, align 8
  %35 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %36 = load i32, i32* @REG_CTRL, align 4
  %37 = load i64, i64* @REG_CTRL_ACK_IGNORE, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @meson_i2c_set_mask(%struct.meson_i2c* %35, i32 %36, i64 %37, i64 %38)
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @I2C_M_NOSTART, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %42, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %33
  %48 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %50 = call i32 @meson_i2c_do_start(%struct.meson_i2c* %48, %struct.i2c_msg* %49)
  br label %51

51:                                               ; preds = %47, %33
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @I2C_M_RD, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @STATE_READ, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @STATE_WRITE, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %65 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %67 = call i32 @meson_i2c_prepare_xfer(%struct.meson_i2c* %66)
  %68 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %69 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %68, i32 0, i32 4
  %70 = call i32 @reinit_completion(i32* %69)
  %71 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %72 = load i32, i32* @REG_CTRL, align 4
  %73 = load i64, i64* @REG_CTRL_START, align 8
  %74 = load i64, i64* @REG_CTRL_START, align 8
  %75 = call i32 @meson_i2c_set_mask(%struct.meson_i2c* %71, i32 %72, i64 %73, i64 %74)
  %76 = load i32, i32* @I2C_TIMEOUT_MS, align 4
  %77 = call i64 @msecs_to_jiffies(i32 %76)
  store i64 %77, i64* %7, align 8
  %78 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %79 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %78, i32 0, i32 4
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @wait_for_completion_timeout(i32* %79, i64 %80)
  store i64 %81, i64* %7, align 8
  %82 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %83 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %82, i32 0, i32 2
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %87 = load i32, i32* @REG_CTRL, align 4
  %88 = load i64, i64* @REG_CTRL_START, align 8
  %89 = call i32 @meson_i2c_set_mask(%struct.meson_i2c* %86, i32 %87, i64 %88, i64 0)
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %62
  %93 = load i32, i32* @STATE_IDLE, align 4
  %94 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %95 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @ETIMEDOUT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %92, %62
  %99 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %100 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %105 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load %struct.meson_i2c*, %struct.meson_i2c** %4, align 8
  %109 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %108, i32 0, i32 2
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i32 @meson_i2c_reset_tokens(%struct.meson_i2c*) #1

declare dso_local i32 @meson_i2c_set_mask(%struct.meson_i2c*, i32, i64, i64) #1

declare dso_local i32 @meson_i2c_do_start(%struct.meson_i2c*, %struct.i2c_msg*) #1

declare dso_local i32 @meson_i2c_prepare_xfer(%struct.meson_i2c*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
