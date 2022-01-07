; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_init_fan_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_init_fan_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct6775_data = type { i32, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.nct6775_data*)* @nct6775_init_fan_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_init_fan_common(%struct.device* %0, %struct.nct6775_data* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nct6775_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.nct6775_data* %1, %struct.nct6775_data** %4, align 8
  %7 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %8 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %13 = call i32 @nct6775_init_fan_div(%struct.nct6775_data* %12)
  br label %14

14:                                               ; preds = %11, %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %60, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %18 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %15
  %23 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %24 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %22
  %31 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %32 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %33 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nct6775_read_value(%struct.nct6775_data* %31, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %30
  %43 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %44 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %45 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nct6775_data*, %struct.nct6775_data** %4, align 8
  %52 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 255, i32 65311
  %57 = call i32 @nct6775_write_value(%struct.nct6775_data* %43, i32 %50, i32 %56)
  br label %58

58:                                               ; preds = %42, %30
  br label %59

59:                                               ; preds = %58, %22
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %15

63:                                               ; preds = %15
  ret void
}

declare dso_local i32 @nct6775_init_fan_div(%struct.nct6775_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
