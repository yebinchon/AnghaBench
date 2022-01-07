; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_init_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_init_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6775_data*)* @nct6775_init_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_init_fan_div(%struct.nct6775_data* %0) #0 {
  %2 = alloca %struct.nct6775_data*, align 8
  %3 = alloca i32, align 4
  store %struct.nct6775_data* %0, %struct.nct6775_data** %2, align 8
  %4 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %5 = call i32 @nct6775_update_fan_div_common(%struct.nct6775_data* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %9 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %6
  %14 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %15 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %42

22:                                               ; preds = %13
  %23 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %24 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %33 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 7, i32* %37, align 4
  %38 = load %struct.nct6775_data*, %struct.nct6775_data** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @nct6775_write_fan_div_common(%struct.nct6775_data* %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %22
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local i32 @nct6775_update_fan_div_common(%struct.nct6775_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nct6775_write_fan_div_common(%struct.nct6775_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
