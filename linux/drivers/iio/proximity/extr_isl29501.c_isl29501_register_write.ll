; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_register_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29501_register_desc = type { i64, i64 }
%struct.isl29501_private = type { i32, i32 }

@isl29501_registers = common dso_local global %struct.isl29501_register_desc* null, align 8
@U8_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29501_private*, i32, i32)* @isl29501_register_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_register_write(%struct.isl29501_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isl29501_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.isl29501_register_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.isl29501_private* %0, %struct.isl29501_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** @isl29501_registers, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %10, i64 %12
  store %struct.isl29501_register_desc* %13, %struct.isl29501_register_desc** %8, align 8
  %14 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** %8, align 8
  %15 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @U8_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @ERANGE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %68

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @U16_MAX, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @ERANGE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %68

32:                                               ; preds = %25
  %33 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %34 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** %8, align 8
  %37 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %42 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** %8, align 8
  %45 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 8
  %49 = call i32 @i2c_smbus_write_byte_data(i32 %43, i64 %46, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %63

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %56 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** %8, align 8
  %59 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @i2c_smbus_write_byte_data(i32 %57, i64 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %54, %52
  %64 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %65 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %29, %22
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
