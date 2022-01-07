; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfts_data = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmfts_data*, i32)* @stmfts_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfts_command(%struct.stmfts_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stmfts_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stmfts_data* %0, %struct.stmfts_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %8 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %7, i32 0, i32 0
  %9 = call i32 @reinit_completion(i32* %8)
  %10 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %11 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @i2c_smbus_write_byte(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.stmfts_data*, %struct.stmfts_data** %4, align 8
  %21 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %20, i32 0, i32 0
  %22 = call i32 @msecs_to_jiffies(i32 1000)
  %23 = call i32 @wait_for_completion_timeout(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
