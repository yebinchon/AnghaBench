; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_construct_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_construct_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.ec_params_i2c_passthru = type { i32, %struct.ec_params_i2c_passthru_msg*, i32 }
%struct.ec_params_i2c_passthru_msg = type { i32, i32 }

@I2C_M_TEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EC_I2C_FLAG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.i2c_msg*, i32, i32)* @ec_i2c_construct_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_i2c_construct_message(i32* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ec_params_i2c_passthru*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_msg*, align 8
  %14 = alloca %struct.ec_params_i2c_passthru_msg*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 24
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.ec_params_i2c_passthru*
  store %struct.ec_params_i2c_passthru* %22, %struct.ec_params_i2c_passthru** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ec_params_i2c_passthru*, %struct.ec_params_i2c_passthru** %10, align 8
  %25 = getelementptr inbounds %struct.ec_params_i2c_passthru, %struct.ec_params_i2c_passthru* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ec_params_i2c_passthru*, %struct.ec_params_i2c_passthru** %10, align 8
  %28 = getelementptr inbounds %struct.ec_params_i2c_passthru, %struct.ec_params_i2c_passthru* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %92, %4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %95

33:                                               ; preds = %29
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i64 %36
  store %struct.i2c_msg* %37, %struct.i2c_msg** %13, align 8
  %38 = load %struct.ec_params_i2c_passthru*, %struct.ec_params_i2c_passthru** %10, align 8
  %39 = getelementptr inbounds %struct.ec_params_i2c_passthru, %struct.ec_params_i2c_passthru* %38, i32 0, i32 1
  %40 = load %struct.ec_params_i2c_passthru_msg*, %struct.ec_params_i2c_passthru_msg** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ec_params_i2c_passthru_msg, %struct.ec_params_i2c_passthru_msg* %40, i64 %42
  store %struct.ec_params_i2c_passthru_msg* %43, %struct.ec_params_i2c_passthru_msg** %14, align 8
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ec_params_i2c_passthru_msg*, %struct.ec_params_i2c_passthru_msg** %14, align 8
  %48 = getelementptr inbounds %struct.ec_params_i2c_passthru_msg, %struct.ec_params_i2c_passthru_msg* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ec_params_i2c_passthru_msg*, %struct.ec_params_i2c_passthru_msg** %14, align 8
  %53 = getelementptr inbounds %struct.ec_params_i2c_passthru_msg, %struct.ec_params_i2c_passthru_msg* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @I2C_M_TEN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %33
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %96

63:                                               ; preds = %33
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @I2C_M_RD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @EC_I2C_FLAG_READ, align 4
  %72 = load %struct.ec_params_i2c_passthru_msg*, %struct.ec_params_i2c_passthru_msg** %14, align 8
  %73 = getelementptr inbounds %struct.ec_params_i2c_passthru_msg, %struct.ec_params_i2c_passthru_msg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %91

76:                                               ; preds = %63
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ec_params_i2c_passthru_msg*, %struct.ec_params_i2c_passthru_msg** %14, align 8
  %82 = getelementptr inbounds %struct.ec_params_i2c_passthru_msg, %struct.ec_params_i2c_passthru_msg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memcpy(i32* %77, i32 %80, i32 %83)
  %85 = load %struct.ec_params_i2c_passthru_msg*, %struct.ec_params_i2c_passthru_msg** %14, align 8
  %86 = getelementptr inbounds %struct.ec_params_i2c_passthru_msg, %struct.ec_params_i2c_passthru_msg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %11, align 8
  br label %91

91:                                               ; preds = %76, %70
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %29

95:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %60
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
