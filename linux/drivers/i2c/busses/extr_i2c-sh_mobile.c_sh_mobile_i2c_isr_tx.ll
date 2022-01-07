; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OP_TX_STOP = common dso_local global i32 0, align 4
@OP_TX_FIRST = common dso_local global i32 0, align 4
@OP_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_isr_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_isr_tx(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_i2c_data*, align 8
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %3, align 8
  %4 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %5 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %8 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %15 = load i32, i32* @OP_TX_STOP, align 4
  %16 = call i32 @i2c_op(%struct.sh_mobile_i2c_data* %14, i32 %15)
  store i32 1, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %24 = load i32, i32* @OP_TX_FIRST, align 4
  %25 = call i32 @i2c_op(%struct.sh_mobile_i2c_data* %23, i32 %24)
  br label %30

26:                                               ; preds = %17
  %27 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %28 = load i32, i32* @OP_TX, align 4
  %29 = call i32 @i2c_op(%struct.sh_mobile_i2c_data* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %32 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @i2c_op(%struct.sh_mobile_i2c_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
