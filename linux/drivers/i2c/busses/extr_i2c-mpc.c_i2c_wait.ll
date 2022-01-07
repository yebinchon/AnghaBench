; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_i2c_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_i2c_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_i2c = type { i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@MPC_I2C_SR = common dso_local global i64 0, align 8
@CSR_MIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"wait timeout\0A\00", align 1
@CSR_MCF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"unfinished\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CSR_MAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"MAL\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CSR_RXAK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"No RXAK\0A\00", align 1
@CCR_MEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc_i2c*, i32, i32)* @i2c_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_wait(%struct.mpc_i2c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mpc_i2c* %0, %struct.mpc_i2c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %13 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %61, label %16

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %47, %16
  %18 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %19 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MPC_I2C_SR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readb(i64 %22)
  %24 = load i32, i32* @CSR_MIF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %48

28:                                               ; preds = %17
  %29 = call i32 (...) @schedule()
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = add i64 %31, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @time_after(i64 %30, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %40 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %44 = call i32 @writeccr(%struct.mpc_i2c* %43, i32 0)
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %48

47:                                               ; preds = %28
  br label %17

48:                                               ; preds = %38, %17
  %49 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %50 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MPC_I2C_SR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readb(i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %56 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MPC_I2C_SR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writeb(i32 0, i64 %59)
  br label %97

61:                                               ; preds = %3
  %62 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %63 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %66 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CSR_MIF, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @wait_event_timeout(i32 %64, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %73 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CSR_MIF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %61
  %83 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %84 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %88 = call i32 @writeccr(%struct.mpc_i2c* %87, i32 0)
  %89 = load i32, i32* @ETIMEDOUT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %82, %61
  %92 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %93 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %9, align 4
  %95 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %96 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %91, %48
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %145

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @CSR_MCF, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %109 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_dbg(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %145

114:                                              ; preds = %102
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @CSR_MAL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %121 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_dbg(i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %145

126:                                              ; preds = %114
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @CSR_RXAK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %136 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @dev_dbg(i32 %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %139 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %140 = load i32, i32* @CCR_MEN, align 4
  %141 = call i32 @writeccr(%struct.mpc_i2c* %139, i32 %140)
  %142 = load i32, i32* @ENXIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %145

144:                                              ; preds = %129, %126
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %134, %119, %107, %100
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writeccr(%struct.mpc_i2c*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
