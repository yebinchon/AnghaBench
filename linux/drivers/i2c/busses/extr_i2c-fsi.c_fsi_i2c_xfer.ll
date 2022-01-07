; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i64, %struct.fsi_i2c_port* }
%struct.fsi_i2c_port = type { %struct.fsi_i2c_master* }
%struct.fsi_i2c_master = type { i32 }
%struct.i2c_msg = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @fsi_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.fsi_i2c_port*, align 8
  %11 = alloca %struct.fsi_i2c_master*, align 8
  %12 = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 1
  %15 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %14, align 8
  store %struct.fsi_i2c_port* %15, %struct.fsi_i2c_port** %10, align 8
  %16 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %10, align 8
  %17 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %16, i32 0, i32 0
  %18 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %17, align 8
  store %struct.fsi_i2c_master* %18, %struct.fsi_i2c_master** %11, align 8
  %19 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %11, align 8
  %20 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %10, align 8
  %23 = call i32 @fsi_i2c_set_port(%struct.fsi_i2c_port* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %68

27:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %64, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i64 %35
  store %struct.i2c_msg* %36, %struct.i2c_msg** %12, align 8
  %37 = load i64, i64* @jiffies, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %10, align 8
  %39 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @fsi_i2c_start(%struct.fsi_i2c_port* %38, %struct.i2c_msg* %39, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %68

49:                                               ; preds = %32
  %50 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %10, align 8
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %55, %56
  %58 = sub i64 %54, %57
  %59 = call i32 @fsi_i2c_wait(%struct.fsi_i2c_port* %50, %struct.i2c_msg* %51, i64 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %68

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %28

67:                                               ; preds = %28
  br label %68

68:                                               ; preds = %67, %62, %48, %26
  %69 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %11, align 8
  %70 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = phi i32 [ %72, %74 ], [ %76, %75 ]
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fsi_i2c_set_port(%struct.fsi_i2c_port*) #1

declare dso_local i32 @fsi_i2c_start(%struct.fsi_i2c_port*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @fsi_i2c_wait(%struct.fsi_i2c_port*, %struct.i2c_msg*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
