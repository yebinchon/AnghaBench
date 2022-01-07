; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.pasemi_smbus* }
%struct.pasemi_smbus = type { i32 }
%struct.i2c_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @pasemi_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pasemi_smbus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 0
  %12 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %11, align 8
  store %struct.pasemi_smbus* %12, %struct.pasemi_smbus** %7, align 8
  %13 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %7, align 8
  %14 = call i32 @pasemi_smb_clear(%struct.pasemi_smbus* %13)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %37, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i64 %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @pasemi_i2c_xfer_msg(%struct.i2c_adapter* %26, %struct.i2c_msg* %30, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %15

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  ret i32 %48
}

declare dso_local i32 @pasemi_smb_clear(%struct.pasemi_smbus*) #1

declare dso_local i32 @pasemi_i2c_xfer_msg(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
