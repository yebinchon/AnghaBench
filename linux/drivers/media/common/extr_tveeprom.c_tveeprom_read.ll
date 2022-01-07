; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_tveeprom.c_tveeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_tveeprom.c_tveeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Huh, no eeprom present (err=%d)?\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"i2c eeprom read error (err=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"full 256-byte eeprom dump:\00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tveeprom_read(%struct.i2c_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %8, align 1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call i32 @i2c_master_send(%struct.i2c_client* %10, i8* %8, i32 1)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @i2c_master_recv(%struct.i2c_client* %18, i8* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %4, align 4
  br label %33

28:                                               ; preds = %17
  %29 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 16, i32 1, i8* %30, i32 %31, i32 1)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %25, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
