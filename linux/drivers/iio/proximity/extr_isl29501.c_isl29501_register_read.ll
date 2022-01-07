; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_register_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_register_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29501_register_desc = type { i64, i64 }
%struct.isl29501_private = type { i32, i32 }

@isl29501_registers = common dso_local global %struct.isl29501_register_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29501_private*, i32, i32*)* @isl29501_register_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_register_read(%struct.isl29501_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isl29501_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.isl29501_register_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.isl29501_private* %0, %struct.isl29501_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** @isl29501_registers, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %12, i64 %14
  store %struct.isl29501_register_desc* %15, %struct.isl29501_register_desc** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %17 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** %8, align 8
  %20 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %25 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** %8, align 8
  %28 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @i2c_smbus_read_byte_data(i32 %26, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %65

34:                                               ; preds = %23
  %35 = load i64, i64* %11, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %3
  %38 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** %8, align 8
  %39 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %44 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.isl29501_register_desc*, %struct.isl29501_register_desc** %8, align 8
  %47 = getelementptr inbounds %struct.isl29501_register_desc, %struct.isl29501_register_desc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @i2c_smbus_read_byte_data(i32 %45, i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %65

53:                                               ; preds = %42
  %54 = load i64, i64* %11, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %37
  %57 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %58 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %71

65:                                               ; preds = %52, %33
  %66 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %67 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i64, i64* %11, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %65, %56
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @i2c_smbus_read_byte_data(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
