; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.axxia_i2c_dev = type { i64 }

@SEQ_LEN = common dso_local global i32 0, align 4
@MST_STATUS_TSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @axxia_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.axxia_i2c_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = call %struct.axxia_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.axxia_i2c_dev* %12, %struct.axxia_i2c_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %8, align 8
  %14 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @axxia_i2c_sequence_ok(%struct.i2c_msg* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %8, align 8
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %22 = call i32 @axxia_i2c_xfer_seq(%struct.axxia_i2c_dev* %20, %struct.i2c_msg* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @SEQ_LEN, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ %23, %25 ], [ %27, %26 ]
  store i32 %29, i32* %4, align 4
  br label %66

30:                                               ; preds = %3
  %31 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %8, align 8
  %32 = load i32, i32* @MST_STATUS_TSS, align 4
  %33 = call i32 @i2c_int_enable(%struct.axxia_i2c_dev* %31, i32 %32)
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %55, %30
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %43, label %58

43:                                               ; preds = %41
  %44 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %8, align 8
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i64 %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @axxia_i2c_xfer_msg(%struct.axxia_i2c_dev* %44, %struct.i2c_msg* %48, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %34

58:                                               ; preds = %41
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ %59, %61 ], [ %63, %62 ]
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %28
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.axxia_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @axxia_i2c_sequence_ok(%struct.i2c_msg*, i32) #1

declare dso_local i32 @axxia_i2c_xfer_seq(%struct.axxia_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @i2c_int_enable(%struct.axxia_i2c_dev*, i32) #1

declare dso_local i32 @axxia_i2c_xfer_msg(%struct.axxia_i2c_dev*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
