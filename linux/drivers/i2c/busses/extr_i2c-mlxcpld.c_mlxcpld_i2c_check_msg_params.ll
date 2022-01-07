; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_check_msg_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_check_msg_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxcpld_i2c_priv = type { i32 }
%struct.i2c_msg = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Incorrect 0 num of messages\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid address 0x%03x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid buf in msg[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid addr in msg[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxcpld_i2c_priv*, %struct.i2c_msg*, i32)* @mlxcpld_i2c_check_msg_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_i2c_check_msg_params(%struct.mlxcpld_i2c_priv* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxcpld_i2c_priv*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxcpld_i2c_priv* %0, %struct.mlxcpld_i2c_priv** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @dev_err(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %91

18:                                               ; preds = %3
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 127
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %29 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i64 0
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %91

38:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %87, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %90

43:                                               ; preds = %39
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 %46
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %57 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %91

63:                                               ; preds = %43
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i64 0
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i64 %70
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %67, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %63
  %79 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %80 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %91

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %39

90:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %78, %55, %27, %11
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
