; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_update_client_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_update_client_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm93_data = type { i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"starting device update (block data enabled)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm93_data*, %struct.i2c_client*)* @lm93_update_client_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm93_update_client_full(%struct.lm93_data* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.lm93_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  store %struct.lm93_data* %0, %struct.lm93_data** %3, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %4, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 0
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %10 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = call i32 @lm93_read_block(%struct.i2c_client* %8, i32 3, i32* %12)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %16 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @lm93_read_block(%struct.i2c_client* %14, i32 7, i32* %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %22 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @lm93_read_block(%struct.i2c_client* %20, i32 2, i32* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %28 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @lm93_read_block(%struct.i2c_client* %26, i32 4, i32* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %34 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @lm93_read_block(%struct.i2c_client* %32, i32 5, i32* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %40 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @lm93_read_block(%struct.i2c_client* %38, i32 8, i32* %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %46 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32 @lm93_read_block(%struct.i2c_client* %44, i32 9, i32* %48)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %52 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %51, i32 0, i32 1
  %53 = call i32 @lm93_read_block(%struct.i2c_client* %50, i32 1, i32* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %56 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %55, i32 0, i32 0
  %57 = call i32 @lm93_read_block(%struct.i2c_client* %54, i32 10, i32* %56)
  %58 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = call i32 @lm93_update_client_common(%struct.lm93_data* %58, %struct.i2c_client* %59)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @lm93_read_block(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @lm93_update_client_common(%struct.lm93_data*, %struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
