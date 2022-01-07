; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i8* }

@OP_TX_FIRST = common dso_local global i32 0, align 4
@OP_TX_TO_RX = common dso_local global i32 0, align 4
@OP_RX_STOP = common dso_local global i32 0, align 4
@OP_RX_STOP_DATA = common dso_local global i32 0, align 4
@OP_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_isr_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_isr_rx(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca %struct.sh_mobile_i2c_data*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %2, align 8
  %5 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %6 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 2
  store i32 %8, i32* %4, align 4
  %9 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %10 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %15 = load i32, i32* @OP_TX_FIRST, align 4
  %16 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %14, i32 %15)
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %24 = load i32, i32* @OP_TX_TO_RX, align 4
  %25 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %23, i32 %24)
  br label %70

26:                                               ; preds = %17
  %27 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %28 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %31 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %29, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %26
  %37 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %43 = load i32, i32* @OP_RX_STOP, align 4
  %44 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %42, i32 %43)
  %45 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %46 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %85

49:                                               ; preds = %36
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %54 = load i32, i32* @OP_RX_STOP, align 4
  %55 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %53, i32 %54)
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %58 = load i32, i32* @OP_RX_STOP_DATA, align 4
  %59 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %57, i32 %58)
  store i8 %59, i8* %3, align 1
  br label %60

60:                                               ; preds = %56, %52
  br label %69

61:                                               ; preds = %26
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %66 = load i32, i32* @OP_RX, align 4
  %67 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %65, i32 %66)
  store i8 %67, i8* %3, align 1
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %60
  br label %70

70:                                               ; preds = %69, %22
  br label %71

71:                                               ; preds = %70, %13
  %72 = load i32, i32* %4, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i8, i8* %3, align 1
  %76 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %77 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 %75, i8* %83, align 1
  br label %84

84:                                               ; preds = %74, %71
  br label %85

85:                                               ; preds = %84, %41
  %86 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %87 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %91 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %94 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 2
  %99 = icmp eq i32 %92, %98
  %100 = zext i1 %99 to i32
  ret i32 %100
}

declare dso_local zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
