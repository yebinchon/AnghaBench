; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_stop_sync_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_stop_sync_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.ddc = type { i32 }

@SCL = common dso_local global i32 0, align 4
@SDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_context*, %struct.ddc*, i32)* @stop_sync_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_sync_sw(%struct.dc_context* %0, %struct.ddc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.ddc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.ddc* %1, %struct.ddc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ddc*, %struct.ddc** %6, align 8
  %10 = load i32, i32* @SCL, align 4
  %11 = call i32 @write_bit_to_ddc(%struct.ddc* %9, i32 %10, i32 0)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @udelay(i32 %12)
  %14 = load %struct.ddc*, %struct.ddc** %6, align 8
  %15 = load i32, i32* @SDA, align 4
  %16 = call i32 @write_bit_to_ddc(%struct.ddc* %14, i32 %15, i32 0)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @udelay(i32 %17)
  %19 = load %struct.ddc*, %struct.ddc** %6, align 8
  %20 = load i32, i32* @SCL, align 4
  %21 = call i32 @write_bit_to_ddc(%struct.ddc* %19, i32 %20, i32 1)
  %22 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %23 = load %struct.ddc*, %struct.ddc** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @wait_for_scl_high_sw(%struct.dc_context* %22, %struct.ddc* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

28:                                               ; preds = %3
  %29 = load %struct.ddc*, %struct.ddc** %6, align 8
  %30 = load i32, i32* @SDA, align 4
  %31 = call i32 @write_bit_to_ddc(%struct.ddc* %29, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %43, %28
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @udelay(i32 %33)
  %35 = load %struct.ddc*, %struct.ddc** %6, align 8
  %36 = load i32, i32* @SDA, align 4
  %37 = call i64 @read_bit_from_ddc(%struct.ddc* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %47

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 2
  br i1 %45, label %32, label %46

46:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %39, %27
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @write_bit_to_ddc(%struct.ddc*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_scl_high_sw(%struct.dc_context*, %struct.ddc*, i32) #1

declare dso_local i64 @read_bit_from_ddc(%struct.ddc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
