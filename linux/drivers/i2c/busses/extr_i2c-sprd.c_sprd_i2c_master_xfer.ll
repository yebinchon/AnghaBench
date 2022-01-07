; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.sprd_i2c* }
%struct.sprd_i2c = type { i32 }
%struct.i2c_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @sprd_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sprd_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 0
  %13 = load %struct.sprd_i2c*, %struct.sprd_i2c** %12, align 8
  store %struct.sprd_i2c* %13, %struct.sprd_i2c** %8, align 8
  %14 = load %struct.sprd_i2c*, %struct.sprd_i2c** %8, align 8
  %15 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %67

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i64 %32
  %34 = call i32 @sprd_i2c_handle_msg(%struct.i2c_adapter* %29, %struct.i2c_msg* %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %50

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i64 %47
  %49 = call i32 @sprd_i2c_handle_msg(%struct.i2c_adapter* %43, %struct.i2c_msg* %48, i32 1)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.sprd_i2c*, %struct.sprd_i2c** %8, align 8
  %52 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_mark_last_busy(i32 %53)
  %55 = load %struct.sprd_i2c*, %struct.sprd_i2c** %8, align 8
  %56 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pm_runtime_put_autosuspend(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  br label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @sprd_i2c_handle_msg(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
