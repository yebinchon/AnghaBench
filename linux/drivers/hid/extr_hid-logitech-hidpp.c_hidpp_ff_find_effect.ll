; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_find_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_find_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_ff_private_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_ff_private_data*, i32)* @hidpp_ff_find_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_ff_find_effect(%struct.hidpp_ff_private_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidpp_ff_private_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hidpp_ff_private_data* %0, %struct.hidpp_ff_private_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %4, align 8
  %10 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %4, align 8
  %15 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %7

30:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
