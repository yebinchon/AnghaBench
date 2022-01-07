; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_read_byte_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_read_byte_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.ddc = type { i32 }

@SCL = common dso_local global i32 0, align 4
@SDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_context*, %struct.ddc*, i32, i32*, i32)* @read_byte_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_byte_sw(%struct.dc_context* %0, %struct.ddc* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca %struct.ddc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %7, align 8
  store %struct.ddc* %1, %struct.ddc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 7, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %43, %5
  %15 = load %struct.ddc*, %struct.ddc** %8, align 8
  %16 = load i32, i32* @SCL, align 4
  %17 = call i32 @write_bit_to_ddc(%struct.ddc* %15, i32 %16, i32 1)
  %18 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %19 = load %struct.ddc*, %struct.ddc** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @wait_for_scl_high_sw(%struct.dc_context* %18, %struct.ddc* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %80

24:                                               ; preds = %14
  %25 = load %struct.ddc*, %struct.ddc** %8, align 8
  %26 = load i32, i32* @SDA, align 4
  %27 = call i64 @read_bit_from_ddc(%struct.ddc* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.ddc*, %struct.ddc** %8, align 8
  %36 = load i32, i32* @SCL, align 4
  %37 = call i32 @write_bit_to_ddc(%struct.ddc* %35, i32 %36, i32 0)
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, 1
  %40 = call i32 @udelay(i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %14, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @udelay(i32 %49)
  %51 = load %struct.ddc*, %struct.ddc** %8, align 8
  %52 = load i32, i32* @SDA, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @write_bit_to_ddc(%struct.ddc* %51, i32 %52, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @udelay(i32 %58)
  %60 = load %struct.ddc*, %struct.ddc** %8, align 8
  %61 = load i32, i32* @SCL, align 4
  %62 = call i32 @write_bit_to_ddc(%struct.ddc* %60, i32 %61, i32 1)
  %63 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %64 = load %struct.ddc*, %struct.ddc** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @wait_for_scl_high_sw(%struct.dc_context* %63, %struct.ddc* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %80

69:                                               ; preds = %46
  %70 = load %struct.ddc*, %struct.ddc** %8, align 8
  %71 = load i32, i32* @SCL, align 4
  %72 = call i32 @write_bit_to_ddc(%struct.ddc* %70, i32 %71, i32 0)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @udelay(i32 %73)
  %75 = load %struct.ddc*, %struct.ddc** %8, align 8
  %76 = load i32, i32* @SDA, align 4
  %77 = call i32 @write_bit_to_ddc(%struct.ddc* %75, i32 %76, i32 1)
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @udelay(i32 %78)
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %69, %68, %23
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @write_bit_to_ddc(%struct.ddc*, i32, i32) #1

declare dso_local i32 @wait_for_scl_high_sw(%struct.dc_context*, %struct.ddc*, i32) #1

declare dso_local i64 @read_bit_from_ddc(%struct.ddc*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
