; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_parse_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_parse_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i32, i32 }
%struct.ec_response_i2c_passthru = type { i32, i32 }

@EC_I2C_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EC_I2C_STATUS_NAK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EC_I2C_STATUS_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.i2c_msg*, i32*)* @ec_i2c_parse_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_i2c_parse_response(i32* %0, %struct.i2c_msg* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ec_response_i2c_passthru*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_msg*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 8
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.ec_response_i2c_passthru*
  store %struct.ec_response_i2c_passthru* %15, %struct.ec_response_i2c_passthru** %8, align 8
  %16 = load %struct.ec_response_i2c_passthru*, %struct.ec_response_i2c_passthru** %8, align 8
  %17 = getelementptr inbounds %struct.ec_response_i2c_passthru, %struct.ec_response_i2c_passthru* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EC_I2C_STATUS_TIMEOUT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %101

25:                                               ; preds = %3
  %26 = load %struct.ec_response_i2c_passthru*, %struct.ec_response_i2c_passthru** %8, align 8
  %27 = getelementptr inbounds %struct.ec_response_i2c_passthru, %struct.ec_response_i2c_passthru* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EC_I2C_STATUS_NAK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %101

35:                                               ; preds = %25
  %36 = load %struct.ec_response_i2c_passthru*, %struct.ec_response_i2c_passthru** %8, align 8
  %37 = getelementptr inbounds %struct.ec_response_i2c_passthru, %struct.ec_response_i2c_passthru* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EC_I2C_STATUS_ERROR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %101

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.ec_response_i2c_passthru*, %struct.ec_response_i2c_passthru** %8, align 8
  %49 = getelementptr inbounds %struct.ec_response_i2c_passthru, %struct.ec_response_i2c_passthru* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EPROTO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %101

57:                                               ; preds = %47
  %58 = load %struct.ec_response_i2c_passthru*, %struct.ec_response_i2c_passthru** %8, align 8
  %59 = getelementptr inbounds %struct.ec_response_i2c_passthru, %struct.ec_response_i2c_passthru* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %97, %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %62
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i64 %70
  store %struct.i2c_msg* %71, %struct.i2c_msg** %11, align 8
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i64 %74
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @I2C_M_RD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %67
  %82 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32 %84, i32* %85, i32 %88)
  %90 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %9, align 8
  br label %96

96:                                               ; preds = %81, %67
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %62

100:                                              ; preds = %62
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %54, %42, %32, %22
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
