; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i64 }
%struct.mlxcpld_i2c_priv = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Incorrect message\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"LPCI2C bridge is busy\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"LPCI2C bridge is busy after reset\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @mlxcpld_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxcpld_i2c_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.mlxcpld_i2c_priv* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.mlxcpld_i2c_priv* %13, %struct.mlxcpld_i2c_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @mlxcpld_i2c_check_msg_params(%struct.mlxcpld_i2c_priv* %14, %struct.i2c_msg* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %22 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %91

26:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %47 = call i64 @mlxcpld_i2c_wait_for_free(%struct.mlxcpld_i2c_priv* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %51 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %55 = call i32 @mlxcpld_i2c_reset(%struct.mlxcpld_i2c_priv* %54)
  %56 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %57 = call i64 @mlxcpld_i2c_check_busy(%struct.mlxcpld_i2c_priv* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %61 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %91

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %45
  %68 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @mlxcpld_i2c_set_transf_data(%struct.mlxcpld_i2c_priv* %68, %struct.i2c_msg* %69, i32 %70, i32 %71)
  %73 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %74 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %73, i32 0, i32 0
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %77 = call i32 @mlxcpld_i2c_xfer_msg(%struct.mlxcpld_i2c_priv* %76)
  %78 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %79 = call i32 @mlxcpld_i2c_wait_for_tc(%struct.mlxcpld_i2c_priv* %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %8, align 8
  %81 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %67
  %86 = load i32, i32* %11, align 4
  br label %89

87:                                               ; preds = %67
  %88 = load i32, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %59, %20
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.mlxcpld_i2c_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mlxcpld_i2c_check_msg_params(%struct.mlxcpld_i2c_priv*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @mlxcpld_i2c_wait_for_free(%struct.mlxcpld_i2c_priv*) #1

declare dso_local i32 @mlxcpld_i2c_reset(%struct.mlxcpld_i2c_priv*) #1

declare dso_local i64 @mlxcpld_i2c_check_busy(%struct.mlxcpld_i2c_priv*) #1

declare dso_local i32 @mlxcpld_i2c_set_transf_data(%struct.mlxcpld_i2c_priv*, %struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlxcpld_i2c_xfer_msg(%struct.mlxcpld_i2c_priv*) #1

declare dso_local i32 @mlxcpld_i2c_wait_for_tc(%struct.mlxcpld_i2c_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
