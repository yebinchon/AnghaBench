; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71882fg.c_f71882fg_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f71882fg_data = type { i64 }

@f71858fg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f71882fg_data*, i32)* @f71882fg_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f71882fg_read_temp(%struct.f71882fg_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f71882fg_data*, align 8
  %5 = alloca i32, align 4
  store %struct.f71882fg_data* %0, %struct.f71882fg_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %7 = getelementptr inbounds %struct.f71882fg_data, %struct.f71882fg_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @f71858fg, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @F71882FG_REG_TEMP(i32 %13)
  %15 = call i32 @f71882fg_read16(%struct.f71882fg_data* %12, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.f71882fg_data*, %struct.f71882fg_data** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @F71882FG_REG_TEMP(i32 %18)
  %20 = call i32 @f71882fg_read8(%struct.f71882fg_data* %17, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @f71882fg_read16(%struct.f71882fg_data*, i32) #1

declare dso_local i32 @F71882FG_REG_TEMP(i32) #1

declare dso_local i32 @f71882fg_read8(%struct.f71882fg_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
