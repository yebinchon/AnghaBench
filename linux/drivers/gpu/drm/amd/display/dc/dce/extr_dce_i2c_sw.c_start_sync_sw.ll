; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_start_sync_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_start_sync_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.ddc = type { i32 }

@SCL = common dso_local global i32 0, align 4
@SDA = common dso_local global i32 0, align 4
@I2C_SW_RETRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_context*, %struct.ddc*, i32)* @start_sync_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_sync_sw(%struct.dc_context* %0, %struct.ddc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.ddc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.ddc* %1, %struct.ddc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.ddc*, %struct.ddc** %6, align 8
  %10 = load i32, i32* @SCL, align 4
  %11 = call i32 @write_bit_to_ddc(%struct.ddc* %9, i32 %10, i32 1)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @udelay(i32 %12)
  br label %14

14:                                               ; preds = %48, %3
  %15 = load %struct.ddc*, %struct.ddc** %6, align 8
  %16 = load i32, i32* @SDA, align 4
  %17 = call i32 @write_bit_to_ddc(%struct.ddc* %15, i32 %16, i32 1)
  %18 = load %struct.ddc*, %struct.ddc** %6, align 8
  %19 = load i32, i32* @SDA, align 4
  %20 = call i32 @read_bit_from_ddc(%struct.ddc* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %8, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %8, align 8
  br label %48

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @udelay(i32 %26)
  %28 = load %struct.ddc*, %struct.ddc** %6, align 8
  %29 = load i32, i32* @SCL, align 4
  %30 = call i32 @write_bit_to_ddc(%struct.ddc* %28, i32 %29, i32 1)
  %31 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %32 = load %struct.ddc*, %struct.ddc** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @wait_for_scl_high_sw(%struct.dc_context* %31, %struct.ddc* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %52

37:                                               ; preds = %25
  %38 = load %struct.ddc*, %struct.ddc** %6, align 8
  %39 = load i32, i32* @SDA, align 4
  %40 = call i32 @write_bit_to_ddc(%struct.ddc* %38, i32 %39, i32 0)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @udelay(i32 %41)
  %43 = load %struct.ddc*, %struct.ddc** %6, align 8
  %44 = load i32, i32* @SCL, align 4
  %45 = call i32 @write_bit_to_ddc(%struct.ddc* %43, i32 %44, i32 0)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @udelay(i32 %46)
  store i32 1, i32* %4, align 4
  br label %53

48:                                               ; preds = %22
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @I2C_SW_RETRIES, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %14, label %52

52:                                               ; preds = %48, %36
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @write_bit_to_ddc(%struct.ddc*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_bit_from_ddc(%struct.ddc*, i32) #1

declare dso_local i32 @wait_for_scl_high_sw(%struct.dc_context*, %struct.ddc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
